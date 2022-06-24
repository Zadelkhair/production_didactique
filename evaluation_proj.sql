-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 12:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluation_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `room` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluations`
--

INSERT INTO `evaluations` (`id`, `created_at`, `room`) VALUES
(4, '2022-04-30 23:15:29', '633039d4-ab98-4bc2-856d-86d04046a546'),
(5, '2022-04-30 23:41:05', 'ef26dbc4-df12-4702-9b6e-6acb78c061b1'),
(6, '2022-05-01 02:55:18', '7c57a71b-a9bc-40ed-8ea3-74d582354473'),
(7, '2022-05-01 03:31:05', '9aa8cbd9-a782-40de-9ef2-8877c105fa01'),
(8, '2022-05-01 03:38:46', '74b62574-dce3-42a8-9bfe-d1c4a7d760f5'),
(9, '2022-05-01 15:33:19', '2ef7a72a-f913-4309-9b84-a3cbcff79a36'),
(10, '2022-05-01 16:01:43', '3d154476-9eaf-43a2-b7c8-55732cfe6ecd'),
(11, '2022-05-01 16:02:15', '8dd4cc9a-30d6-439b-9d20-f979b707b4e8'),
(12, '2022-05-01 16:02:29', '590d3680-89c8-4fce-a93c-6d11cbdce41e'),
(13, '2022-05-01 16:03:47', '42b5df13-967c-4898-93b3-b2c9ea544f8e'),
(14, '2022-05-01 16:06:48', 'f2cdab18-1e43-436d-b828-7c357dfa9817'),
(15, '2022-05-01 17:00:43', 'a46b0fee-b813-40f3-9665-29128b3dc43d'),
(16, '2022-05-01 20:09:34', 'a00d87ab-282b-41f6-8a99-cf6cd15e232e'),
(17, '2022-05-01 20:10:22', '2f98fea6-70ed-4796-b7c7-702264174d5a'),
(18, '2022-05-01 20:10:42', '5035413e-a185-4117-bf08-b9367d370b47'),
(19, '2022-05-01 22:01:08', 'c7abfc23-6a0a-4b62-a49f-dd10a09c52dc'),
(20, '2022-05-02 01:01:48', '8fea7de8-a7b1-411e-9cd8-466339a31ee3'),
(21, '2022-05-02 09:02:24', '24008a9e-7938-420d-a0da-3bc408824de6'),
(22, '2022-05-02 12:25:57', '7492c59c-a2b5-4aaa-be46-92c3ce34c038'),
(23, '2022-05-02 13:58:03', 'f4a31a48-6321-4cba-b97d-1fccabec2357'),
(24, '2022-05-02 14:21:10', '2cab030d-1557-484d-ab08-29725c28f1fc'),
(25, '2022-05-02 14:24:31', '9c76abf7-9139-48f5-893c-5c9578f93090'),
(26, '2022-05-02 21:09:47', 'b8ca5dad-2756-4093-97d9-62222d80bd0b'),
(27, '2022-05-02 21:24:33', '60fe5871-a105-424a-92f0-134a940c93e4'),
(28, '2022-05-02 22:07:58', '8e83e59c-484d-4a69-a43e-584c801ab551'),
(29, '2022-05-02 22:42:36', '921f2837-ad3e-4dea-9b98-8f64c1886856'),
(30, '2022-05-03 13:04:41', '753e7edd-2161-4934-a943-a177d6fe1276'),
(31, '2022-05-03 13:22:07', '94cdf442-8c00-4d29-834a-ecdfbf0d0189'),
(32, '2022-05-03 17:27:33', 'b15500bf-4aa2-4fc4-8d4e-f974ee4813d2'),
(33, '2022-05-03 17:32:00', '475c9c0b-aced-47ec-b9cf-2d592d43750c'),
(34, '2022-05-03 17:47:04', '9ba13243-6ae8-4464-9872-4fb09887aa59'),
(35, '2022-05-03 17:47:44', '5401b3bb-e16e-446c-b323-7c964aaaa00a'),
(36, '2022-05-03 17:49:43', '58218082-a9f2-4a90-9ace-94e233589d76'),
(37, '2022-05-03 17:55:28', '39d7a6c3-0746-4a06-ba55-c240a15603c3'),
(38, '2022-05-03 18:18:09', 'ed419a8b-f121-42b8-9886-628e3aa1d27b'),
(39, '2022-05-03 18:28:20', 'd9acdfbb-4723-41be-9926-4bfda8f94a6c'),
(40, '2022-05-03 18:29:28', '1a995cb2-8d03-4d7c-a458-398824e5a043'),
(41, '2022-05-03 18:33:11', 'ffc27d43-0b37-499b-b005-c055404fc4ea'),
(42, '2022-05-03 18:34:19', 'cc259092-b01c-4e6f-810f-d506a091f79e'),
(43, '2022-05-03 18:36:01', '2b9672dc-396c-42ec-868c-270332a29289'),
(44, '2022-05-03 18:47:58', 'fc7a1369-3af6-45b4-a3ce-2a0303a6f0d0'),
(45, '2022-05-03 19:06:08', '1a00cad2-c923-45c8-b12c-c4a766b0e518'),
(46, '2022-05-03 19:15:50', '9630206c-003a-4c93-aced-ad0b4a4b5038'),
(47, '2022-05-03 19:16:38', 'e57d213d-123d-4e46-800b-4e4b32656abe'),
(48, '2022-05-03 19:17:45', '5ab5720b-4261-4203-9b5a-9e81243b53a6'),
(49, '2022-05-03 19:19:40', 'b09a0233-fddf-41bb-8fa6-0e20a26fca94'),
(50, '2022-05-03 19:38:04', '2fae1615-e608-4fe1-b377-ea785c36bdb2'),
(51, '2022-05-03 19:42:39', 'a5497a06-c62b-4146-ac5f-188e1292cade'),
(52, '2022-05-03 20:22:17', '2382f259-b1b1-4f6c-97e9-747524bdef97'),
(53, '2022-05-03 20:31:03', '7c841412-caed-4c09-8038-769119e2168a'),
(54, '2022-05-03 21:07:54', '6cec49a3-6620-47ec-ad05-00eacb77cf78'),
(55, '2022-05-03 21:08:15', 'bcd6fc25-e608-4ee8-80fd-9cee41c03306'),
(56, '2022-05-03 21:09:25', 'ab38c318-2dfb-4268-9e30-864cdc0fb96c'),
(57, '2022-05-03 21:11:04', '0f362003-d156-4567-9401-c5f4d955de80'),
(58, '2022-05-03 21:11:14', '861869ce-2dd7-4614-b25e-0664486b0120'),
(59, '2022-05-03 21:25:31', '13dbadfc-6fb9-4ab9-8abd-a42b3932f152'),
(60, '2022-05-03 22:44:24', '1df90d4b-9800-48e8-a2fb-33d1ed82366a'),
(61, '2022-05-04 00:49:34', '90f4f047-81a4-4b24-a62c-43f55af64be9'),
(62, '2022-05-04 12:06:14', '007eaff0-8331-4495-be0d-0cef7f599015'),
(63, '2022-05-04 14:07:32', '62e97eff-8d9d-4ab7-acd9-32d98630a7ba'),
(64, '2022-05-04 22:04:39', 'b0eb5115-143c-46f6-a2c7-6786d1642c30'),
(65, '2022-05-05 07:11:32', '5847be20-a32e-49d7-813a-284cf428b79a'),
(66, '2022-05-05 12:23:49', '27522e88-705b-44dd-ab03-248b592bd1ea'),
(67, '2022-05-06 06:18:23', '7be5f8a0-0a71-4a8d-9f5c-66d4c99b3ae4'),
(68, '2022-05-06 07:04:05', '219729a0-0d4d-4b87-b5c4-b104a5a6ef57'),
(69, '2022-05-06 14:33:27', '514cb047-f979-4c3d-bbfa-48410ba8d4dc'),
(70, '2022-05-06 15:06:11', '5a300bec-e021-4fa6-bdfa-06c1ef21f467'),
(71, '2022-05-07 00:11:05', '8b9e470b-ced3-4734-9f59-97a77b36620d'),
(72, '2022-05-07 00:33:04', '14e36c4f-798a-42dd-94fd-37d1b5e376e6'),
(73, '2022-05-07 00:40:33', 'cc522cf6-0996-4c7e-9a19-06f716465072'),
(74, '2022-05-07 00:55:33', '91f646c9-95c8-4831-83b9-961d3503a18c'),
(75, '2022-05-07 10:19:57', '4e195af2-56b8-4a9d-b8a1-7638f3a806fd'),
(76, '2022-05-08 20:34:41', 'e7786e55-9608-4c49-b4f9-3a0458f5e7ef'),
(77, '2022-05-09 17:58:36', 'c28d6f9c-c15f-4e33-ac64-d136f1c58bcd'),
(78, '2022-05-09 18:03:20', '8bb1d3f2-490f-42c3-b573-b8dbfe8c629d'),
(79, '2022-05-09 18:22:30', '3d259d7a-7ad6-45ac-9bb9-dd250819b425'),
(80, '2022-05-09 18:33:03', '7620ac80-cd35-4421-aa35-ebd1ba8723a9'),
(81, '2022-05-09 19:16:59', '18a81b8f-d684-45b1-9f7d-2fbeb0a028a3'),
(82, '2022-05-09 20:52:14', '420ff5f5-b56f-47a8-b931-887afac243eb'),
(83, '2022-05-10 00:11:42', '6c06c7f7-ac56-42d7-8f69-af6603150220'),
(84, '2022-05-10 00:49:22', 'eae64ece-938f-4d94-bb15-88e2950a2320'),
(85, '2022-05-10 09:20:17', 'e32e32fa-355f-45cb-8738-6e61a8ec3624'),
(86, '2022-05-10 19:19:12', '82f06aaa-2f16-48b5-b3bc-c25b711aaa27'),
(87, '2022-05-14 22:02:09', '5f6932d8-e8be-4112-a308-7b9b62cb0cc5'),
(88, '2022-06-18 09:57:59', '9f19189b-5caa-44b9-960b-a6b1033c03aa'),
(89, '2022-06-18 10:16:10', '3168b863-b12d-4965-97a3-ec7e3ed45d8c'),
(90, '2022-06-19 18:26:52', '8f7e2463-3a45-4e41-ad48-f354c3d43441'),
(91, '2022-06-19 19:07:26', '8b9b1e02-2b9f-4c52-b877-73ab99cca521'),
(92, '2022-06-19 19:29:47', '12ef845f-3b33-4d50-858e-8f0582c552f2'),
(93, '2022-06-19 19:31:09', '64643f19-fc32-42dc-aab5-5bd3ca26cf65'),
(94, '2022-06-20 18:03:26', '9dee40b4-7345-40e5-b0a8-fdaab2119013'),
(95, '2022-06-20 18:15:17', '008776e9-94a6-4b8a-b34e-cf723e592162'),
(96, '2022-06-20 18:39:46', '5b6c8b40-d2f3-4b64-bb2c-5419a0f60dbf'),
(97, '2022-06-20 18:44:26', 'c7914162-332f-4d0c-bc95-90268ae4e0e3'),
(98, '2022-06-20 18:45:04', '111b5258-9df1-42ac-9407-c98b4fa3ff02'),
(99, '2022-06-20 18:48:00', '5b77697e-6662-412b-853b-0ea3ef45a69f'),
(100, '2022-06-20 18:50:39', '09f38f41-650b-4256-8eb4-3bbd34d325d8'),
(101, '2022-06-20 18:56:42', 'be1ea4b6-efa9-48ba-a74d-cfd208fca60c'),
(102, '2022-06-20 19:20:59', '538a4db4-f7d6-49a1-845a-3753589ca372'),
(103, '2022-06-20 19:24:09', 'd44e9fad-90b1-4336-a954-0664dd3b988d'),
(104, '2022-06-20 19:25:31', 'af945cf9-11fa-42ed-8064-86d0973cc539'),
(105, '2022-06-20 19:28:06', '9f185e4f-f593-4154-8c33-e63d19887c8f'),
(106, '2022-06-20 19:29:12', 'dbd84c17-1422-47d8-ab1b-6a33c2dae512'),
(107, '2022-06-20 19:51:07', 'a5282495-1aa8-460b-a692-8a3da7f11f7b'),
(108, '2022-06-20 20:00:43', '84fba5dd-5ce4-40b3-b859-c288a91d035c'),
(109, '2022-06-20 23:09:34', 'f6cccc55-d08a-4d17-8029-a394fdabf62d'),
(110, '2022-06-20 23:16:13', 'd4303170-8077-4958-9847-6b0fdf25d620'),
(111, '2022-06-20 23:22:32', 'c2df3216-7370-4a2b-8cf7-95d2690cb92e'),
(112, '2022-06-20 23:30:34', '748d098f-fdd2-4e64-8d2f-50a417bc94ed'),
(113, '2022-06-20 23:36:12', '89f40fdc-f0f9-44ae-91cf-1efadf14c487'),
(114, '2022-06-20 23:40:35', '48407de5-012b-48da-b52d-e4d7ce90e5b1'),
(115, '2022-06-20 23:42:56', '9871c331-6c91-456d-87f1-f8a6330e4ff5'),
(116, '2022-06-20 23:46:26', '838e6d9f-5a54-47de-9d78-ffe04b62eef2'),
(117, '2022-06-20 23:51:51', 'c98353e0-bd6b-42f5-9382-acc759f5a0db'),
(118, '2022-06-20 23:54:21', 'cb5e6449-30f0-4883-9154-bb36cfb5bd47'),
(119, '2022-06-21 00:00:27', '0d67fe51-d00e-41d7-b8cd-a8e831d6058e'),
(120, '2022-06-21 00:05:50', '814c7fe2-6588-4282-8f01-250afe4f8b82'),
(121, '2022-06-21 00:08:00', 'e1f5612d-f638-4419-82bc-08b5376949a2'),
(122, '2022-06-21 00:08:51', '23e65a8e-c61f-40f2-bcc3-a70f036e7137'),
(123, '2022-06-21 01:02:31', '38f55699-eb55-4d2c-91c3-c235e9a2d17c'),
(124, '2022-06-21 01:03:16', '9f0df28a-1117-4939-89e7-b0d92e4b81b1'),
(125, '2022-06-21 01:04:37', '5c673676-3224-47ae-8380-16f5791a7f77'),
(126, '2022-06-21 01:05:30', '339eb801-a1fe-4146-a562-1774d859acc4'),
(127, '2022-06-21 01:09:02', '012ad1e1-d905-44a7-beab-aec563075f7a'),
(128, '2022-06-21 01:10:01', '5edba663-6c50-4a53-953a-b2921be44389'),
(129, '2022-06-21 01:11:17', '696599a7-bacf-4971-a4e8-5bc65862124e'),
(130, '2022-06-21 01:12:30', '048f5f4d-9ba5-4ad1-9ea4-e830bad72bea'),
(131, '2022-06-21 01:13:08', '08a6bfc9-fb82-4078-8d4a-c3517d75d0f6'),
(132, '2022-06-21 01:14:40', '0b844bbd-c8d8-4bb8-9ad1-05d0dbb6acf1'),
(133, '2022-06-21 01:16:00', '895e2956-283e-42b1-bec2-3d868b018d85'),
(134, '2022-06-21 01:26:10', '9c1cb253-676e-4f53-8021-bae4a5463dca'),
(135, '2022-06-21 09:51:17', '6cffa4d8-dc50-4322-9cff-10600efee204'),
(136, '2022-06-21 09:59:55', '29eb48b3-5936-4cd5-a85e-748e7b0b1cb9'),
(137, '2022-06-21 14:08:16', '9070325d-04a9-4d83-9848-3b93b1c70937'),
(138, '2022-06-21 15:23:09', '19d446f9-2cb2-4c04-8a8c-e5e00b491e21'),
(139, '2022-06-21 16:07:07', 'f53bcd72-ab5b-4590-9d59-13c8881586fa'),
(140, '2022-06-21 16:11:26', 'e237ea6a-0c71-41a4-84e6-92f715e2c809'),
(141, '2022-06-21 16:19:32', '5a340268-5541-41fb-aa22-907d48dd0596'),
(142, '2022-06-21 21:49:11', '03c1d811-47f9-4819-9fec-0b72d6187254'),
(143, '2022-06-21 22:01:49', '39370383-f7a4-4546-a0c4-d2ef858cf015'),
(144, '2022-06-21 22:04:18', '8951d00f-29eb-4d31-b25e-768088d0fbec'),
(145, '2022-06-21 22:06:24', 'aa037c5d-4db4-451c-aecd-f928e069bf03'),
(146, '2022-06-21 22:12:00', '37482bbd-1523-4d40-90ea-dfa009ddda43'),
(147, '2022-06-22 01:39:04', 'b235a743-9948-485d-86f6-2ece7e842828'),
(148, '2022-06-22 02:04:10', '95a23bfe-986b-487e-8a00-15062fe60652'),
(149, '2022-06-22 12:03:10', 'a50a0bd9-2813-4ec8-88f5-36a0c1b1c446'),
(150, '2022-06-22 13:18:56', 'f852da42-7a0e-4544-97ce-c4c943130596'),
(151, '2022-06-22 14:21:28', '966df2a6-4c6b-4622-a304-f498d4f03d8a'),
(152, '2022-06-24 17:21:58', '091a005a-8bcc-4934-9c79-55aa872f5905');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_parts`
--

