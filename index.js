const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);

//text to speech
var txtomp3 = require("text-to-mp3");

//uncode request data
const bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json())

//db
const { resolve, reject } = require('bluebird');
const mysql = require('mysql');
const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "evaluation_proj"
});

//cookies
const cookieParser = require('cookie-parser');
app.use(cookieParser());

//random string
const { v4 } = require('uuid');

//sessions
const session = require('express-session');
const sessionMiddleware = session({ secret: v4(), saveUninitialized: false, resave: false });
app.use(sessionMiddleware);

//socket
const { Server } = require("socket.io");
const io = new Server(server);
const wrap = middleware => (socket, next) => middleware(socket.request, {}, next);
io.use(wrap(sessionMiddleware));

/*----------------------------------*/
//helper functions

//promise query
const promiseQuery = (query, params = []) => new Promise((resolve, reject) => {
    con.query(query, params, function (err, result, fields) {
        if (err) reject(err);
        resolve(result);
    });
})

//evaluation rooms
const rooms = [];
refreshRooms();
function newRoomCreated(room) {
    rooms[room] = {
        participants: [],
        admin : null
    };
    //send to all connected socket's the updated rooms
    io.emit('room', room);
}
function refreshRooms(cl = null) {
    //get all availble rooms, and refresh [rooms] constant varable
    promiseQuery("SELECT id,room FROM evaluations")
        .then((result) => {

            result.forEach((item) => {

                if (!rooms[item.room]) {
                    newRoomCreated(item.room);
                }

            });

            if (cl)
                cl();

        });
}
function nestingJSON(json1, json2, on, as) {

    json1.forEach((o1) => {
        o1[as] = [];
        json2.forEach((o2) => {
            if (on(o1, o2)) {
                o1[as].push({ ...o2 });
            }
        });
    });

    return json1;
}

//create async function text2mp3
async function text2mp3(text, lang, path) {
    await txtomp3(text, { lang: lang, path: path });
}

/*----------------------------------*/

//public folder
app.use('/static', express.static('static'));

// Add headers before the routes are defined
app.use(function (req, res, next) {

    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', 'http://127.0.0.1:3000/');

    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);

    // Pass to next layer of middleware
    next();
});

//validation
const validation = {
    checkAdminPassword: (req, res, next) => {
        let sess = req.session;

        if (sess?.admin) {
            return next();
        }

        res.redirect('/?require_connection');
    },
    checkUserIsConnected: (req, res, next) => {
        let sess = req.session;

        if (sess?.admin) {
            return next();
        }
        else if (sess?.username) {
            return next();
        }

        res.redirect('/connect?require_connection&room='+req.query.r);
    }
}

//requests
app.get('/', (req, res) => {
    // redirect to /login route
    res.redirect('/connect');
});

app.get('/login', (req, res) => {
    res.sendFile(__dirname + '/views/index.html');
});

app.post('/login', async (req, res) => {

    //check the password
    const { password, room } = req.body;

    if (password != '123abc') {
        res.redirect('/?invalid_password');
        return;
    }

    res.cookie('adminpassword', '123abc');

    let sess = req.session;
    sess.admin = true;

    // create evaluation
    let reslt = await promiseQuery("select * from evaluations where room=?", [room]);

    let newRoom = room;

    if (reslt.length == 0) {
        newRoom = v4();
        await promiseQuery("insert into evaluations(room) VALUES (?)", [newRoom]);
        reslt = await promiseQuery("select * from evaluations where room=?", [newRoom]);
        //refresh the list of rooms
        refreshRooms();
    }

    res.redirect('/dashboard?room=' + newRoom);

});

app.get('/evaluation', validation.checkAdminPassword, (req, res) => {
    res.sendFile(__dirname + '/views/evaluation.html');
});

app.get('/dashboard', validation.checkAdminPassword, (req, res) => {
    res.sendFile(__dirname + '/views/dahsboard.html');
});

app.get('/editor', validation.checkAdminPassword, (req, res) => {

    res.sendFile(__dirname + '/views/editor.html');
});

app.get('/connect', (req, res) => {
    res.sendFile(__dirname + '/views/connect.html');
});