CREATE TABLE `evaluation_parts` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `gsap` text DEFAULT NULL,
  `html` text DEFAULT NULL,
  `css` text DEFAULT NULL,
  `script` text DEFAULT NULL,
  `evaluation_id` int(11) NOT NULL,
  `admin_script` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_parts`
--

INSERT INTO `evaluation_parts` (`id`, `name`, `gsap`, `html`, `css`, `script`, `evaluation_id`, `admin_script`) VALUES
(1, 'qcm part', '[{\"type\":\"customefunction\",\"id\":\"#firstloadquestion\",\"from\":{},\"to\":{},\"func\":\"FirstloadQuestion\"},{\"id\":\"#qcm-container\",\"type\":\"object\",\"from\":{\"width\":\"0\"},\"to\":{\"width\":\"700\",\"duration\":\"2\"},\"at\":\"+=2\"},{\"type\":\"label\",\"from\":{},\"to\":{},\"name\":\"question\",\"id\":\"#question\"},{\"id\":\"#question-num\",\"type\":\"object\",\"from\":{\"opacity\":0,\"y\":\"20\"},\"to\":{\"opacity\":1,\"duration\":\"1\",\"y\":\"0\"}},{\"type\":\"customefunction\",\"id\":\"#vidnum\",\"from\":{},\"to\":{},\"func\":\"numAudioPlayer\"},{\"id\":\"#question-num\",\"type\":\"object\",\"from\":{},\"to\":{\"y\":\"20\",\"duration\":\"1\",\"opacity\":0}},{\"id\":\"#question-text\",\"type\":\"object\",\"from\":{\"y\":\"10\",\"opacity\":0},\"to\":{\"y\":\"0\",\"opacity\":1,\"duration\":\"1\"}},{\"id\":\"#vidtext\",\"type\":\"customefunction\",\"from\":{},\"to\":{},\"func\":\"textAudioPlayer\"},{\"id\":\"#choices-container\",\"type\":\"object\",\"from\":{},\"to\":{\"duration\":\"1\"}},{\"id\":\"#btn-choice-1\",\"type\":\"object\",\"from\":{\"opacity\":0,\"y\":\"10\"},\"to\":{\"opacity\":1,\"y\":\"0\",\"duration\":\"1\"}},{\"id\":\"#btn-choice-1\",\"type\":\"object\",\"from\":{\"width\":\"70\"},\"to\":{\"duration\":\"1\",\"width\":\"300\"}},{\"id\":\"#vidq1\",\"type\":\"customefunction\",\"from\":{},\"to\":{},\"func\":\"q1AudioPlayer\"},{\"id\":\"#btn-choice-2\",\"type\":\"object\",\"from\":{\"opacity\":0,\"y\":\"10\"},\"to\":{\"opacity\":1,\"y\":\"0\",\"duration\":\"1\"}},{\"id\":\"#btn-choice-2\",\"type\":\"object\",\"from\":{\"width\":\"70\"},\"to\":{\"width\":\"300\",\"duration\":\"1\"}},{\"id\":\"#vidq2\",\"type\":\"customefunction\",\"from\":{},\"to\":{},\"func\":\"q2AudioPlayer\"},{\"id\":\"#btn-choice-3\",\"type\":\"object\",\"from\":{\"y\":\"10\",\"opacity\":0},\"to\":{\"opacity\":1,\"y\":\"0\",\"duration\":\"1\"}},{\"id\":\"#btn-choice-3\",\"type\":\"object\",\"from\":{\"width\":\"70\"},\"to\":{\"width\":\"300\",\"duration\":\"1\"}},{\"id\":\"#vidq3\",\"type\":\"customefunction\",\"from\":{},\"to\":{},\"func\":\"q3AudioPlayer\"},{\"id\":\"#btn-choice-4\",\"type\":\"object\",\"from\":{\"opacity\":0,\"y\":\"10\"},\"to\":{\"y\":\"0\",\"opacity\":1,\"duration\":\"1\"}},{\"id\":\"#btn-choice-4\",\"type\":\"object\",\"from\":{\"width\":\"70\"},\"to\":{\"duration\":\"1\",\"width\":\"300\"}},{\"id\":\"#vidq4\",\"type\":\"customefunction\",\"from\":{},\"to\":{},\"func\":\"q4AudioPlayer\"},{\"id\":\"#qcm-progress-value\",\"type\":\"object\",\"from\":{\"width\":\"0\"},\"to\":{\"width\":\"100%\",\"duration\":\"5\"}},{\"id\":\"#btn-choice-1\",\"type\":\"object\",\"from\":{},\"to\":{\"width\":\"70\"}},{\"id\":\"#btn-choice-2\",\"type\":\"object\",\"from\":{},\"to\":{\"width\":\"70\"},\"at\":\"<10%\"},{\"id\":\"#btn-choice-3\",\"type\":\"object\",\"from\":{},\"to\":{\"width\":\"70\"},\"at\":\"<20%\"},{\"id\":\"#btn-choice-4\",\"type\":\"object\",\"from\":{},\"to\":{\"width\":\"70\"},\"at\":\"<30%\"},{\"id\":\"#choices-container\",\"type\":\"object\",\"from\":{\"opacity\":1},\"to\":{\"y\":\"10\",\"opacity\":0}},{\"id\":\"#question-text\",\"type\":\"object\",\"from\":{},\"to\":{\"opacity\":0,\"y\":\"10\"},\"at\":\"<0\"},{\"id\":\"#qcm-progress-value\",\"type\":\"object\",\"from\":{},\"to\":{\"width\":\"0%\",\"duration\":\"1\"},\"at\":\"<0\"},{\"type\":\"customefunction\",\"id\":\"#gotonext\",\"from\":{},\"to\":{},\"func\":\"nextQuestion\",\"at\":\"+=1\"},{\"type\":\"customefunction\",\"id\":\"submitAnswer\",\"from\":{},\"to\":{},\"func\":\"submitAnswer\"},{\"id\":\"#qcm-container\",\"type\":\"object\",\"from\":{},\"to\":{\"duration\":\"2\",\"width\":\"0\"}}]', '<div id=\"bg\"></div>\n\n<div id=\"qcm-container\">\n  <div id=\"qcm-progress\">\n    <div id=\"qcm-progress-value\"></div>\n  </div>\n  <div id=\"question\">\n    <div id=\"question-num\" ></div>\n    <div id=\"question-text\" ></div>\n  </div>\n  <div class=\"separator\"></div>\n  <div id=\"choices-container\">\n    <button id=\"btn-choice-1\" class=\"btn-choice\" />\n    <button id=\"btn-choice-2\" class=\"btn-choice\" />\n    <button id=\"btn-choice-3\" class=\"btn-choice\" />\n    <button id=\"btn-choice-4\" class=\"btn-choice\" />\n  </div>\n</div>\n', '@import url(\'https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,400;1,100;1,400&display=swap\');\n\n#bg {\n  position: absolute;\n  background: linear-gradient(1deg, #70e2da, #e6fefb);\n  width: 100%;\n  height: 100%;\n  left: 50%;\n  top: 50%;\n  transform: translate(-50%, -50%);\n}\n\n#question {\n  color: white;\n  font-size: 50px;\n  text-align: center;\n  overflow: hidden;\n}\n\n#qcm-container {\n  position: absolute;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%);\n  display: flex;\n  flex-direction: column;\n  width: 700px;\n  box-shadow: 0px 10px 20px 0px #0000001c;\n  background-image: url(/static/qcm-bg-img.png);\n  background-size: 120px;\n  font-family: \'Josefin Sans\', sans-serif !important;\n  overflow: hidden;\n  max-width:90%;\n}\n\n#qcm-progress {\n  height: 10px;\n  display: flex;\n  background: #bcf1eb;\n  position: relative;\n  overflow: hidden;\n\n}\n\n#qcm-progress #qcm-progress-value {\n  background: #62c6cd;\n  width: 10%;\n  position: absolute;\n  left: 0;\n  height: 100%;\n  top: 0;\n  overflow: hidden;\n\n}\n\n#question {\n  text-align: center;\n  font-size: 16px;\n  font-weight: bold;\n  color: #2c5f6e;\n  padding: 30px 20px 20px 20px;\n  display: flex;\n  flex-direction: column;\n  align-items: center;\n  overflow: hidden;\n	position:relative;\n}\n\n#question-text{\n  margin-top: 20px;\n  font-size: 18px;\n  width: 400px;\n  overflow: hidden;\n\n}\n\n#btn-choice {\n  background: rgb(255, 42, 163);\n  border: solid 1px rgb(255, 42, 163);\n  box-shadow: 0 0 0 0 black;\n  color: white;\n  font-size: 20px;\n  border-radius: 10px;\n  padding: 4px;\n  width: 45%;\n  height: 45%;\n  overflow: hidden;\n\n}\n\n#choices-container {\n  display: flex;\n  flex-direction: column;\n  align-items: center;\n  padding: 20px 20px 70px 20px;\n  overflow: hidden;\n  width:auto;\n  opacity:1;\n}\n\n.btn-choice {\n  width: 300px;\n  margin-bottom: 10px;\n  background: white;\n  border-style: none;\n  padding: 10px 20px;\n  color: #2c5f6e;\n  text-align: left;\n  font-weight: bold;\n  border-radius: 10px;\n  font-size: 13px;\n  overflow: hidden;\n  /* display: flex; */\n  flex-wrap: nowrap;\n  white-space: nowrap;\n  align-items: center;\n}\n\n.btn-choice .btn-num {\n  height: 30px;\n  width: 30px;\n  display: inline-flex;\n  justify-content: center;\n  align-items: center;\n  border-radius: 100%;\n  margin-right: 20px;\n  background: #e6fefb;\n  box-shadow: 0 0 7px 0px #00000014;\n  padding: 0;\n}\n\n.btn-choice:hover,\n.btn-choice-selected {\n  background: #70e2da;\n  color: white;\n}\n\n.btn-choice:hover .btn-num,\n.btn-choice-selected .btn-num{\n  background: #2c5f6e;\n}\n\n.separator {\n  height: 5px;\n  background: red;\n  background: linear-gradient(0deg, rgba(255, 255, 255, 0) 0%, rgb(255 255 255 / 58%) 50%, rgb(0 0 0 / 10%) 50%, rgba(0, 0, 0, 0) 100%);\n}\n\n#question-num{\n  position:absolute;\n  display:flex;\n  justify-content:center;\n  align-items:center;\n  font-size:40px;\n  width:100%;\n  /*height:100%;*/\n}\n\n.vid1{\n  position: absolute;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%);\n  width: 850px;\n  box-shadow: 0px 10px 20px 0px #0000001c;\n  max-width:90%;\n}\n\n\n\n\n', 'let part = {\n  answers : [],\n  endCallback : null,\n  questions : [\n    {\n      num : \'Question 1\',\n      numAudio : \'\',\n      text : \'Le réseau du collège est un réseau LAN (Local Area Network).\',\n      textAudio : \'/static/qaudios/q1.m4a\',\n      choices : [\n        { num : \'A\' , text : \'vrai\' , audio:\'/static/qaudios/q1_r1.m4a\' , isTrue : true },\n        { num : \'B\' , text : \'faux\' , audio:\'/static/qaudios/q1_r2.m4a\' , isTrue : false }\n      ]\n    },\n    {\n      num : \'Question 2\',\n      numAudio : \'\',\n      text : \'Un réseau WAN (Wide Area Network) relie des ordinateurs du monde entier.\',\n      textAudio : \'/static/qaudios/q2.mp3\',\n      choices : [\n        { num : \'A\' , text : \'vrai\' , audio:\'/static/qaudios/q2_r1.mp3\' , isTrue : true },\n        { num : \'B\' , text : \'faux\' , audio:\'/static/qaudios/q2_r2.mp3\' , isTrue : false }\n      ]\n    },\n    {\n      num : \'Question 3\',\n      numAudio : \'\',\n      text : \'<img src=\"/static/q_3.png\" /><br>L\\\'illustration ci-dessus représente une topologie\',\n      textAudio : \'/static/qaudios/q3.mp3\',\n      choices : [\n        { num : \'A\' , text : \'en bus\' , audio:\'/static/qaudios/q3_r1.mp3\' , isTrue : true },\n        { num : \'B\' , text : \'en anneau\' , audio:\'/static/qaudios/q3_r2.mp3\' , isTrue : true },\n        { num : \'C\' , text : \'en étoile\' , audio:\'/static/qaudios/q3_r3.mp3\' , isTrue : true }\n      ]\n    },\n    {\n      num : \'Question 4\',\n      numAudio : \'\',\n      text : \'<img src=\"/static/q_4.png\" /><br>L\\\'illustration ci-dessus représente une topologie\',\n      textAudio : \'/static/qaudios/q4.m4a\',\n      choices : [\n        { num : \'A\' , text : \'en bus\' , audio:\'/static/qaudios/q4_r1.m4a\' , isTrue : true },\n        { num : \'B\' , text : \'en anneau\' , audio:\'/static/qaudios/q4_r2.m4a\' , isTrue : true },\n        { num : \'C\' , text : \'en étoile\' , audio:\'/static/qaudios/q4_r3.m4a\' , isTrue : true }\n      ]\n    },\n    {\n      num : \'Question 5\',\n      numAudio : \'\',\n      text : \'Internet est un réseau\',\n      textAudio : \'/static/qaudios/q5.mp3\',\n      choices : [\n        { num : \'A\' , text : \'en bus\' , audio:\'/static/qaudios/q5_r1.mp3\' , isTrue : true },\n        { num : \'B\' , text : \'en anneau\' , audio:\'/static/qaudios/q5_r2.mp3\' , isTrue : true },\n        { num : \'C\' , text : \'en étoile\' , audio:\'/static/qaudios/q5_r3.mp3\' , isTrue : true },\n      ]\n    }\n  ],\n  curr_question:0,\n  FirstloadQuestion(callback){\n    \n    this.curr_question = 0;\n    this.answers = [];\n    \n    for( let i = 0 ; i<this.questions.length ; i++)\n    	this.answers[i] = \'\';\n\n    \n    // get button by id\n    var button1 = document.getElementById(\'btn-choice-1\');\n    var button2 = document.getElementById(\'btn-choice-2\');\n    var button3 = document.getElementById(\'btn-choice-3\');\n    var button4 = document.getElementById(\'btn-choice-4\');\n    \n    this.unselectChoiceButtons();\n    \n    // add event listener to button\n    button1.addEventListener(\'click\', () => {\n      	\n      	if(this.answers[this.curr_question].indexOf(\'A,\') != -1){\n        	this.answers[this.curr_question] = \n              	this.removeSubstrings(this.answers[this.curr_question],\'A,\');\n        }else {\n      		this.answers[this.curr_question] += \'A,\';\n        }\n      \n      	this.activeButton(\'btn-choice-1\',\'btn-choice-selected\',this.answers[this.curr_question],\'A,\');\n      \n    });\n    button2.addEventListener(\'click\', () => {\n		if(this.answers[this.curr_question].indexOf(\'B,\') != -1){\n        	this.answers[this.curr_question] = \n              	this.removeSubstrings(this.answers[this.curr_question],\'B,\');\n        }else {\n      		this.answers[this.curr_question] += \'B,\';\n        }\n      	this.activeButton(\'btn-choice-2\',\'btn-choice-selected\',this.answers[this.curr_question],\'B,\');\n    });\n    button3.addEventListener(\'click\', () => {\n		if(this.answers[this.curr_question].indexOf(\'C,\') != -1){\n        	this.answers[this.curr_question] = \n              	this.removeSubstrings(this.answers[this.curr_question],\'C,\');\n        }else {\n      		this.answers[this.curr_question] += \'C,\';\n        }\n      	this.activeButton(\'btn-choice-3\',\'btn-choice-selected\',this.answers[this.curr_question],\'C,\');\n    });\n    button4.addEventListener(\'click\', () => {\n		if(this.answers[this.curr_question].indexOf(\'D,\') != -1){\n        	this.answers[this.curr_question] = \n              	this.removeSubstrings(this.answers[this.curr_question],\'D,\');\n        }else {\n      		this.answers[this.curr_question] += \'D,\';\n        }\n      	this.activeButton(\'btn-choice-4\',\'btn-choice-selected\',this.answers[this.curr_question],\'D,\');\n    });\n    \n    //get all resources and load them\n    let resources = [];\n    \n    for (let i = 0; i < this.questions.length; i++) {\n        resources.push({\n            id: \'#vidnum\' + i,\n            url: this.questions[i].numAudio\n        });\n\n        resources.push({\n            id: \'#vidtext\' + i,\n            url: this.questions[i].textAudio\n        });\n\n        //loop through choices\n        for (let j = 0; j < this.questions[i].choices.length; j++) {\n            resources.push({\n                id: \'#vidchoice\' + i + j,\n                url: this.questions[i].choices[j].audio\n            });\n        }\n    }\n    \n    app.loadVideoResources(resources,()=>{\n      this.loadQuestion();\n      \n      if(callback)\n      	callback();\n    });\n    \n  },\n  unselectChoiceButtons(){\n    var button1 = document.getElementById(\'btn-choice-1\');\n    var button2 = document.getElementById(\'btn-choice-2\');\n    var button3 = document.getElementById(\'btn-choice-3\');\n    var button4 = document.getElementById(\'btn-choice-4\');\n    \n  	if (button1.classList.contains(\'btn-choice-selected\')) {\n        button1.classList.remove(\'btn-choice-selected\');\n    }\n    if (button2.classList.contains(\'btn-choice-selected\')) {\n        button2.classList.remove(\'btn-choice-selected\');\n    }\n    if (button3.classList.contains(\'btn-choice-selected\')) {\n        button3.classList.remove(\'btn-choice-selected\');\n    }\n    if (button4.classList.contains(\'btn-choice-selected\')) {\n        button4.classList.remove(\'btn-choice-selected\');\n    }\n  },\n  removeSubstrings(str, substrings) {\n      var i;\n      for (i = 0; i < substrings.length; i++) {\n          str = str.replace(substrings[i], \"\");\n      }\n      return str;\n  },\n  activeButton(id, active, string , substring) {\n    \n      var button = document.getElementById(id);\n      if (string.indexOf(substring) > -1) {\n          button.classList.add(active);\n      } else {\n          button.classList.remove(active);\n      }\n    \n  },\n  loadQuestion(){\n\n    this.unselectChoiceButtons();\n    \n    if(this.curr_question>=this.questions.length)\n      return;\n    \n    let qst = this.questions[this.curr_question];\n    \n    let qne = document.querySelector(\'#question-num\');\n    let qte = document.querySelector(\'#question-text\');\n    let btnce = [];\n     btnce[0] = document.querySelector(\'#btn-choice-1\');\n     btnce[1] = document.querySelector(\'#btn-choice-2\');\n     btnce[2] = document.querySelector(\'#btn-choice-3\');\n     btnce[3] = document.querySelector(\'#btn-choice-4\');\n    \n    for(let i = 0; i<4 ;i++){\n    	btnce[i].style.display = \'none\';\n    }\n    \n  	qne.innerHTML = `${qst?.num}`;\n    qte.innerHTML = `${qst?.num}<br><br>${qst?.text}`;\n    \n    for(let i = 0; i<qst?.choices?.length??0 ;i++){\n    	btnce[i].style.display = \'\';\n     	btnce[i].innerHTML = `<span class=\"btn-num\">${qst?.choices[i]?.num}</span>${qst?.choices[i]?.text}`; \n    }\n    \n  },\n  nextQuestion(){\n    \n    if(this.curr_question+1>=this.questions.length)\n      return;\n    \n    this.curr_question++;\n    this.loadQuestion();\n    tl.seek(\'question\');\n    \n  },\n  numAudioPlayer(){\n  	this.videoPlayer({id:\"#vidnum\"+this.curr_question});\n  },\n  textAudioPlayer(){\n  	this.videoPlayer({id:\"#vidtext\"+this.curr_question});\n  },\n  q1AudioPlayer(){\n  	this.videoPlayer({id:\"#vidchoice\"+this.curr_question+0});\n  },\n  q2AudioPlayer(){\n  	this.videoPlayer({id:\"#vidchoice\"+this.curr_question+1});\n  },\n  q3AudioPlayer(){\n  	this.videoPlayer({id:\"#vidchoice\"+this.curr_question+2});\n  },\n  q4AudioPlayer(){\n  	this.videoPlayer({id:\"#vidchoice\"+this.curr_question+3});\n  },\n  videoPlayer(v){\n  	\n    //if the timeline is paused then we should\'nt play the video\n    if (tl.paused()) return;\n\n    //get the video id without hashtag \'#\' from the gsap item\n    let videoId = v.id.replace(\'#\', \'\');\n\n    //get the element by the video id\n    var vid1 = document.getElementById(videoId);\n\n    //play the video\n    vid1.play();\n\n    //add event waiting the video untill it start playing\n    vid1.addEventListener(\"play\", () => {\n\n      //add the video id the the playing video list\n      //we need this variable to check if there any video still playing\n      app.playingVideos.push(videoId);\n\n      // we will add some labels to the timeline\n      // we need inside the pause and play functions\n      // to decide if we should play the video or the animation\n      let label = `vid@${videoId}`;\n\n      //we add this to add the possibility of playing the video along with animations\n      //we will add the some string to use it inside pause and play function\n      //bcz if the video is playing along with the animation we should pause/play them bouth\n      if (v.playwith)\n        label += \'@playwith\';\n\n      //add lable to the timeline\n      tl.addLabel(label);\n\n      //if the video is not playing with animation we should pause the animation untill the video ended\n      if (!v.playwith)\n        tl.pause();\n\n      console.log(label);\n\n      //on the video ended we should play the animation\n      vid1.onended = () => {\n\n        //algorithm to delete the video from the playing video list\n        var vindex = app.playingVideos.indexOf(videoId);\n        if (vindex !== -1) {\n          app.playingVideos.splice(vindex, 1);\n        }\n\n        //remove the video label from timeline\n        tl.removeLabel(label);\n\n        //if the video is playing with then the animation is alredy playing\n        if (!v.playwith)\n          tl.resume();\n\n        //if the playing list is empty and the timeline is ended, we will stop the timeline\n        if (app.playingVideos.length == 0 && app.endTimeline) {\n          this.stop();\n        }\n\n      }\n\n    });\n  },\n  submitAnswer(){\n    if(this.endCallback)\n      this.endCallback(this);\n  	//alert(this.answers);\n  }\n};', 4, 'let admin_scripts = {\n  sendQestion : function(data){\n    return this.part_quiz[data.qst_num];\n  }\n}'),
(11, 'video part', '[{\"id\":\"#vid1\",\"type\":\"video\",\"from\":{\"opacity\":0,\"y\":\"100\"},\"to\":{\"y\":\"0\",\"opacity\":1},\"duration\":\"20000\"},{\"id\":\"#vid1\",\"type\":\"videoplayer\",\"from\":{},\"to\":{},\"url\":\"/static/introduction.mp4\"},{\"id\":\"#vid1\",\"type\":\"video\",\"from\":{},\"to\":{\"opacity\":0,\"y\":\"100\"}}]', '<div id=\"bg\">\n	<video id=\"vid1\" />\n</div>\n', '#bg {\n    position: absolute;\n    background: linear-gradient(1deg, #70e2da, #e6fefb);\n    width: 100%;\n    height: 100%;\n    left: 50%;\n    top: 50%;\n    transform: translate(-50%, -50%);\n}\n\n#vid1{\n  position: absolute;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%);\n  width: 850px;\n  box-shadow: 0px 10px 20px 0px #0000001c;\n  max-width:90%;\n}', NULL, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `evaluation_id` int(11) NOT NULL,
  `note` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `user_group` varchar(250) DEFAULT NULL,
  `connected_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_group`, `connected_at`) VALUES
(8, '', '', '', '2022-04-30 20:40:36'),
(9, 'zadelkhair', 'zadelkhair', 'G1', '2022-04-30 20:40:50'),
(10, 'yasser', 'yasser', '', '2022-04-30 21:53:30'),
(11, 'abdo', 'zadelkhair', '', '2022-06-18 10:15:21'),
(12, 'malik', 'zadelkhair', '', '2022-06-19 18:13:01'),
(13, 'zadelkhair2', 'zadelkhair', '', '2022-06-21 01:31:24'),
(14, 'Abdessamad', 'zadelkhair', '', '2022-06-21 09:51:33'),
(15, 'BRAHIM', 'zadelkhair', '', '2022-06-21 09:59:21'),
(16, 'zahra', '', '', '2022-06-22 12:03:37'),
(17, 'ZahraElouassaa', '123456789', '', '2022-06-22 12:04:28'),
(18, 'brahimfilali', '123456789', '', '2022-06-22 12:06:03'),
(19, 'malik2', 'malik2', '', '2022-06-22 13:37:53'),
(20, 'brahimfilali@', '123456789', '', '2022-06-22 14:21:35'),
(21, 'Aymane', '123456', 'G1', '2022-06-22 14:22:50'),
(22, 'Mehdi mesfani', '123456789', 'G1', '2022-06-22 14:22:50'),
(23, 'iraoui', 'hamza12345', 'G1', '2022-06-22 14:23:29'),
(24, 'zahra elouassaa', '000000000', '', '2022-06-22 14:24:37'),
(25, 'Fadwa', 'fadwafadwa', 'G1', '2022-06-22 14:24:42'),
(26, 'KHADIJA', 'OUARID', 'G1', '2022-06-22 14:24:44'),
(27, 'RADIA', '', '', '2022-06-22 14:24:50'),
(28, 'Fadwalgr', 'fadwafadwafadwa', 'G1', '2022-06-22 14:25:19'),
(29, 'radia2', 'radia2', '', '2022-06-22 14:25:59'),
(30, 'Houda', 'mama@1234', 'G1', '2022-06-22 14:26:14'),
(31, 'Zahra1', 'zahra', '', '2022-06-22 14:27:19'),
(32, 'Noura', 'Noura', 'G1', '2022-06-22 14:28:07'),
(33, 'youssefhoussaf', 'youssef123', 'G1', '2022-06-24 17:21:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_parts`
--
ALTER TABLE `evaluation_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `evaluation_parts`
--
ALTER TABLE `evaluation_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