app.post('/connect', async (req, res) => {

    //check the password
    const { password, username, group } = req.body;

    let errors = "";
    //validation
    if (username.length < 3 || username.indexOf('admin') != -1)
        errors += "invalid_username&";

    if (password.length < 3)
        errors += "invalid_password&";

    if (errors.length > 0)
        res.redirect('?' + errors);


    // select the user if he/she exist
    let reslt = await promiseQuery("SELECT count(*) as count FROM users WHERE username = ? AND password = ? ", [username, password])
        .catch((err) => {
            res.redirect('/connect?somthing_wrong')
            console.log(err);
        });

    if (reslt.length < 0)
        res.redirect('?' + errors);

    if (reslt[0].count == 0) {

        reslt = await promiseQuery("SELECT count(*) as count FROM `users` WHERE `username` = ? ", [username])
            .catch((err) => res.redirect('/connect?somthing_wrong'));

        if (reslt[0].count == 0) {
            reslt = await promiseQuery('INSERT into users(username,password,user_group) values (?,?,?)', [username, password, group])
                .catch((err) => res.redirect('/connect?somthing_wrong'));

            res.redirect('/connect?user_created');
            return;
        }

        res.redirect('/connect?invalid_password');
        return;
    }

    res.cookie('username', username);
    res.cookie('group', group);

    let sess = req.session;
    sess.username = username;

    // check if request has room
    let room = req.query.room;
    if (room) {
        res.redirect('/room?r=' + room);
    }

    res.redirect('/rooms');
});

app.get('/rooms', validation.checkUserIsConnected, (req, res) => {
    res.sendFile(__dirname + '/views/rooms.html');
});

app.get('/room', validation.checkUserIsConnected, (req, res) => {

    let sess = req.session;
    if (!sess.username) {
        res.redirect('/connect?require_connection&room=' + req.query.r);
        return;
    }

    res.sendFile(__dirname + '/views/room.html');
});

app.get('/userevaluation', validation.checkUserIsConnected, (req, res) => {

    let sess = req.session;
    if (!sess.username) {
        res.redirect('/connect?require_connection');
        return;
    }

    res.sendFile(__dirname + '/views/user_evaluation.html');
});

//api
app.get('/api/evaluations', async (req, res) => {
    res.setHeader('Content-Type', 'application/json');

    let evaluations = await promiseQuery(`select * from evaluations`);
    let evaluationParts = await promiseQuery(`select * from evaluation_parts`);

    let nestedJson = nestingJSON(evaluations, evaluationParts, (ev, evp) => ev.id == evp.evaluation_id, 'parts');

    res.end(JSON.stringify(nestedJson));
});

app.get('/api/evaluation', async (req, res) => {
    res.setHeader('Content-Type', 'application/json');

    let room = req.query.room;

    if (!room) {
        res.redirect('/dashboard');
    }

    let evaluation = await promiseQuery(`select * from evaluations where room=?`, [room]);

    if (evaluation.length != 1)
        res.redirect('/dashboard');

    let idEva = evaluation[0]['id'];

    let evaluationParts = await promiseQuery(`select * from evaluation_parts where evaluation_id = ?`, [idEva]);
    let nestedJson = nestingJSON(evaluation, evaluationParts, (ev, evp) => ev.id == evp.evaluation_id, 'parts');

    res.end(JSON.stringify(nestedJson[0]));
});

app.get('/api/evaluationpart', async (req, res) => {
    res.setHeader('Content-Type', 'application/json');

    let idEvaluationPart = req.query.id;;

    if (!idEvaluationPart) {
        res.redirect('/dashboard');
    }

    let evaluationPart = await promiseQuery(`select * from evaluation_parts where id=?`, [idEvaluationPart]);

    if (evaluationPart.length != 1)
        res.redirect('/dashboard');

    res.end(JSON.stringify(evaluationPart[0]));
});

app.post('/api/evaluationpart', async (req, res) => {
    res.setHeader('Content-Type', 'application/json');

    const { id, html, css, script, admin_script, gsap, name, evaluation_id } = req.body;


    if (id) {
        //update
        await promiseQuery(`
            UPDATE evaluation_parts 
            SET 
                name=?,
                gsap=?,
                html=?,
                css=?,
                script=?,
                admin_script=?
            WHERE 
                id=?
        `, [name, gsap, html, css, script, admin_script, id])
            .catch((err) => {
                console.log(err);
                res.end(JSON.stringify({ mes: 'update error' }));
            });
    }
    else {

        let errorMsg = '';

        if (!name)
            errorMsg += "name is required, ";

        if (!evaluation_id)
            errorMsg += "evaluation_id is required, ";

        if (errorMsg.length > 0) {
            res.end(JSON.stringify({ msg: errorMsg }));
        }
        //create
        await promiseQuery(`
            INSERT INTO 
                evaluation_parts(name, gsap, html, css, evaluation_id, script, admin_script) 
                VALUES (?,?,?,?,?,?,?)
        `, [name, gsap, html, css, evaluation_id, script, admin_script])
            .catch((err) => {
                res.end(JSON.stringify({ msg: 'create erorr' }));
            });
    }

    res.end(JSON.stringify({ msg: 'success' }));
});

//delete evaluation part by id
app.get('/api/evaluationpart/delete', async (req, res) => {
    res.setHeader('Content-Type', 'application/json');

    let idEvaluationPart = req.query.id;;

    if (!idEvaluationPart) {
        res.end(JSON.stringify({ msg: 'id is required' }));
    }

    await promiseQuery(`DELETE FROM evaluation_parts WHERE id=?`, [idEvaluationPart])
        .catch((err) => {
            res.end(JSON.stringify({ msg: 'delete error' }));
        }
        );

    res.end(JSON.stringify({ msg: 'success' }));
}
);

//

// only allow authenticated users or admin
io.use((socket, next) => {
    const session = socket.request.session;
    if (session && session.admin) {
        next();
    }
    else if (session && session.username) {
        next();
    }
    else {
        next(new Error("unauthorized"));
    }
});

//socket
io.on('connection', (socket) => {

    let sess = socket.request.session;

    //send all rooms to the user
    socket.emit('rooms', { ...rooms });

    Object.keys(rooms).forEach(room => {

        //listening if socket want to connect to a specific room
        socket.on('join.' + room, () => {

            //add socket to room list
            if (sess.username)
                rooms[room].participants.push({
                    socketId: socket.id,
                    username: sess.username
                });

            // if admin addit to room list
            if (sess.admin)
                rooms[room].admin = { socketId: socket.id};

            //send all room details to the user
            socket.emit('room', rooms[room]);

            // send to this socket
            socket.emit('join.' + room, {
                message: (sess.username ? 'you ' : sess.admin ? 'you are the admin and you ' : 'you are a hacker and you ') + 'joined the room ' + room + ' !',
                room: rooms[room]
            });

            // all except this socket
            socket.broadcast.emit('join.' + room, {
                message: (sess.username ? sess.username : sess.admin ? 'admin' : 'hacker') + ' joined the room!',
                room: rooms[room]
            });

            const leaveRoom = (room) => {
                //remove socket from room participants sockets
                rooms[room].participants = rooms[room].participants.filter(function (obj) {
                    return obj.socketId !== socket.id;
                });

                //remove socket from room admin socket
                if (rooms[room].admin.socketId === socket.id) {
                    rooms[room].admin = {};
                }

                socket.broadcast.emit('leave.' + room, {
                    message: (sess.username ? sess.username : sess.admin ? 'admin' : 'hacker') + ' left the room!',
                    room: rooms[room]
                });
            };

            socket.on("leave." + room, (msg) => {
                leaveRoom(room);
            });

            socket.on("disconnect", (msg) => {
                // Object.keys(rooms).forEach((room) => {
                leaveRoom(room);
                // })
            });

            socket.on('chat.' + room, (msg) => {

                // send to this socket
                socket.emit('chat.' + room, 'you : ' + msg);

                // all except this socket
                socket.broadcast.emit('chat.' + room, (sess.username ? sess.username : sess.admin ? 'admin' : 'hacker') + ' : ' + msg);

            });

            // select the evaluation part
            socket.on('selectpart.' + room, (part) => {

                // if not an admin go out
                if (!sess.admin)
                    return;

                // send the part to all users
                socket.broadcast.emit('selectpart.' + room, part);

            });

            // start the part
            socket.on('startpart.' + room, () => {

                // if not an admin go out
                if (!sess.admin)
                    return;

                // send the part to all users
                socket.broadcast.emit('startpart.' + room);

            });

            // stop the part
            socket.on('stoppart.' + room, () => {

                // if not an admin go out
                if (!sess.admin)
                    return;


                // send the part to all users
                socket.broadcast.emit('stoppart.' + room);

            });

            // progress
            socket.on('progresspart.' + room, (progress) => {

                socket.broadcast.emit('progresspart.' + room, { progress: progress, username: sess.username });

            });

            socket.on('participant.stoppart.'+ room, function(participant){

                let socketId = participant.socketId;

                // find the socket by socketId
                let socketParticipant = io.sockets.sockets.get(socketId);

                if(!socketParticipant)
                    return;

                socketParticipant.emit('stoppart.' + room);

            })

            socket.on('participant.restartpart.'+ room , ({participant,part}) => {

                let socketId = participant.socketId;

                // find the socket by socketId
                let socketParticipant = io.sockets.sockets.get(socketId);

                if(!socketParticipant)
                    return;

                // send the part to the participant
                socketParticipant.emit('restartpart.' + room, part);

            });

            socket.on('completepart.' + room, (obj) => {

                console.log(obj);

                // just simple users can join the room
                // if (!sess.admin)
                //     return;

                // find admin socket
                // let adminSocket = io.sockets.sockets.get(rooms[room].admin.socketId);

                // if(!adminSocket)
                //     return;

                // send the part to the adminSocket
                // adminSocket.emit('completepart.' + room, {obj , username: sess.username});
                socket.broadcast.emit('completepart.' + room, {obj , username: sess.username});

            });

        });

    });

});

//start the serve
const port = 3000;
const ip = '0.0.0.0';
server.listen(port, ip, () => {
    console.log('listening on *:' + port);
});
