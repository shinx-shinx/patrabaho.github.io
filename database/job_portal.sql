-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2022 at 04:46 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_qualification`
--

CREATE TABLE `tbl_academic_qualification` (
  `id` int NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  `transcript` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '1123', 'You have been registered successfully', 'success'),
(2, '4568', 'Unknown error occurred while performing your request', 'danger'),
(3, '0927', 'Email address is already registered', 'warning'),
(4, '0346', 'Invalid email or password', 'danger'),
(5, '9837', 'Your profile have been updated successfully', 'success'),
(6, '9564', 'Password updated successfully', 'success'),
(9, '2305', 'Professional qualification was added successfully', 'success'),
(11, '0521', 'Qualification was deleted successfully', 'success'),
(13, '9367', 'language have been added', 'success'),
(14, '0591', 'Language was deleted successfully', 'success'),
(15, '8763', 'Language have been updated', 'success'),
(16, '6734', 'Professional qualification was updated', 'success'),
(17, '9843', 'Your job advertise have been posted successfully', 'success'),
(18, '1964', 'Training / Workshop have been added successfully', 'success'),
(20, '9210', 'working experience have been added', 'success'),
(22, '9215', 'working experience updated successfully', 'success'),
(24, '0593', 'working experience was deleted', 'success'),
(26, '9522', 'Training / workshop record have been deleted', 'success'),
(28, '2303', 'Academic qualification have been added successfully', 'success'),
(30, '1521', 'Academic qualification was deleted', 'success'),
(32, '3214', 'Academic qualification have been updated', 'success'),
(34, '2380', 'Referee was added successfully', 'success'),
(36, '7642', 'Referee information have been updated', 'success'),
(38, '0173', 'Job Ad have been deleted', 'success'),
(40, '0369', 'Job Ad has been updated successfully', 'success'),
(42, '2974', 'An error occurred while sending your message', 'danger'),
(43, '5634', 'Your message was sent successfully', 'success'),
(44, '3091', 'You have successfully changed your password', 'success'),
(45, '3591', 'An error occurred while updating your password', 'danger'),
(46, '2290', 'Your certificate size must be less or equal to <strong>1MB</strong>', 'warning'),
(47, '2490', 'Your transcript size must be less or equal to <strong>1MB</strong>', 'warning'),
(48, '5790', 'Training information was updated', 'success'),
(50, '3478', 'Your image size must be less or equal to <strong>1MB</strong>', 'warning'),
(51, '6789', 'Attachment was added successfully', 'success'),
(53, '6784', 'Attachment was deleted successfully', 'success'),
(55, '7764', 'Attachment was updated successfully', 'success'),
(57, '9517', 'Referee have been deleted', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangay`
--

CREATE TABLE `tbl_barangay` (
  `id` int NOT NULL,
  `member_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `barangay_code` varchar(2) NOT NULL DEFAULT '',
  `barangay_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_barangay`
--

INSERT INTO `tbl_barangay` (`id`, `member_no`, `barangay_code`, `barangay_name`) VALUES
(1, '0', 'AF', ' Acedillo'),
(2, '0', 'AL', ' Aguit-itan'),
(3, '0', 'DZ', 'Alibaba'),
(4, '0', 'DS', 'Amampacang'),
(5, '0', 'AD', 'Anislag'),
(6, '0', 'AO', 'Awang East'),
(7, '0', 'AI', 'Awang West'),
(8, '0', 'AQ', 'Ba-ay'),
(9, '0', 'AG', 'Bagacay'),
(10, '0', 'AR', 'Bagong Lipunan'),
(11, '0', 'AM', 'Baja'),
(12, '0', 'AW', 'Balud'),
(13, '0', 'AU', 'Bante'),
(14, '0', 'AT', 'Bantian'),
(15, '0', 'AZ', 'Basud'),
(16, '0', 'BS', 'Bayo'),
(17, '0', 'BH', 'Begaho'),
(18, '0', 'BD', 'Binaliw'),
(19, '0', 'BB', 'Bontay'),
(20, '0', 'BY', 'Buenavista'),
(21, '0', 'BE', 'Bugtong'),
(22, '0', 'BZ', 'Cabacungan'),
(23, '0', 'BJ', 'Cabatuan'),
(24, '0', 'BM', 'Cabicahan'),
(25, '0', 'BT', 'Cabugawan'),
(26, '0', 'BO', 'Cacaransan'),
(27, '0', 'BA', 'Cag-anahaw'),
(28, '0', 'BW', 'Cag-anibong'),
(29, '0', 'BV', 'Cagbanayacao'),
(30, '0', 'BR', 'Cagbayang'),
(31, '0', 'IO', 'Cagbilwang'),
(32, '0', 'BN', 'Cagboborac'),
(33, '0', 'BG', 'Caglanipao Sur'),
(34, '0', 'BF', 'Cagmanipes Norte'),
(35, '0', 'BI', 'Cagmanipes Sur'),
(36, '0', 'KH', 'Cagnipa'),
(37, '0', 'CM', 'Cag-olango'),
(38, '0', 'CA', 'Cagsalaosao'),
(39, '0', 'CV', 'Cahumpan'),
(40, '0', 'KY', 'Calocnayan'),
(41, '0', 'CF', 'Cangumaod'),
(42, '0', 'TD', 'Canhumadac'),
(43, '0', 'CL', 'Capacuhan'),
(44, '0', 'CN', 'Capoocan'),
(45, '0', 'CX', 'Carayman'),
(46, '0', 'CC', 'Carmen'),
(47, '0', 'CO', 'Catabunan'),
(48, '0', 'KM', 'Caybago'),
(49, '0', 'CG', 'Central'),
(50, '0', 'CK', 'Cogon'),
(51, '0', 'CR', 'Dagum'),
(52, '0', 'HR', 'Danao I'),
(53, '0', 'CU', 'Danao II'),
(54, '0', 'CY', 'Dawo'),
(55, '0', 'CZ', 'De Victoria'),
(56, '0', 'DK', 'Dinabongan'),
(57, '0', 'DJ', 'Dinagan'),
(58, '0', 'DM', 'Dinawacan'),
(59, '0', 'DO', 'Esperanza'),
(60, '0', 'TP', 'Gabay'),
(61, '0', 'EC', 'Gadgaran'),
(62, '0', 'EG', 'Gasdo'),
(63, '0', 'SV', 'Geraga-an'),
(64, '0', 'GQ', 'Guinbaoyan Norte'),
(65, '0', 'ER', 'Guinbaoyan Sur'),
(66, '0', 'EE', 'Guin-on'),
(67, '0', 'ET', 'Hamorawon'),
(68, '0', 'FK', 'Helino'),
(69, '0', 'FO', 'Hibabngan'),
(70, '0', 'FJ', 'Hibatang'),
(71, '0', 'FI', 'Higasaan'),
(72, '0', 'FR', 'Himalandrog'),
(73, '0', 'FX', 'Hugon Rosales'),
(74, '0', 'GF', 'Jacinto'),
(75, '0', 'PF', 'Jimautan'),
(76, '0', 'TF', 'Jose Roño'),
(77, '0', 'GA', 'Kalilihan'),
(78, '0', 'GM', 'Kili-kili'),
(79, '0', 'GE', 'La Paz'),
(80, '0', 'DE', 'Langoyon'),
(81, '0', 'GH', 'Lapaan'),
(82, '0', 'GI', 'Libertad'),
(83, '0', 'GK', 'Limarayon'),
(84, '0', 'GR', 'Longsob'),
(85, '0', 'GL', 'Lonoy'),
(86, '0', 'GD', 'Looc'),
(87, '0', 'GP', 'Mabini I'),
(88, '0', 'GU', 'Mabini II'),
(89, '0', 'GT', 'Macatingog'),
(90, '0', 'GN', 'Mag-ubay'),
(91, '0', 'GW', 'Manguinoo'),
(92, '0', 'GY', 'Malaga'),
(93, '0', 'HT', 'Malajog'),
(94, '0', 'HM', 'Malayog'),
(95, '0', 'HN', 'Malopalo'),
(96, '0', 'HK', 'Mancol'),
(97, '0', 'HU', 'Mantaong'),
(98, '0', 'IS', 'Manuel Barral Sr.'),
(99, '0', 'IN', 'Marcatubig'),
(100, '0', 'IM', 'Matobato'),
(101, '0', 'ID', 'Mawacat'),
(102, '0', 'IR', 'Maybog'),
(103, '0', 'IQ', 'Maysalong'),
(104, '0', 'IE', 'Migara'),
(105, '0', 'IL', 'Nabang'),
(106, '0', 'IT', 'Naga'),
(107, '0', 'CI', 'Nag-uma'),
(108, '0', 'JE', 'Navarro'),
(109, '0', 'JM', 'Nijaga'),
(110, '0', 'JP', 'Obo-ob'),
(111, '0', 'JO', 'Obrero'),
(112, '0', 'KZ', 'Olera'),
(113, '0', 'KE', 'Oquendo'),
(114, '0', 'KI', 'Osmeña'),
(115, '0', 'KP', 'Pagbalican'),
(116, '0', 'KR', 'Palanas Cara'),
(117, '0', 'XK', 'Palanogan'),
(118, '0', 'KW', 'Panlayahan'),
(119, '0', 'KG', 'Panonongon'),
(120, '0', 'LA', 'Panoypoy'),
(121, '0', 'LV', 'Patong'),
(122, '0', 'LB', 'Payahan'),
(123, '0', 'LS', 'Peña'),
(124, '0', 'LR', 'Pilar'),
(125, '0', 'LY', 'Pinamorotan'),
(126, '0', 'LI', 'Quezon'),
(127, '0', 'LT', 'Rawis'),
(128, '0', 'LU', 'Rizal I'),
(129, '0', 'MO', 'Rizal II'),
(130, '0', 'MK', 'Roxas I'),
(131, '0', 'MG', 'Roxas II'),
(132, '0', 'MW', 'Saljag (Baut)'),
(133, '0', 'MY', 'Salvacion'),
(134, '0', 'MV', 'San Antonio'),
(135, '0', 'ML', 'San Isidro'),
(136, '0', 'MT', 'San Joaquin'),
(137, '0', 'MH', 'San Jose'),
(138, '0', 'MQ', 'San Policarpo'),
(139, '0', 'MR', 'San Rufino'),
(140, '0', 'MU', 'Saputan'),
(141, '0', 'TY', 'Sigo'),
(142, '0', 'MX', 'Sinantan'),
(143, '0', 'FM', 'Sinidman Occ.'),
(144, '0', 'MD', 'Sinidman Or.'),
(145, '0', 'MC', 'Tabawan'),
(146, '0', 'MN', 'Talahiban'),
(147, '0', 'ME', 'Tanval'),
(148, '0', 'MS', 'Tapa-e'),
(149, '0', 'MA', 'Tarabucan'),
(150, '0', 'MZ', 'Tigbe'),
(151, '0', 'MM', 'Tinambacan Norte'),
(152, '0', 'NA', 'Tinambacan Sur'),
(153, '0', 'NR', 'Tinaplacan'),
(154, '0', 'NP', 'Tomaliquez'),
(155, '0', 'NL', 'Trinidad'),
(156, '0', 'AN', 'Victory'),
(157, '0', 'NC', 'Villahermosa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Accounting'),
(2, 'Auditing'),
(3, 'Banking and Financial Services'),
(4, 'CEO and General Management'),
(5, 'Community and Social Devt'),
(6, 'Creative and Design'),
(7, 'Education and Training'),
(8, 'Engineering and Construction'),
(9, 'Farming and Agribusiness'),
(10, 'Healthcare and Pharmaceutical'),
(11, 'HR & Administration'),
(12, 'IT and Telecoms'),
(13, 'Legal'),
(14, 'Manufacturing'),
(15, 'Marketing,Media and Brand'),
(16, 'Mining and Natural Resources'),
(17, 'Project & Programme Mngmnt'),
(18, 'Research,Science and Biotech'),
(19, 'Security'),
(20, 'Strategy and Consulting'),
(21, 'Tourism and Travel'),
(22, 'Trades and Services'),
(23, 'Transport and Logistics'),
(24, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id` int NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `supervisor_phone` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `closing_date` varchar(255) NOT NULL,
  `enc_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `title`, `city`, `barangay`, `category`, `type`, `experience`, `description`, `responsibility`, `requirements`, `company`, `date_posted`, `closing_date`, `enc_id`) VALUES
('1', 'Graphic Designer', 'Calbayog', 'Anislag', 'Creative and Design', 'Freelance', 'Expert', 'Graphic artist', 'Must work hard', '2 Valid ID, Police clearance, NBI clearance', 'CM964163437', 'May 12, 2022', '30/12/2022', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_applications`
--

CREATE TABLE `tbl_job_applications` (
  `id` int NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `speak` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `writing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_attachments`
--

CREATE TABLE `tbl_other_attachments` (
  `id` int NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `attachment` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professional_qualification`
--

CREATE TABLE `tbl_professional_qualification` (
  `id` int NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referees`
--

CREATE TABLE `tbl_referees` (
  `id` int NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_mail` varchar(255) NOT NULL,
  `ref_title` varchar(255) NOT NULL,
  `ref_phone` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `review_id` bigint NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `ref_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `review_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `review` text NOT NULL,
  `rating` int NOT NULL,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`review_id`, `member_no`, `ref_no`, `review_title`, `review`, `rating`, `time`) VALUES
(31, 'EM151580324', 'CM964163437', 'dsa', 'dsa', 4, 1652376885),
(32, 'EM151580324', 'CM964163437', 'review 2', 'review 2', 2, 1652377905),
(33, 'EM151580324', 'CM964163437', 'sa', 'sa', 1, 1652379732),
(34, 'EM151580324', 'CM964163437', 'dsa', 'dsa', 1, 1652381763),
(38, 'CM16523869668613', 'EM151580324', 'test', 'test', 1, 1652387083),
(39, 'CM16523869668613', 'EM151580324', 'das', 'dsadsa', 1, 1652387122),
(40, 'CM16523869668613', 'EM151580324', 'ttest', 'ttasdsadas', 4, 1652388268);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tokens`
--

CREATE TABLE `tbl_tokens` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `member_no` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-',
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `bdate` varchar(255) NOT NULL DEFAULT '-',
  `bmonth` varchar(255) NOT NULL DEFAULT '-',
  `byear` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL DEFAULT '-',
  `title` varchar(255) NOT NULL DEFAULT 'Your professional',
  `city` varchar(255) NOT NULL DEFAULT '-',
  `street` varchar(255) NOT NULL DEFAULT '-',
  `zip` varchar(255) NOT NULL DEFAULT '-',
  `barangay` varchar(255) NOT NULL DEFAULT '-',
  `phone` varchar(255) NOT NULL DEFAULT '-',
  `about` longtext,
  `avatar` longblob,
  `services` longtext,
  `expertise` longtext,
  `people` varchar(255) NOT NULL DEFAULT '-',
  `last_login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`member_no`, `first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `barangay`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`) VALUES
('CM16523869668613', 'Company', '-', '-', '-', '-', '-', 'test@company.ph', '-', 'Software', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '12-05-2022 11:05 PM [EAT +03:00]', 'employer', '-', '16d7a4fca7442dda3ad93c9a726597e4'),
('CM964163437', 'James Cailo', '', '-', '-', '-', '-', 'jamescailo@gmail.com', '-', 'Businessman', 'Calbayog', 'Maharlika Highway', '6710', 'Anislag', '-', '', 0x89504e470d0a1a0a0000000d49484452000000ed000000d508030000008cba877d0000008d504c5445000000ffffffe5e5e5e4e4e4e6e6e6e3e3e3f3f3f3f1f1f1f6f6f6eeeeeeebebebfafafafcfcfcf5f5f5747474d5d5d5dcdcdcc3c3c3bbbbbb8b8b8ba9a9a9828282c9c9c9b4b4b42525259797976f6f6f7b7b7baeaeae909090d8d8d8a0a0a03d3d3d9a9a9a1919194747476565655353535c5c5c1f1f1f313131383838121212555555606060353535232323c53d24da0000134e49444154789cd55d6b43db3a0f8e13378973e152a085022b8cb131d8d9ffff79afed3889e3f86e15f6eac3d1a007554a224b96a52719a254608c29eb286f286f739c13ca6bca2bca7bca4bca2bca6bca09e52de50dc64527381383b998e6f2787376f6e38cd2d5d5f17abfdf6f2fcf2f86ff2f545c01ac5d06298f90fd2133d1cbfdf539e9fe416b0b4f79f9206f54ebdb8dd1d4910e9783581f71b9c1da48edf2d9da5cc8cb17f20aa3bc62212f67f25ab7ad9c1e1be2238eaa978fd60268c7c5e1aca0c47ed8140597493997b929365c26e54c664979cf6451ce643645b1e904677f5e3ef8d9cae8ca2d0e0bbe81d16e14970d4b0b7f5e1a8b779494f716eff8e16f2ca57d87ede2149f4dd56e14c7accd97de91ebbc43234f7a5eeadb2063b3ecb5682ce216d6a66bb7b496cbc1e2aa499cc9eb29e7f228e7f228e7f22817570fa3fe3dd0584abbca244ea8c7ef298076b2b84cf20a24bc62f48e5a78474f395f07845710ea05adec1de1b652da760671a39315b3efa66827892b20e2ed5b94b5d9b1faea781bb3c69b130a07ed49610d192b6bd32210b3b6a3841b7ad566de524ee88f35e515e53de525e525e53de584f2baeb10e32ddac71a4b7d97acc4514e95c0f4d708370d4689da2dc53596785b68235aa144b44dbcb159d697aa38ef78eba71d70bcad7fa658fb4a17d74f8eb7b98868d6fc4c92b770b6f31463e94a4572abef1669daa9e232fa3437f4b16e25cebd8272ee159473afa09c79454579cdbc8372e6152f69d66678216ee2429b2e4dbb953847bc2df8aa3746b4428d68f832d1589633c7c75b8776c0f1362f93bc9653f9f9f136175e910bafc88557e4833cca0779a393e58357e06fc9c6668fb338ca0727cbc5166de0b1daadc5e5594b893fd6032794d58233afa828675e510ade53cebd837252dda55b9ba1499cc429eb24ada2b4d388cba8e54344cb4544cb4544cb4544cbb9779445ce235a45f910d172ea15a15b1f1d6d5b216ee4fcb1137c13af9d4e5c4abced2e008ccdee91c6d94e156fd9e3ece11df4ea15bde21de80861ed776471b64dbc763a7119a1c47d77e0b5e03d6595e0dc2b04af28ef07dea057086bb34d3788e34e267149ab18ed74e2328357349257d055af2825af20c22b4a1063b3eb6676b24e72327adf3609da69c4e529f136316b1ce99e7c6ebcdd3823da78f5165e115066b4d153650c909b04edb4f1b6a6c47c57f08ab25ee225e5a5c47bcaab8123cf02b293aa8558591b950768a71597e5d3eaa78f68c514d10a25a291b0aaaa99ca6580143764bcaf91da69c525c4dbe0b2aa89be7d7ebc357b877af546efa8818ccd765a671bef6da4765a715945a9eefb5ec3cbbaaf4b0def29a7ac83b2f6a165e22afaa55a1ea79d4e5cbf5893d58856ac225a214534306bef1aad9315ca9a1ca69d4e5c4abc054a2ed8a9df97c4db8dde2b34578f7905c89e80d14da3753235de8669a7139767bdf00289975ebc06d8ca0f74d54e627b8957330fd74e2f6eb5268fde5118235a3144340c9438f2dad41420f355bc8dd34e2f2e21de425afb55f176f60eebd5230506f3dbe785b339eeada7767a7159194d60d9c5b18d57228c0c6b72e1b3ea4159fbd0686f84794df6d24e232e697f0b65edf66be3ad3b5be1572ff2947a453b716853f8dd5b4fed34e2f2acd247378f68d6a61f140cd4d4b6581ba99d569c650f645ff56842137d28af50b7d8b458d7647fedf46b727cbc6d9e618cfd4fe36c278cb763e5d6b33a30662b0d483939cbce904fed22543b7ded82976cd8ae91557a2aa2f2a1e2b3e67d5db7c9c799031deb4a149204af661eaf9d4e5ce5a839ea573de11540db82f7e920ddbe070ad44ebb0792bc2334a261186bb32bf245f1d6558d5f54077640d6feaa1c670551da69cf0af8399028b70a5eb5a26a2b78d9d6ada8dab6a26acb4e5a4aa0558a06dcb69ac5325f6d89c4e3b4d389ab3dcef896abde7c8ad65c43597be1ac39866ba7af3926c4db2da4b59f1d6f5da7df6a351e6e838b2d67f3b1dae9cfe697a7a3cdc8f9e9a8e025e5a5e0436703e75d0e662d3f74a55fbe386c55ce7003b5d389239e3d3585ae6b05aaa0fc5f6f3de38bd44e7bc627794768446b61cee6b39bcf8eb7a2db2c17dd664a44dbe84fbfab7b186bf7581f20e7be9a18ed34e2f24cee4692f8d049387425955d2b3a095bde49c87c96752175408b72333424d642ecd8dca4f44c856aa711d706f4b0166a976807933ade22881ed69576da1ed6a4fe64106b0f1a673b55bc75f79e17727777b5e8eefe0361edc3242ea6f7dca29da6f75ce90226215dc00424533e579a8aa5de649ca29da6d539706a71e9153087231576cd8cc469a79b1991bc233ca255bfd28d3db49fdc9f6ce9eeb64f533557e9d65e96f1bde7c1b35e7c4d66d336584cdbb00939366d3370362957a24e4cca75c3a41c9fb6c1b8ed509f6e6d358beb86c13b892769b712d749339a7aef58aff10bef48eec7de367e339a51da99663463235a9f383472493e751e2874d64b9d5e2609e6be1d4b0c3bebe59aad66ffc9c5aa974f578e4fb7d662ba75f08e61ba95cb9ca75b732a731f65efc7f96e5336f55adcc4471f4bd34e16679fd134aff10bafe863eeef8ea9691d8476cd687a6a278903c1bbc031f5b8f6cbf02e0c11ad354d2f6f9488968757a8be5bc4f9c55b6fede4781b5a61d59f3f7c0fb5f68578b5618656585d5d9dd8803ae05ee30be97909ae62fcac6ce29c980861da69e36da03cd93b8207ac0f2b6b5df13641bbf0fd6d61dd410657317e10af0da9effed6aedd32ded2bfc997ebc026701d20a18817f741ab54a276a0081094f7a1c5d633af90f1a908102e7973fc0edefafdb08a4bcc2e5c884b6a6e6694d72fafde989b35a15d0907ab38edbd8dd76ebeb740884ba1359b3fe4ff19712914abe6837c31e292ef7e599b7b97816d806f75611317bf9b3f39e21293177a26748b486911d76050c4a5511c04e212f78ac0fce2054d302bff67884bc3aa1716830e6ca9f9aa780b81aa17b40fbae67ab820924031fff084b8349c3d48dc8a69d4704c23cedbe9080305a11135839799c5cd1c443b7132125885b3e4dd213d36afec6f500db02bf0d50e34de7227f31f3fbee0d6f65f106f01318d7ce78fafb9b1a8751e55fd03884bc23b34e786e87788b1f4e6dac545212ed9c4a5212ea9110d5741c6a287ce2aeedf425cd244348feae37e32169d6dede2fe29c4a575ff9587b597b3b1d4cf8955dca9109788c46b8165148869c4febc754e567c938c452fd95fd13aa017d7c06a1782b8e4d137d921d78cd0463696a55fbf496b141782b8e4d7d509196fbbde31ff75db2f8ce5738f6fc4240ec1c7db04c4a59577b80e0d5eba85b1e32cfab9d9d94e84b8544b7cc432d2611a9533a61111fdb0136fb17db6ef80141a53cd2b54ebc4cd1c443b057109a5ce2934d66cea4a35163d4e9f6d75e2726d5767d21485e41da9118d3d74e635590ab323494bdaafeb9aae9ad69ae3e911977ce78b066b0b4bedf17c6dacd226f9f478c97db4f1465c0ad32e0d7169c1f99f172b0b46ba6d34c66aea944f37db4dd5d67d5b83212e55240971c93c17c8fef1b836816e673b8db1c854717f797cd8355523ee2b98760838de32d2f58bddeb6c45f6edf0ed9fe7ed05aa696604a85dc2b4f1faf49bfd42037bb85e8c07f22941ffbc7fded3dbd43438593b2410972267b6d77fc68d78f23436a06bf0d7d9f5b7b6ab13b58b465cd2cee1f3cbbd5a7c6e0cc61addd6407f6f761549d02e7542468d688dc88217d5b8550235513888deed758276ab781b8e9f217b4537192635e0bf1a8d4551bdcdcf2c298ad16e465c62a0268245f2be450fec047aa06eea4bb8351b1b0986ff7edec56b1b8bb824e3a3b01f59e7eee364c934874cccd646cf241c13507952e36d43c8c571e8739cab6b63ff942e5d1ce929d6daec0e1271c9fbde323917d787e9b1dd49b67c57cc5f51cae4d456f5dd53232ef56d87f0fe6cb1d2f03bb9b9e69b1db65137a4500369334c5faafb38ada3d664dcd4cd767d3c5da1f3fbc9c8cbecc3666c7867a44c479b76b63599fd2330de36fb7badae0200432ccde5d23af273f1631a32c85f8b76d10810abab8749fbedd178fa81d00763fa7b7a953dd5d28f89a3bb17b0884bba4cb4a74faaa5c38f351730feae3396dfcb7cbed369c6668f755c9eecbf076a9a0fab06cc5f7910d56c664501673a2748058fb8ede3f640def196b85c8d07a0ffe83fb674bd7d3a3cecf06076b39bd7df3101499e41cff1491020c6abd7385b90b919f67cf0ed38f86e3abec0258e475c5a577cd4ca8f1b8754ecec2c3b9bd729fd48c76a3a6f757529537d6aaa4be97d56adeae56e405d71c2d39a3e7fb998dd381d31fd91af2cc13547e1b38e78db3ba7a89fec0bd0ad9c5642a005fea1ce98840061c634f278ebd1c3648a2ef378906d455e27f82e7a25b1884bae93168f9b31efedd6cbd9a15d188b6090237e20eb3950af3b07f29a0772dfda17c9183503b9440a01bde8e02e0471296022d51d1eef246396fbf45feb6382d4579f8d74de86c75be7e977e9d16a2defdb17cbf2adf214ab9fa7d02f9fb73320c9777dfa2edccd146c08512269017faf555bc1dec692f13814d677c19f62fbc9b7c793f77b618ee4e63bd5d4d5939e44041e71c90316fa6c61cefc07da022b147e6bc6133848040866ad47c7d7f3d29effc6df6b8ea811fa0b672ddd6ff5544bef5eb801d3487412b6a293b0159d842deb24241eef015282cc54c5d1151dc1deeac0e84856884b9d405c129cda24fa1cbd10977cd06515aba6656dabb1160af492d3530f8cb8d478605a2c9bbee664e9075a13180c24a78b12814ea4361ea98f1254e7e4f102ad087091a274cdac0c425c3277eeb32e604b9fcc448a41f35f684a72908b14cdc1bb758fb279ae60788aad9ddd1e8f9e6290342db3bab96099d440ef5d0e8bb8e43126ae5824f588ad0e0cc0103e05110c8bb8e4b141532cba357f04f55ebb8976381a71494cc8cdbca7bff6c86b97062d8a6c6aee08f55ebb91b62ae21212884b48202d098efc10977cbae7970615f2476adf0510c0e744ec4c081271a97543002c0d5a3cfabf146b818de53b6b48c4a5ee29d0dae56965bef82c742cd949ecd901415cca87e9d6ce3d5bbbb476b9435c56e040f346461f955893b1989bc7abb9797ebd7d31115a77a26c7b5897bb41c0cded404f152ce252ed0e418b832e65555b3a2e6cdec88840232e39bfb1900d5273af4afed06ff62d842e7010e292ebd4ab74a7b68bfc50bd7d8bcd2fb8b14c7c48c7ae1bd3c8f926a0c5fe560d5872f5153a6f1cc487202eb9ad75cec4cb09d3aa37e88ff4613034939b5e02acf5ea97729e15c8358a5522fc5dfa30a971c840adff93cc2d75ac52b933533e4a069d69d499c8decc10477b0c8bb8e46c0a915d73dd9b7a6efb309d0e041671c9891c2ca5fe9a7736cc755690b3cc153541d9852373ecb1f3de4a0b9166ff3af7dac31d8ac8b467567a658e5e0810ceae10e94053932ccdd702b6de387f3b28e292f38d2252d7b5f553e8adbca0730c89b8e4deb84c89b236cb9c3e7d023653d01909d9cdafd0a7e54a0df6b1761a23d63eabd38135b89d82186a8ba9522363634b3e6b4416c7ee6dda94286b9b6fc61004be951fe90a1071c903d16fcafcad9f02bdc14f43351ce292c7d9c8d854afcffac7f205f8567ea247bfeab9ed6464c44771f7864de9853ec48cd7629d548291ee5d1431884b7457f0e4fcb2f1304f3f49fe2c3ebdd57e0a42cfec7ec2202eb99bc3c690aafff4d1fa290c712c3e77bc75621a953ef76430c730f7220e8322c7bbfc688b7c119744838dbe13a1f17afbf8d0f967a8d7096bc15ee0a7a32764ef449811205c98461e5f36845443a812f38cc92faeb06b808110973cbe6bd8d5190e797eda963028ba6a8010977cbecbb60cbd9e7c49a6f4de83202ef53e09df1f9bb543ab36d4db0a4d744e201097bc56a9ccb2248bf804f42e64233d82202e955ef3fc6c17642a4d0c5547e85379957e43202e157ed6b25d907167685bb0e1a8f7435caa45a77dad74dad79c7bf92dcffc8d778f6fe79d270ea97459f30efb5ae9b417af486eebda678aa2f6aa9dddd8022aaf2887a2fc07d3cd00989886b8e471a2990d51c67812c0dbf3e0cc32d01bf289b78ee9a7d66f7941961d1db62c618054b9e2adc7645bebb7bc6c2ce71eec593a4d75754197ad63b2cde3fc163d797dd5d65252640bf689aaab32d1e4311571c91717f9ca622ddb3340cdc558e8a54f465cf25d5d5e2d675a3b7356094a0d0e465c5a4e92f7de3d3f16832e4f585d95e9bc4c455cf25e5d2ecc69fffe94d555891e921197bcdfbbb0375bfb70caeaaa448764c425ef17181fccd61e4f5a5d95c88cdac2efad13edc4bf33fecdec9a772013c61e44ac982e9a2e13e5fe06c0b7995df311bac1de445b9c84b88403caa2e69cebc67d040c43774d50bc553b887040d3a9f9993f9cb6ba3ad30fb2982657efad0b29cd734be052e2c4d5d59990ce8ad148c39a2ced81402a0e3f61aaab976e9c265225212e81a4b72f697852827e7bec2c766512e2128096acc40a21e558babdffae37ec7f4c884b72beec57a571d21b48efeaa6752f991f5d1ce2127f9a3dbaec7de82f8498efa8735f345ecc8d455c02da95de42645237a8f3400aac1cf1d656bbf8947d9a276d5147dc47493be4465c32606dd7a7e8278ea58baa9a27f28d74d7c7222eb9db393f91de2baa9d3b6cffa9621120c86765403ef451526bddb9ce6d1589b8949fb4512294ae9ac2c7dacc0371497ec7c5740e74fa939b10da766d5d7a58bbebcc6fdeb09cf1d52718f04820fa3c768dc70cff4314e212fe84a38c10ead8db433d6ec0bdbd3fd9602db93f9cfd43c4ce103bbc73ea74b8365bfb3f986f4cf409e5b1ad0000000049454e44ae426082, '', '', '1-10', '13-05-2022 07:05 AM [EAT +03:00]', 'employer', '-', '0cc91d9a3ac474d5fef59937c66a48aa');
INSERT INTO `tbl_users` (`member_no`, `first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `barangay`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`) VALUES
('EM151580324', 'Llynar', 'Labana', 'Male', '20', '06', '2000', 'llynarlabana@gmail.com', 'College Degree', 'Computer Science', 'Calbayog', 'Jd. Avelino ', '6710', 'Awang West', '+639561564981', 'I\'m a Computer Science student.', 0x89504e470d0a1a0a0000000d494844520000035c000003840806000000b5883086000080004944415478daecdd097c5d659dfff1bee62fd016daa494265d8022caae8083ace28c0b2a2a22a8880885023a2a8ab209569682e28233a3a0a0a36c5dd891b2afd22669f666e99ab649f7ecfbddf77bcef77feeb9290d50a04b72efb9e77e9e79bd07c4529b34b9f77cfb7b9eef33261289080000000030f2c6f049000000000002170000000010b80000000000042e0000000020700100000000810b0000000040e0020000000002170000000010b80000000000042e0000000020700100000000810b0000000040e0020000000002170000000010b80000000000042e0000000020700100000000810b0000000040e0020000000002170000000010b80000000000042e0000000020700100000000810b0000000040e0020000000002170000000010b80000000000042e0000000020700100000000810b0000000040e0020000000002170000000010b80000000000042e0000000020700100000000810b0000000040e0020000000002170000000010b80000000000042e00c02e0bef44282d1c1afacf91a1ffec5724d4a368708ba2feb58afa1a14f35629e659a2d8c06b8af72c52bced6125b6dea3c4c65f2bb1e12625375d67f9b1921bae5072fd7765acfd868cd567cb58f119998da7c9ac3f51e6b2a365d61e25b3e67099d587c9ac3a44aa9c61992a551c24955b96165826a6951f98fee7b662fbc79ad533ad7fff88f4cf557782f5739f6afd6f9c2963e55932d69c2363dd054a365f6afd5a7ea4e4e6eb9468f985129b7e65fd5aef56bcf541c53b9f52acef65eb6379d3fa982aec8fcdfe18ad8f35f531db1fbbfd7919fa9c85433b3e4feffadc85877dde0000042e00401e84a9e1e1607b80f259616240d15097152cdaac90d16c058e3a2b3cbda978ff338af73ea444f75d5628b951c9b55758e1e56b321a3f970e4a2b4e92b9f2e332575b0167cd47adbf9f29351e2cd55a01a87a8a158426a5435245a115880ad37f1daebc206de97b281f16b03ed07bfcfbdb0dffdf4dfd5aca0b877e6dd6afb1ca0a6d35d6afb9de0a6dcb0fb53e162bf4adb6c2dfca8fa53f46eb634d7dccc68a73accf8115d8b6dda044e79dd6e7e61ff6e728d6ff2feb73566f7dee5aaccf61abf5b9ecb43ea77dd6e7d66b090efb7dd85938e36b1400085c00801c0854c38254f89d532a7f3a08f89b14f3565a01e139c53b1e5062e36f94dc70ad92eb2f96d1fc4599eb4f96d970a41596a6a72748355628593629fdd7aa54384985978969a990539662fdb3b2c2610a8619fa314b1daa6cf8c730dcf08f65fb446d48ea7390fa5c545bff7dedd0e7a63cf5572bac351e697d0e3f697d2e3f6b494dd37e647d8e6f53bcf31fd6e77c91fdb9b72766a1f6f4b42c3c2c8085c3ef086604320020700100321caa22ef78280f5a0fea014542fdd6437c9bf530bf5ed1c17ac57a5fb31ef21f56a275ae925b66cb587f767a8b5dc31132571e2635ceb0c242517aca53be3d54140c4d7d86263f65c3feb9934353b603dbf6cfd5f6cf5ff9b0e959eac7a4266ab553eccf79ea739f0ab466ddbfcb58fb65ebf76696f57b34c70abf7f57ace735fbf7cefe3d4c05b2d0c0d0742cf88ea96484300600042e00c0c884ac9d6d3f0b5a0fe41d8a79cb14efb142d5e65b945c3b4bc6862fcb5c9fdae677547a3bdff6ad74a9494cd5f010f58e0914c1290353b4777cde53bf175543bf2fdbb7545abf67a9dfbbd4efa1d1fc1525d75daec496b9d6eff1038a7916db813a1dbe22ef715e8cef19002070010076e18c55d89e5a45039bac5055ad58cf0b4ab4de639f1b32367e5de6f28fa50b242aac07f965d6037bcd50b07ae7963ec24e8e06b3a1dfc7d4d6c5d4ef6d5deacc59eaf778b2ccc663adaf8173946cbd5e89b6bb15eb7d4131df3245839bd3934ece890100810b000857c31e86edc28a1e2b5c6d566cb05af1fe2794d8769b92abbe932ea5587d8cf5d7545bdf41c3ca1e0ade5d14c1a4cabddb15dff6fb3bacfca3eaa074c1c7cae3acbf9e2ea3e902eb6be756c5fb1eb3be96aaacafa92d8adacd8abe9d7cedf1bd0800042e00704db01af69fc35eeb41789df540fc86e2edf72ab9e167329abf2eb3e904a9667a7aa2513dac9dcf9e5415b2fd0f3b9f866dffdab04b3d86be766a52051ed364ae39defada3ad7fa1abb265ddae159627ded35a79b1377f6b54910030002170038bfd062589945a8d77ac06db1c255a55d6091dc6685abb567cbac3f323db5aa3e68587d79e1b03a730205f6d6b0afa95410ab9d929e86d51d952eebd8f613eb6bf241c5062aacafd10df6d7eabbcb39d88e0800042e007054a945c83e77151f784689b63b955c77918ce64f590fb987a51f7c53e7702adf519b4e3840462662053b4a532a776c4d35eb67da5fa3c9f51729d1fe5b2b80bda868a8f5ede7bfc24cbf0080c00500192fb6082a1adcaa98a74cf18efb95dcfa1399ab4f4e9fb54a6debaaddfe805b48b082b38358d9d024ac66e87eb1ca29d6d7f229f6d774bcfd3efb6b3cf5b5be6302c61d610040e00280919e608506ed8b8363834b15ef7d50c9962b642cff94cc95475ae1aa385d62f0d6b9ab89842ce468f89ab8e33c987d7f5891fd356e349ca164d32cc5bb5367c12aadef85d4c5cd839cff0200021700ecc5f6c070b762de1ac5b7fe59c9e6cb65ae3d59aa996a3d844e4a57762f9dc87d56c893fbc326a6bfe65377bad54db7ef0a4bb65c697f6fc4bcb5f6f7cadb8317210c00085c0008586f6b0ff4db9709473df58a772f5472eb0f65ae3a5d66e36176fdf6db8b2d781847be57d50f7d2fa4aae91b3f2c73e5e94a6ef981e25d0badefa13aeb7ba9f33d4a3878ed0140e00280fc9a64857a15eb7b4189cd7364b47c4de68aa3a4ca03ad07c9ed5b0429b700deb70d717b1362ea7bc6fade497d0f191bbea144dbaf151b7cddfa1eebd7bb2ef6e6b50800810b00dc5676b1fd2c568ff51058a178dbdf646cfeb6ccba99e9928b6a0a2e80116d441c2ae130eb0e95b1e99b4ab4dea3d840a9a2a1ae9d6ce1e5b50a00810b0072b8eca24db1fe57ac07bedb64acfc427a8a555394aec65e5a306c9b140fcbc0884ebfb67f6fa5bed752db0f971f2963d5e7adefc5b9d6f7e4cb43e51b1ea65f00085c00e07ca97358dbef0df22bea5faf78d702fb60bfb9ee142b600dd5b5bff52048c002b232f94afd7dea7bb166b2ccb5a72ab9f12ac5bb1f5334b0defede4d7f0f33f90240e00200e7945e84838a867b14f5365a21eb21191bbe2db3e118a9ae98b20bc0d1016ce8aca4f5bd6a361e2ba3e5dbd6f7f0838a7a1aededbfa9ef6d4a370010b80020d3412bbce3ec47d4bf46f1cefb94dc70a1cc951f932a260ddb2a48c802726afa65176f4cb2bf97932ddfb1c2d7df150d34efe47b9fd74200042e001885e28bd403d78062de4a25da7e2763cde7a5722b60d50e4db1ecd20b1e5e81dcbfff6b68f2952adea83e48c6867395e8f883629e8a77b41e12be0010b800602f8b2f2ca13e45bdab14effa8b8c75e7a74b2fac873055140eaba6e64115706df146ea7bddfa9eb72be7d79d67bf16a45e1352af0d146e00207001c01e4db252c5174d8a77fc9f7daec36cfca8543329fda7dec30fdf03c8a3f0959a664fb45f0bcce54728d972a1e29d0f5aaf15ebacd78c00932f00042e0078fff20bafa2beb58a773f6a85ac0bac07aa63a4daa21d97abf2d009e09d972e2f2bb65e2b8e5572e3258af73c633794a65e4b28db0040e00280eddb80c27ec5bc4b95dc7cbdcca653a58ac93b8a2f085a0076a57023f59a513d45e6dad394dc7283f59a52316cea15e2f51600810b409e9dcd0a0d2a3658ae44dbef65ae39c57a509a245515507c0160ef0b3752af25d66b8ab9e65425daff47314ff5b0a917132f00042e006e3d9b15f6a52f24ee5e2063f5b7652e3fda7a309a2c550c1d8c27680118b1e035317de6b32a55b671ac92cddf55bcef6945039b765cb04cf80240e002e08a028cd08062fd8b95d874a3cc95c749b507a60fbeb365104026cb366aadf0b5e6dfadd7a2398a0d94daaf4d146d00207001c8cdb0952ac0f0a62e25be5fc6ba2fcb6c3c347d57567921210b40f6c257f9d0e5ca8d8759af4d5f49b71cfad6d91378421700021700e71760587f8d79ab95d83247e69a4f5a0f36c30b3078e003e0a0f0957a6d4a6d396c3a55896db72bea6d60e20580c005c099db06a3fe66c53bff2e63ed17a4ea03771460f06007c0f167be520d8705f6e5ca46f3b98a772f5434b081f00580c00520cb412b34a0a86f85121dbf93b9fa1469d954a9a270d81d393cc801c8a57bbd26a65fc3ea0f96b9ea34253aff4751ef4a45c2839610c10b00810b40064b30065e5772e3f765361e91de96534601060097dded555560bdc61d69bdd65d65bde6bd49c9060002178051ae74f7352bde3dcfde3668361c42010600f7d7cb0f156d980d87ca5877b6e23d8f2beadf34ec5265821700021780bd0c5bd1c06625da7e6b05ad33ed03e6e97bb3085a00f2e95eaf82f46b5f75918ca6cf29d1718fa2c1564217000217803d9d687914f3d628b9f52a99f587a60f942f2de472620084afd46b61756aea75b8925baeb65e2b97d9576110be0010b8007c40d00a2912ec556ca044c9962b65ae3866a80483f35900b0d3ed86d66ba4b9ea582537ff48314fa522a1be61d764f0de0280c005e0ad228c3efb6c82d172a1543f7dc7b641265a00f0c1db0d2b2d75072bd97cb1e2bdcf58afa9834cbc0010b8001a07838a06b728def90f194d5fb482d6348a3000606faae553afa10dd365347f5df1ee47add7d8ad8a8483042f80c005203f275af364ac3b4baa99421106008c64ad7cb9a5a648c6fa54b3e142eb35b79f891740e002901f8d831b146fbf57e6ea13ac8701b60d02c0a8dfe755933ae7f5097b3741aaf595e00510b800b82d688503d69bfc16c5bbfe2263cd99f69fbada7ffa4ad00280cc9cf34abde62e2b96b1fa3f15efb68257709bbdad3b120ef13e0510b800e4f4442bd8aa44dbef65369d2a5515ec38e0cd4310006467e2555d28a3e9d38a77fc59d15027132f80c00520f7825650d1c046253aff2873f529d69bfbe4f49b3c132d00704ea5fcb222eb35faf4f425caa9ad86946b00042e00b95086d1af78f7c3f69f9eaafa4082160038bad5b0c0fe433163dd6715ef5960bd860f30f102085c009cba753015b4ccd527d907b429c300801cbbcb2b55aed1749a15bc1e5334d43574be8be00510b80064316885ec37e578df5332d67e49aa9b46190600e47ab946fdc132d69da758df0b8a047becd77a821740e00290e9ad8361bfe2bd8b64349f272d9b3214b428c30000d7dce35557ac64cb77ade0f572bad190ad8600810b4026829647b1c1c54a6eb854aa9f61bd2917a6cf01f09002002e3ce365bdc6d71d62bde65fa198a7d47a0f18247801042e00232fbd9d24ea6f5172eb0d32577c54aa64a205007933f1b25ef3cd15472ab1e5e7760bedf66de5bc3f02042e007b3bd50a07ada0b54189adbf905977d8d05d5a042d00c8cbe065bd07980d872bb1ed362b786da25803207001d8ab428c6087e21d7f95b1e64ceed20200ecb8c3abfa20196b3fab78d7438a8628d600085c0076f32ead41c5fa9eb782d617a49aa1a0c5392d00c03b8b356a27cb587f8e62032fdb677c2361ce7701042e00efb37dd0a7a8a741c98db364361cca440b00b04b132fb371a6921b2eb3de4396dbef25842e80c005e01d53add47d5a898edfc95cf571a982735a0080dd6c34b4de3bcc95c72bd17e9722f63643a65d00810b206c5941ab5bf1ae0764ae3881420c00c0c8146bac3851f1ee0556f0eae57c1740e002f275fb60ea3ead72192ddf92ea660c5d5cccc302006024eeefb24257fdc14a6eba48514fbdf59ee3257401042e208fb60f063629b1e5c6f4392db60f0200466bda95da66b8fca34335f2dbd8660810b800b76f1fec52bc6b9ecc55a74a9593095a0080cc4cbcaa0e92b1e20ceb3de81145823d842e80c005b871aab54ec98d1749b553d93e0800c87c9b61eabd67d90cebbd68b6a2fe0d4cbb000217e092cb8b035b9568bb43e6f29943db0779e3070064719b6165aa46fe70253aee5234d441f002085c408e862dfbf2e21764acfd925453c49d5a000047dddda565c532369dafd86069fad264421740e00272a91423b9f92aa97e3adb070100ce2ed568384c89ad3750aa0110b8805c986af529de3d4f66d36952d5244a3100003952aa71a08cd56728def39822c13e421740e0021c38d5f26f4c4fb5ea986a010072749b61dd0c25b7fed43e7f4ce802085c8043a65afd8ab7ff4566e3d1f64164a65a00809cde6658552073c5f18a773f68bdc771613240e002b215b4c27ec5bcf54ab6cc96eaa6528a01007057857ce3c14a6efaa9a2be35d6fb5ed07adf237801042e20830d84f6546bf9b1e9aaf7a54cb500002e9d76ad3959f1ae054cbb0002179089a95658314f8d92eb674935c54cb500007970b6ab50aa9ba6e4e6ffb2de03eb693204085cc068852dafe23d8b64ae3c5eaa2ce4ac160020bfa65dd59364aefe84627d2f5aef893e421740e002462a6805edfdebc9964ba46593095a0080fc0e5e75454a6efa2f45fd2dd6fb6488e00510b880bd3cabd5fb8c8c35a7db779470560b0080a17bbbd67d4eb1be57ec1d20842e80c005ecf659ad68609b925b7e2c354ce7ac1600003b693234eb0f5562db2d8a047b38db0510b8805d9d6a79ed3fb1339a3e9b9e6ab185100080f739db75908c967314f32ce16c1740e0023e780b61a2f31e992b8e4adf41c2540b00800f9e765514c85c759ce29d7f658b2140e0027612b422a9baf75a191b2e906a0a986a0100b02767bbaa0b94dc7091a29e060a35000217b063aa15eb7b56e6f2e387b610f2a60900c01e4fbbaa26cb5cf949c5fa5f63da0510b890ef53ad68b055c92dd74b0d33d2532dc21600007b1fba9616c85c3e5389b65f2b1aea267481c005e45f0ba15fb1c1a532d67fc1fe9338eade010018852d863545325abea9a8b7de7aef0df00c020217902f93ad78f7c332579d28951732d5020060345b0c53851a4da72adef304932e10b800770b29eadfa4e4d6ebed43bd4cb50000c86ca14662eb8d8a06b60e156af06c020217e0a22d8441c53ccb64acfb9a543b85a9160000d938db555b24a3f95b8a7a96dbefcd4cbc40e0025c11b6bcf6360673c57143776b31d9020020ab5b0cd77c42b1bee7ec33d5842e10b8801c0e5bd160bb929baf91597f487a3b03932d00009cd162d878b8125b6f5324d863052f4217085c40ee9dd7f236d9972faa6222e7b5000070e4b9ae0395dc7295a2c16d9ceb02810bc819a9caf7dee765ae3ac10a5bb4100200e0e86997bdc5f054c5fa5f678b21085c80e3cf6b850614effcabccc68f50f90e0040ce84ae42ebbdfb48c5bbeeb7decb07095d207001ce9b6a85ec9bec939b7e2cd54da3180300805c2cd46898a6e4d66b1509f6d9efed3ce380c00538e422e398b75646cbf952f564ce6b010090cbe7ba6a0e92d17ca1a29efab7dee779de01810bc85ad80a2ad6f7a6cc35a70f55bef366050040ce6f31ac2c94b1f64cc53c5543651a842e10b8802c9cd7ea53a2e36e6979aaf2bd90372800005c551d9f3ad73553f1ce07ec33da842e10b8804c86ad609f7dbf96964d670b2100002ede6268d61daac4d69b095d20700119bbccd8d7a2e4c62ba5ea02ca310000c887328daa42255b7fa2686033a10b042e60f49a08038a0d56c858f3d9743906e7b50000c89f2d86d67bbfd174b6629e65f63301cf46207001233cd98a0dbe2973d5bf7399310000795ba631297d49f24019932e10b880113baf15f629d1f147990d8748a5bce1000090f7e7baea0f53bced6fd6334290e0050217b057e7b5829d4ab4fd4e6aa01c0300000c2fd33844f1f67b1409f6704932085cc01e85ad40ab921bae906a27538e010000de5da6b1ac58c9cd572b1aea64d2050217b07b4d84ab65349f2f554d66b2050000de73d2a5ea83946cbed07a765847e802810bd8a5b0e54d85adaf4a150594630000800f9e745516cad870bea2fef5842e10b880f72ec7f02bd65f2273c5d13411020080dd6c302c94b9e678c5062b876ae3095e20700143f76ba59b08e3bd4fc95c79a2544ed80200007b10ba2aacd0b5fa64c57a9fb7ff2097d0050217604fb6bc8a77fc4de6b2999cd70200007ba7dc0a5d0d872bdebdc0fe035d4217085cc8efb015ec55a2fd3752ed54c216000018218552fdc1e9daf8503fa10b042ee4eb642bacc4b65f582f88d3a87d070000235fa6513f4389f63b870217a10b042ee4d585c66d4a6efeb1545b40d8020000a317baac678dc4e61b140d7411ba40e0423e08a5c3d6c6ef592f80c594630000800c84ae622537fdd87a06e9b29f45781e03810bee0d5bfe8d329a2f90aa2733d9020000990b5da90b92375e66ffc12f932e10b8e0ceb0e56994b1f61ceb05ef400a320000408615d87fe06b345fa8a8af89d00502175c16b67ccd329afe43aa9a44d8020000599c7459a16bedd98a065ad95e080217dc11b662032532579e24951770660b0000643974592a0a64347d4631cf324217085cc861e1a0f542562173d569e9a916610b000038267415ca58fd19453d75d6734b90e73610b8906b612ba4d8e0522b6c7d82b00500009c19baca0bac67955315f3d430e902810bb974a1b115b6fa5f95b9fae4f436425ed401008083cb34ccd5a72936f026a10b042ee446e08a79ebac17ae8f71660b0000e4cc992e73e5898a7a5710ba40e082c3c356ff0b56d83a863bb60000406e852e8bb9eae3d6b3ccebf66e1d9eeb40e082c3ce6c05ec172873cd27a4f2425eb80100408e6e2ffca46203a576f917cf782070c14193add7acb0758cf54255c83642000090e3451a275aa1ab8ced852070c1010519dbb711ae196a23e4c51a0000b861d2b5eae4f4f6424217085cc8eaa5c67641c6b16c230400002e9c741dafa877f9d01f32f3ec070217321db652d5ef6b8ea320030000b853d5818a549ea9707b29451a20702193051941c50696da874ab9670b0000b8915979a082af1faaae053334f8d26714e969a04803042e64226c8514f354ca5c3574668b820c0000e0bac9d624f95f3d549df3a7abfde129ea985f2cdf2b9f53b87715932e10b830cadb080796d8b7b15390010000dc3ad90a0c0b5b296d964e2b74795f3f47e11ece7481c085510a5b517f8bcc5543db08996c010000b7a99ca4e06b87aa6358d87a2b743d3445dd0ba65aa1eb2b8af83b095d20706164ebdfa3830d32d67c9a6d840000c0b561cbf7ca6156d89aa6f67953de15b8b687aeae05c50a2cf9a642fdeb095d207061a4265b1b65ac3fd7decf4cd8020000aedc46f8faa1e9b0f5f094f7d5f67091ba174e97bfec5245bceddcd3050217f672b2156c97d1f26da9fa40ce6d010000971664cc7cdb99ad5d095d3d8f4c97afec0a45fc5d4cba40e0c21e86ad40ab922d575a616b32932d000090170519bb1cba1e1a0a5dd5d759a1ab479130a10b042eec72f57bd8ae3c4db65c25d51671b1310000706741c6eb3b2fc8d89dd0d5fbd861f2d6cd1d9a7211ba40e0c22e4cb622c11e2536fe42aa2e246c010000771764ec61d81a5ea4d1ff68b142abffa47060804917085cf880c956c8a344fb9dd2b2e9842d000090d70519bb33e9ea7bf2a30aaebbdf7a96f231e902810bef31d90afb14effcab543f8d820c0000e0d2828cbddb46f89eacd0d5ffe4110a6d7ada0a5d7e4217085c78e774cbaf78f71332eb0e216c0100000a32f640c7bc620d3c739c825b5eb29ead823c5f82c0851dd3add8c012992b4e206c0100000a32f64a917c2f9da950572d532e10b83054ffee592973f9515239610b00005090b1b73ae717cbf3dc290af5b710ba40e0cafbb0e55b2d63c339524521776d010000d76d230c8e7041c6ae3617762e2856a8ecbb0a0f6c207411b8f824e46dd80a6e93b1fe3c2b6c1510b60000802b0b323a33b28d70e7a1ab7b61b1fce5df5338753132a18bc0857c0b5b1d4a6ebc42aa3c90b005000028c8188dd0f570ea62e443e45f3647e1403fa18bc085fc6924f429d17aa7547b102519000080828c510e5d834fcc54a0e97eeb192cc47328810bee17b2c2d6ff48f55c6c0c000028c8c8d8a4eba923e45df730a18bc005774fb6028af5bf21b37126932d0000404146461569e0996314eea8e08e2e0217dc3ad98a0d56c95cfdef842d0000e0ca820ca76c237cbfd0e57fe53f15ea6ee43c17810beeab7f5f2f63cde7d2f5efbc30030000d715644c7378d84aeb5a3055de37cf57c8b38dd045e0825bc25624d8a7e4c6cba5aac934120200000a32b2799eeba129ea7964867ccb6e50383040e82270c115616beb75522d171b0300000a329c11ba8ad4b3b05881c6df5acf6a5e9e59095cc8d9b0150e2ad1f127a96e068d840000c05ddb081d5d90b16ba16be0e96314dcf018532e021772b624a3ef4da97e062519000080820c8796680cfef368f9db9751174fe042ae4db76283d532579f46d80200002e2cc87043d84addcf65fd757eb1065efa8242ddcb095d042ee44c2361a85bc6faf3a44a1a0901000005194e2fd1e89a57246fc9258a04fad85e48e082e3cf6d850694dcf423a9ea404a32000000051939d35c385dfeda5f281cf410ba085c70acb04ff1f6bf4975d3d84a0800005cb38d3098e30519bbb6bdb0489ea70f5768c323d6335d80e75a02171c5992d1bb4866c3476924040000ae2ac8e874d936c2f76b2ef43c7ba2c2eda54cb9085c70dcb92d6f93cc151f93ca39b705000028c8c8559df38be57be53f14f66c53244ce82270c119612bd0a664f377d225199cdb0200006e28c878cd7d0519bb5ca2b1a058a1da6b1409f430e9227021fb971b7b94dc722d610b0000b8af2063de94bc0b5c29ad7689c634051a7e653debf9095d042e64af2423a078d7a332eb0ea5240300005090e12a451a78fa68f95a9e5738448906810bd929c9f0d4ca5c7e2c610b00005090e146a9128de74e5638752972844b91095cc8ecb92dff26196bbf2a5510b60000000519eeac8a4f956814c95772b1c2de36b61612b890b1735b9190929baf936a8aa880070000b95f90f17a7e1664ec6a557cefa387c8577fe7d0948bd045e0c2289fdbf22bdef990545bc856420000e09e820cc2d5fb9ee7ea7b74aa429b9eb79e05833c0f13b8309ad3add84099cc151f67b205000028c8c8b3d035f8e26714e86c64ca45e0c2a89ddb0ab6ca68fa02971b030000171464cc54e73cb611eef6a5c88bbf93be9f8b4b91095c18e1735ba10125375f6fbd404de6be2d00004041465e9668a4ce731dac40e39d0a07bd4cba085c18c90af878cf22a97e3ae7b60000000519795ea2d1f7e4110a6c794d913055f1042e8cdc7d5b2b4e206c0100000a32604fbabc2f9ea150cf4a4217810b7bbf95705046cb0552d581bc500300000a3260dfcfd5bd70bafc4bafb49e15d95a48e0c29e87adb05789ce3f4935936825040000395c90c136c291df5a3845bd8f142bd43cdf0a5d7e4217810bbb7fdf5648b1de9764361e49d80200001464e0dd1e2a92e7b993146e5f4ae022706177c35634b84dc6bacf52010f00007276b2157883c9d668eb9a5f24df9bdf52c4df4be822706177ce6d25375e953eb745053c0000a02003efb7b5f0d119f2d5dd6657c587b99f8bc0850f9a6e0515effd67ba029ead84000020670b32986c65b22abeffc92314dafa8afd2cc93335810bef33dd8a7a57c95c7d3a15f0000020470b326672662b0b3ae615c9fbea590af53553154fe0c2fbb512269b6749956c25040000146460f7b616762d982e6ff98f692d2470e1bd8a32e2ddcf48cb2633dd0200003977668b6d844e50a481c70e5660cb6b042e0217de39dd8a0dd6c85c7e02e7b60000000519d8abf35cfe97cf54a87715a18bc0851dad84fd4aaebf58aaa0021e0000e462410661cb49ba174e93afea1a85831e45682d2470b19530a078dbbd526d31d32d0000906305199cd972ea85c87d4f1cae60cb13b41612b838b715f32c93b9fc18ce6d0100809c9a6c11b61c6e5eb17c2f9fa1705f135b0b095c79be95b079b65441d802000014646004cf72a5b6162e2892bffa3a4552172213ba085cf927a478eb3dd232b6120200000a32304a17223f75b8fc4d0f703717812b0f2f38f66f94d970145b09010000051918bd0b915355f1cffebb22de56b61612b8f2682b61b057c996aba4ca422e38060000146460542f44ee9e5fa440ed4d0a0706085d04ae3cb9e0b873be543b9dad8400002027265b01c2568e9fe72a52df934728b8e959021781cbfde7b6a2fe4d32579d269573e7160000a0200319da5a38bf58bed7bea488af93d045e072732be1a0921b7f648fe5d94a08000028c84026b716f63c325dbe65b72a1cf411ba085cee9c6ec57a9f97ead84a0800009cbf8d304441862befe61afce7310ab59711b8085c6e6c25dc2c63cd595239610b000038bf20836d84eed439bf489e372e50d8db41e82270b92b7025b6de26d54ca1061e000038bc20632605192e2fd0e87df4100556fc211db8c2842e02971ba65bde75326b6712b6000080a3cf6c8528c8c813451a78fa2845063731e52270b9206c05bb946cbe287de7162fe6000080820c38a040a3735e917c4b7fa0b0bf97d045e0caeda20cfbcead65d328ca0000008edd4618a420230f4357917a9ff888429b1611b8085cb97bc171d4b751e6aa5329ca0000008e2ec8e0cc569edecdf57091fcaf9da5888f020d02574edeb9e55162d3cfa5cac9dcb90500001c5a9041d8caf72957cfa333e46fbccb7a76f5f10c4fe0caade9566ca042e6b2c3d84a0800001c39d90abc414106d2ad85038b8e57a87b05532e02572e156574cb587b9e5441d80200001464c0d9bae6176970f1e50afbfb78962770e546e08a773e28d51d4c0d3c000070de3642aadfb1b3028dc78f50a0e509a65c04ae1c986e85ba652e3f81a20c0000e0c0820c2e35c67b1768785e3843910035f1042e27176584bd4a6cfdb5f58256c8740b00005090819cba9babe7916285d6dc932ed00813ba085c0e0c5c314fbdcce5c751940100001c75662bc83642ece2d642ef8ba729d4bb9a291781cb89d32d8f92eb2fa2280300005090819cd539df0a5de5570dd5c413ba085c4eaa81ef7d5e66c3a16c250400008ed946989e6c11b6b03b8a34f8cfa3156c5d623fe3f2ac4fe07244d88a06db65acfd02610b000038a82083335bd8c3028d79c5f2955ca4b0bf87291781cb09812ba878fbbd52cd8152192ff0000020fb932dc216f6f632e4dec70e51a0e571a65c042e07d4c0fb5a64acfa14d32d00004041065c34e52a92f7b5af283cb8952917812bbb812bb1658e543d99c005000028c880aba65c7d8fcd50a0e13743818bd045e0cac674cbdf22b3ee30c216007cd01627fbafa9d7ca77de5338c172405ad9fe3bfede3661d88f1bfeef7ec0cf63ff5c1ffcf3ecf835f1fb030a3280f72ad0e87ffa3845bc4cb9085cd9a8810f7994dc7abd5459c0d92d00488598f2c2f4dfa7c24ed938a964bccc25e3155b3c56d125058a2f9d21a3f228c52a4f51b0f273f2579f2b7fed77e4af9b257ffde50a2cffa1020d57da7fefafbbccfaef2eb47f4ca0ea4b8a549e21a3ea3825ca3f6c39ccfefb58f5e90a557f493eebc7f8ac1f1ba8bfd4faf72f4ffffb8ddf1bfa792eb17e9e6f5b3fcfd714b2fe3713d59f4cff1acaa62b5a325171ebd726ebd7a8d2f1e95fb31dd4260e7d2c843150900102977d1972c35cebd9d74be8227065f892e3dec532eb3fca25c700f250c18ea952d90419a5072869bd1626cb0e56b4e2134ad67f5ebee5df97bff96e25ba9f57b8af46c1c18dd69b75a78c58b7cc589ff5578f9231bf92f1a025ac642262890efd3592fe67a9ff2ef563625eebc7f75bff5e8f62912e5beaef4deb9f19d67ff7d6cf9348ff3c89ed3f87fdf384867e1e9ff5630787feb7bb150e765abfa60d8af6d72ad1f5acf56bfda3822bfe4bc986cfa53f06eb6349964d9459babffd31ee9892f19a0fe74db602afce246c61542f43f63c77a2429dd5042e0257262f39b6dee0d7cfe29263007938c5b28247c97e3217efab68c981f2577f45e175b72bd8f6ace203550afbbb6418499992c5b0fe5fd262c834537f9ffea7a9ff2cebbf33877e94ecbfdbf9dfa7a57f7cfadf7bfbcf91667ee0cf656eff79b6ff1cd6af25fd6b4aff1a4dfbd72325ad5f7bea63880f5629d4b648d1e65f2950fd65c54b26d91fb34af74b7f0e9616f2f500479cd90a5190810ce85e3055beaa9fd9eddc842e0257068414ef7e46aa9bce740b407e4cb24a0f90513a4ed1a5872bb4ec7c8537feb7fc5dd54a9ae9286307295b321d62ece892ab6b7b104bbef571a5fecfb0fe36d05d6b7dec7f50a4ee1b8a599f0bb364acf5b9d99fc91728c880ebb5a66ae29ffc8882dbde247011b832509411ec92b1eeeb3bce2a00802b83d604196513142b3b5ce1faf314d8f6a4a2be2625e37e2b7c6c9f1469d814caad6bd8c7677dcca98fddb03e0731ff5a85db1729d2f82dc5adf065944e7847390730badb0843146420d335f1f38be52bbb5c617f2fa18bc035dad3ad27a5da29fc692600974eb3c6d9dbe782b55f5368cb3f140db42969a4b6040edfca97e76bd8b644c3fadcc4836d8a6c7b58e1ba7395282d94cac633f5c2a81764b08d10d928d0187872a6825b5ee2326402d7684eb7b6c958f345de4401b86f9a553a41d1ca8f2bb0fa3a453cab9488fbd2739d9cdf22988109d850084d4dff62be350a35dda0b8f5b9344b270c156ef09e81919b6cd146886c5f86ec79f39b8af83a997211b8462770c5bb1e92eaa6f1e609c01dcaadd7b2927d152e3b4ac196bb15f56f92619a84acbd0c5fa9cf61ccfa5c4636ddab58f951d2927df95a030519704d6361ff93872bb4e171a65c04aed1b877ab4fe6aa4fa41f5078e10790d3d213ad70e5c9f26f99af783c30ac0d9035322b1d5a938990c26d4f285675aa5d9fcf392f5090815cd7999a72bdf26945821ea65c04ae11124ed5c00714ef7850aae1224c0039be25a9ec00c5961ea5e086bb150bb5a6275aae2fbec86ee146eaff12e1764537dfa744e571d6efc1fe7c2d62b7b6110629c88093a65c0f17a9ef91a90a6f7a7aa8269ebc40e01a89b35bfe8d329afe532aa39910408e9ed3b21ef26325450aaefeb9a2818e1d2518ac0c6e3734150f752ab2ee1625caa6dabf27fc211e76a52083335b7062e80abc798e22de6d4cb9085c23d34c9868fba3543dd97a73e4c51f40ee49961628b4ec2b0a0f2c97918c0d5d40ccca4eee4a351bc615f3ae51b4fe1c19dce788f7996c05085b70ec59ae29ea7d748602ebee4fef06233310b8f6266c45035b65ae38957bb700e460fbe0fe8a97142bb0e1cf8a470739a3e5b0335ec9b857912d7f53d29e768d67da85b79dd90a5290811cb897abefd5b314f17733e52270edcdf9ad8012db7ecb740b40ce314a2628b4ec5c457c2d9cd172f819af58608ba28de70d5d9eccd72e616b92fc14642047a65cfd8f1fa260d35f39cb45e0dabbb35be6aa53f8534700b9a36c8212259314587f97e2e17ec2568e84ae64b45f914dff2ba3ec40ebf7f100be8e29c8e0811eb9615eb1bcaf9ca5b0671b35f104ae3dbc77abfd1ea98a664200b912b60e50a4fc58055b170d452c82562e05afd4ef56a4f345fbd2e4d4ef255fd3f958903193335bc8b97bb97a1f99aa50ea2c17db0a095cbb7d76cbdf2c63f5e9842d00b9b185d07a400fd57e5951df06996692fc92b39d1a8612c14d8a359c2bb38c2d86146400b9a048de97cf52787033051a04aeddb8e43835dd6abb57aa2996689002e0f0720cb3641f051b2e562cdc35342761e5fab42b11e95674e56cfbf7963ff8a3200370fa94abe7d199f2373dcc948bc0b51b812bd42773e5c7a472dee40038bcf2bd649c822d7f50321122a7b8adc730195174f31f65947051b29bc3968f820cb840e7bc22795ffa9422410fa18bc0f541ad8461bb9930def1b05453c09f2a0270f4642b5e5aa4e0fadfa5efd662b2e5ce735d465c914d7f4a5f94cc7b12051980a3efe52a5670f32285692c24707d603361608b8c359f672b21006787ad92c90a6c5e28c330085b2e0f5d86612ab8f551254aa7f0b5efaa820cce6cc17d8d85c125df54c4d7ce948bc0f501cd849dff906aa670ef1600c78a974d5760cba3329209c256de84ae84426d4f29b1f460be0728c8001c7b96abeff1990a6e7c8ac045e07affb35b46d3e7a58a42de14003874b255a8c0c67fd8530fc2569e852ed35468eb434a941ec4f6c21c3eb315a220032ed635bf489ec51728cc592e02d7cecf6f8514ef7e4caa9bca7642008e9428394081ad4fb28d30cfb717fab72d527c0995f1146400ce9c720d3ef96105373ec745c804ae9d4cb7823d329a2f90ca996e0170de642b593a51c17573095b842efb6b6070cd6f142de10f0729c8009ca7635eb1fc65972aecef65ca45e07afb45c7b1fec5d2325aa00038f09eadd2fd146aba49c94484b0c54adfd3158faaabee668517efcbfb16051980b3a65c0f17a9ef890f2bdc51613f639333085c43db093d4aaebf42aae44d0b80c3fe64bc6c82420d97291e1d2467b0deb6a2d67b57cb1b5728b8d8fa5a29e77b85820cc029816b8aba17142950fd5345423e7206812b7d762b365029b3f168ce6e0170162b6c452a4f553cd441ba60ed74f93c9daa5d789a22a59ce972e299ad200519c8e3b35cdee74f52a4a7816d8504aeb02db9e547f60b2355f0009c24527ea4229e756c2364bdf7e642d354577b8b5ebefb6845cb27c864d2454106e00845ea5e384d81fa398a84c36904ae7cbee878b3ccfa43d9030fc051922513156a7f41a6912455b0de7719d6d74853c32b7afeb713142a9d2893ef1f87146430d902a1abefe9e314f17711b8f27aba15f629d1fa5ba9ba80e91600c7946418a513145873b34c265bacdd28d278e9d15bf4f4af26285e5140e8a2200370447946efc262f9d7fcd57ae60ee6f5d6c2bc0e5c51df7a196bcee0ec16000795648c57b8fe7cc523836c2564ed56e08a86bd5af0bfdfd0d377eca73093aeac4cb6085bc03bcc2b96f7b5b3151edc4ce0cad7c015ef9c27551dc4740b8063a65bb1d24315f1ac246cb1f6287475b5aed2eddf3f542fdd355eb10a4217051940b6cb33a6a87be1210ab43c45e0cacbed84a13e19ab3f2f5570d13100a75c6e5ca060eb537611028bb5872d1a5a5bb748732e99a027e612ba325b9041d80276a66b7eb1fa5f3d47e1c040de86ae31795b05dfffaacc8643d84e08c0215b09f757a8f1122e3766edf5942b7529f213f75daa9b2eda4f2ffd619cc2a513085da35e90411b21f07e15f1034f1da1705b89fd0c4ee0ca9be9d6a0921bbf2f9533dd02e08ce956b4fc18457d1b085bac11095d033d9bf4c7eb3fa65f5eba9f16fd66bce2e54cba28c800b2771172c7fc62f9abaf5138e8cdcb29d7987c9c6e453d0d321b3e62bd6012b800649f51324ec16da9ad8454c0b3462872a5aae2eb1769ce45fbea96cbd2a18b49d7c84eb602842d60b72ae2fbfff971857ad710b8f22370859568ffad5445153c00676c250c567f51c9a4c1748b358247b94cfbebe9e1df7f55b7ccda47bf9c95da5e385e71ce7451900164695b61cf8222859bee2370e54515bc7fbdccd52773760b8003142a513a55d1be32c2166b14a65ca6b63697ebd7df9fa63bae18a79b2fdd574fcc1d4791c65e862d3f0519c09e79688a065ffa8c229e2d7917bac6e4d5d92dbb0afeef52ed54021700073840b19a4f291ef1a49e8e4908ac119f72c5227efd6dee99ba6df63e9a7bf97ef699aed4a48bed857bb88d90820c60efca339efc88821b9e2070b95b4846d317a88207e088a20c958e5370ed5ca65bac510d5d4b9ebdd33ecb35f7f2b1ba7d287451a4b16705191df3986c017ba3737eb182a51710b8dc1cb662de6aa9fa40de380038427cc9fe8af4d731dd628d62e032d4b975b96ebd6cac3de1daee568a3476b32063260519c0083516f63d3a4391de86bc0a5d63f2663b61d8a7c49639e9b28ca56c2704e0802af88a139588f631e1628dea842be4efd3dd379ea4db66bf3d746ddf5ec8992e0a32804cb615f62e2892affe0e454281bc095d7913b8a2de35329b4e92cad84e08c001caf657b8e946194682c0c51acdc8657d8d25f5dae37374cba5fbbc2d706ddf5e4891c67b872d9f5d90c1992d6064a75cc50abefa6985fbd713b8dc16b8e29dffb05e3c27f30602c011d3ad64d92485da9f250fb03232e55abffc45dd7a69a16ebfe2ed532e8a34de7b1b6190820c60d4b615f62c98a160cb23042e576d270c0dca5877366519001c235af611c5433dd6d330971db346ff1c5728d8afdf5ffd61cd9dbddfbb0217451a3b2fc8e0cc16307aba1614cbf7e605d633ba372f42d798bc28cb18582cb3f150ce6e0170c876c203146d385749ca3258190c5d0bffe73cdd7cc9bb0317451aef2cc8206c0199a8881f7cfa6845bbaa095cae29cbd874a3bd179b073d008e50325efef57fa49d9095d1c055f5da5ff4cb8bf779cfc095f7451a14640019dd56d8bd609a82cbef5424e42770e57c5986bf59e6cae3a472b6130270c6f9ad78c924c53cb5a400564657dba665bae3ca42cdddc939aebc2fd2a8a22003c8b48e79c5f2bc7c86c29e2dae9f728d71fb76c278cf0269d9816c2704e01056d8aafca4e2c156eb119809172b73132edf409bfef8f35374fb95e3de77ca956f451a7641c61b14640059a9887f7486a25b1629120e11b872ba2c63edb7a4721ef2003844f9fe0a365caa6422c2964256061397617dcdc5f4f4df66bfab1efefd265dae2fd2b00b32b8d418c896cef945f2955eeafaf28c31ae2ecb185c2a73f9514cb70038663ba14af65364f3ddf6c481c5caf494abfa8dbfe8a60b3fb4d37af87c2bd2a0200370467986f7d91314eeaab19fdd095cb936ddb224da7e27554f26700170ce43dee27de5ebac2070b1b212b8da37d5eaa6effcbf5d0a5bae2ed2a020037048794691ba1f99a1e0eabbdf7a7e2770e592b04fe6aa93a472c21600a798a064c978c51309ebe99700c0ca74e04a5f827cebec71ba6df6bebb1cb8861769c4dd10ba2a29c8001cb5ad705e9102affea7f5ec1e2070e5dedd5b2552cd24a98c873c000e996e951d20dfd293c95aacacaefb6e394db75e3676b7a65cdb275d2fe77891865d90f13a051980b3b6154e51cfc2698af6d4b9b63c638c3befdef228b9f13aa9aa80c005c041171e4f546cd55543ed84c42e56a6275ca6bdad70d1fd57eb9659bb1fb872be48c32ec8e0cc16e0c8b6c247a62a503f377d2757384ce0ca89bbb77c6b65369d6a3ddc70f71600e71466244bc72bd0f297f4de2e02172bf391cb56f3affb74eba5fbec7271861b8a3428c8009c7e96ab5881d7cf52787023812b570257bceb51a97232d32d000e52a86459a1425d2f11b658599d72352f7fc90a4d85bb741f972b8a3428c80072625b61d7a38728b0e50502576e6c27f4a7efdeaa64ba05c049f76f152a513653f1c165d6536f92277f5656966124d5b1a55e77fe70e61e4fb8de59a4e1e8d065852d3f0519404ee85e582cdfd2cb5d599e31c66d651951ef6a998d47d97f9acc431e002789961fafb0af954a7856f6265c8621ff6087fe74c3097b1cb67636e972e2f6420a3280dcbb93abef991315ee5f4fe072fc76c2b6bf49b553a432eae00138c9014ad67d5a89446ce80c178b958d535ca60c23a1bfdff169dd367b9fbd0e5c8e2dd2182ac8601b219043acc0d5fff8c10aae7b88c0e5e8ed84c15e19ebbec545c7001cd850385e91866ff0c4cf72c47aec9e6fe99659fb8cc894cb69451a146400b9dd58e82d9da570a0cf55a16b8cabb6137a56c95cf611b6130270e01d5ce3e45d790d75192c477415bef2e80d9a73f1c805aee1db0bb37a3932051940ce07aec1451f57c865db0add13b8c22125bafe2cd510b6003850e978f99befb1b774b158d96d2a3454fdc67dbae93bfb8e68e04a6d2fbc399b451a56d8f2519001e4783dfc14f52e2c5670fd03042e476e270cf5cb587bae54ce7642000eb464bc62ed4fd050c8724453e1aa9a6774e385231bb8b259a4414106e01e9df38ae45972b122418f6b2ae2c7b865ba151b582a73f951946500702463f13825fade2470b11c11b836ad29d59c8bf6d1dc2b463e7065bc4863a82083335b807bda0abdcf7d42919e3afbc81081cb29d32d4b62db6f862e3b267001709ed8e2fd14eeab4ef572f3c4cfcaee9642c350dba665ba79d6bf8dca842b93451a3b0a32986c01eed95658a4bec76628d474df5bcff9042e87309acf922a38bf05c08185194b0b145d325ea1fe95dcc1c572c419aeeef626dd3a3bb5a570eca886ae512dd2a89ca4000519803bb7152e2896afe49b6c2974d2842bea5b65bdf05a61ab8c073b004e0c5c13adc03551c1c10d042e962302d760df16dd7ec584510f5ca356a4315490d13e6f9a858753c08de5193d8f4c5774b099099733ce6f05156ffdcb503b21db090138347095142ae8d94ae0623922707907da74c79585a31eb846a34863474106932dc0cdf5f0fd8f142bbcee01fb599fc095edbbb742dd32d67f9bb005c0d1a2a50729e46b4f3dedf2c4cfca72e032e51b6cd7afbf3f3963816bc48a34ec828c9914640079a0c30a5d81b2cb14f1f7d8057904ae2c8a7aea64ae3c462ae3fc160002178be5c4c03512451a3b0a32085b407e6c2b2c96efc54f2adcb332e7b7158ec9f5f35bf18efba58a499cdf02e0f0c03559212f818b95df816b8f8b342a27b18d10c8bb7af829760369b0e531025756ebe0c37e19ebbe255531dd02e0f0c055623d307ab7510bcf7246e01a68d3afbe374973afc87ce0daed228da1820c2e3506f24fcfc26205ca2eb59ef903391dbac6e4f4f92dff3a990d4773f716801c69296ca13483e58c96c2decd196929dcdb228d1d0519842d205f2f41ee5f7492229ecd397d8e2ba7275cf1ae05525d31810b400edcc3b5bf82fd6b085c2c4704aedeceb5ba6df67e590d5c1f58a441410640e0b202d7e0531f5670d3a29cbe936b4cce6e270c0d2ad97225ed840072427cf17e8af4d5b0a59095fdc065186adf54a75b2ef9b7ac85ad0f2ad2484db6fcaf519001608a3ae615c95379ad22416fce6e2bccd9c0150d6c95b9fa64a99cf35b009c2fb978ac127d25d6d36e92277e5656976105aecd6b976ace45ff2fab13aef72ad2484db628c800f09679c5f2bffa9f8a78db095c993ebf15eb7bd97a519ecc840b406e58623d4c763c45e06239207025b57ad922ddf8ed7d1d11b6866f2f7cea8efd35f8ea4cc2168061f5f045ea5e3843a1d67f11b8323de14ab4de265513b600e488d2f1f237df2d536c296465ff0c57d5ebf7eaa6ef382770d9a1eb8a71baf1a2422db86eb25a1f3c88074d006fd5c3f73e52acf0cadf13b832ba9d30d42d63e5593cc001c81d65e3e45971bdb8858b95fdc425bdf6c44d9af3dd7d1c13b6eeb8729c7e717181ae3f6f827e7ace783df89389ea9cc78326801dfa5ffd9a22febe9c2ccf189393db090797ca5c7ea454ca840b40ee04ae50e3853cecb31cb19ebcefbbba65d63e8e996c6d0f5bd77d7dbced9aaf8dd703574fb4275d1d3c68024cb91e2a92e7d91314eeaab1b300816bb4db095375f0ad7f91aaa750070f20871ca064c3e76598ccb85859dd4f68ffe5c1df9ea55b2fcd7ee0bafdcab1fae5ac425d372c6c6d979a742dbcb6409df3d95e0810b88ad4f7d821f2353df4561e20708d72e832365d2055d24e0820b7442b4f5224d043353c2b8b79cb543838a03fcff9a46e9bbd6fd6c3d69c8b771eb652ae1f0a5df7fd70a21dba987401f9ad7b41b122159713b8465d6acf66a847e6b243692704905bca0b142b3b42d1c1353415b2b2da50d8dbb14e775d7da46ebf626c76b7115ef2f66d84efc59e745d5340910690eff7713d5ca4817f1ea748d0c396c2513fbfd5ff42ba9db08c073800b914b80a652e2d56626049eab197277f5676265cf61d5c259a7b45915d5491ed828c0f0a5bc343d7835753a401e4773d7c6aca55a4487b8922e110816bd4ce6f857d4a6c9a335407cf840b402e2950b27482fc5b9f1e3a47c3592e56762a0ad72cfba76ebd6c7f7bca9495c9d677772f6c51a40120ad487d8f14c95b7fa795090239b5ad307702979564a3a17619cde748659cdf02908b816b7f055bfe3014b6085caccc9fdf4a297fe98f43851963337f66eb9282f73cb3b5ab93ae05146900795d9e112cf9b6a2feae9c9a72e5d4842be6a94bd7c1d34e082027abe1272ab27c36818b95c5c065e8a9fbbea75b668d755441c6aea24803c86fad56e0f23d778242dd8d4cb8462b70c53be74915937868039093ccb209f2959d44d46265754be1bd379fa25b2f736641c6ee4cba28d200f253e7fca90a6c7892c0355a8519c92d3fa00e1e400e9ba044c9fe320c22172b7b6beee5e3335609bf27051914690078df7af885c5f2d75ecb96c2d1986e45c3dd32579e66572bf3d0062067a75c4bf691bfaf85bbb85859d85268c8d3b755bfb8e8df3237d91aa5b035bc48e3418a3480fc9a70cd2bd2c0cb9f5724d0973353ae31395307efad91d97818e7b700e474718696eca770db53dcc5c5ca7ce032926aaa5ba49b2efc5046ce6cfd72d6de9fd9a24803c0ce8a333ccf1cad486f63ce4cb97266c2156fffb3547d10f76f01c8edc055b69f82eb6f53926a785686cf6ea52c5e3457bfb8e843a37ae9f148156450a401e0bd0257df63072bb8f601265c237aff566850c996d9dcbd05c00517201fa060fd854a26c26c2b6465743b61221ed1e37fb948b7cede27a70a3228d200f04e1d0f17c95b79b522416f4e84ae9c085cd1c036996b4eb61e5428cc0090eb816b9212d59f5222dc693d0613b858990b5c016fb7eeb9e9d3bafdcaf139579041910680b705ae79c5f2bdfa19457c1d04ae113bbf35b054aa9ecaf92d002e50a848e9c18a7957920258195ddd6dabf5db1f1d624fa172b12063778a341ea0480370b922753ffe6185ba6aedac40e01a81c015effa8754cb740b803b18a56315ef5bc2112e5606275cd296f54b75ebacd476c2b1237e66ebe659993bb345910680362b70f53d3a55d10d0b72a238c3f9812b1c5472ede55205d32d002ea9862f1927efdaff654b212ba35b0a2b5ffbb36ebef843395d904191068074e09aa2aef945f257fe98c03522e7b782ad321a3fc5431a00f7283d40b19597da0fc18cb958996828340d434fffed0add7cc9c86e239c738933b61152a401e4a7be17cf523407ce718d71fcf92dcf52992b8fb4cf3df0a006c01513aea507285c75ba62f1a415ba085cacd1df4f98fa3afbdbdc3374cba5235b90719d83c316451a80fbcf71f99e3b5e91ae6ac74fb9c638ba0e3e75ff56c7ff49b545146600705153e144454b0f533cdcc305c8ac515f86915428d0afdffde450d7156450a401e4f77d5cfd4f1caa40f382b77203816b0f035772db8fa58a422e3c06e0aa0b908db2a98a0e34708e8b9591f35b5dad2b74eb65c57bdd50983ab3f5cb59853931d9a2480370ff39aece055315a9ff05816b6fb7149aab53f76f31dd02e0aec0952c9da0c09605a4015646d68aaa4774eba50758816baceb0a3228d200f2f93eae22f953f77171866b6f2e3cde28554ce1e10c80fbce71958e537cc3af38c3c5ca4869c692677fad5b2efd90ab0b3276ab48e35a8a3400d7dcc7b57086a2fe4e265c7b7cff56df33524d81fda7c13ca0017097031468b842c944247d49128b352adb094d2512513df3f7ffd2ad97edbbc793ad5c29c8a04803c8b7735c53d4bbb048916d2f3bba38638c63cf6f85034a6cfe15810b806b45aa3e232336c8392ed6a89edf0a873cfafb1d9fd76db3c7e6454106451a407e5d80dcff48b1bc8dbfb7efee75ea946b8c53a75b9150af926bbfc3f92d00ee3dc755718412b16e7117176b340357c0dbadbb7e7a8415a0c6e64d4106451a407e9de31a58325b91409f63a75c8e9d7045fdcd329b4f97cab87f0b803b4597142838b8912d85ac51dd5238d8bb49b75f3161b70257ae1764ec7691c60f28d2007255ebc3c58abcf13945acf753265cbb29365021b36e26f76f0170ed842bb1789c627d4bada762b614b246671986a1adcd95fae5c51fdae5c0e5a6820c8a3480fcb88f6be0e9a315eaaae50cd7ee4eb8e21df773760b80bb958c57acfd7102176b14035752abaa9fd68ddfdeb5c28c3bae74ef992d8a3400179b5fac40f3a34cb876f70c5772db4fa54ab61302707735bc77ed6f6472868b358a67b8ca5ebc4b732eda37af0b3228d200dcad6b7e9122f53771866bf71a0abd329ace26700170b7b2b1f235fe80b8c51ad5f5fcc357e99717ef93f70519146900eed5b3b058fec5df5024e477e4946b8c13a75bd1c07a990d47717e0b80cb03d7fe4a347e89ce0cd6a8ae79779dad5b2fdd27ef0b3276bb48e387146900b9740172efd3272aead9986e3b27707df0842b36f886cce58710b800b8dc04c56bcf502c1aa2a990352a0d85a94b8fff7adb99ba6df63e6c23a4480370f57d5cde7f1ea168671913ae5d2ecc68bf57aa3e88c005c0ddca272a5af10985fd9df6591b166ba4cf6f05fdbdbafba69328c8a04803707d5361df633314587b3f816b57cf6f255baee6c263007910b80a145d7a8c229e169a0a59231fb80cc3be83ebbfaf3d5673af18cb648b220dc0f517207baa6e70e4392ec705ae68b84746cbd7a88407900781ab50f1b20f2b36d8683d1d274908ac115da94af8aed695fadd55875b016b2c0519146900ae3fc71558728122fe1e02d70706aec01699ab3e6e3f88f04006c0ed81cb2c9b2663b08cc0c51a95c0b5b5b95c777c6f9a3dd1a22083220dc0d513aef9c50abe74b2229e6d04ae0f2ecca892aa8b997001c88bc0952c9da268efeba90d602404d608072e431b56bfae5b2f9b6207ae943997b08d70af8b34aea1480370ea84abe7f1c315eaaa23707d50257cbcef71a986e91600f7371426961eac40cb3d8a47074807ac5159e1e0a0aa5ebb4777fef010ddf45dc216451a809b9b0aa7a8f791a98a6e79c67117203b2b7085c34ab4de2a5533dd02e06e89b2690a75bc686ffb62b1467b6be1dac6d7f4f36fced075e7129846aa48e3418a3400e705ae85c50a2dff1d13aef70f5c01194d174815042e002e563a5ec1153fb01e844db612b232505768da77723df1971febea2fef47601ae17bba28d2009ca3737e91fafe35db71971f8f715661c646998da7f13006c0c50a152f2d5674b08120c0cae86adbd8a81bbf55acebcf3b80c0449106e05addcf7d46515faba3a65c639c747e2be6ad96b9ea182e3c06e0eaa28c58ed594a46fbb87b8b95c12157ea12e401fdefb55fd475e7ed4f60a2480370ed05c8dee73fa1686fbda3a65c8e9a70c57a9e93d97888fd27c03c9801709fd41f268d936fe5b54a26936c2764653272d9a1ebd9fbafd7d55fde47d713ba28d2005c798eab58de678e5068cbcb4cb87616b65212ad7f922a0f62c205c0bd81ab643fc5b7fed97ef865b1325d9eb1f4a5fbf4a3b3f625708d5291c603146900599f70752f9c21dfcafbdeca1704ae7704ae64ebb55245a115b8783003e0cec0652ed94fc1b6e7b8e8989595c0b5a6f6652b70edc3b6428a3400d73615762e2856a8fe1704aef7626cfc5a3a70f16006c0ad816bf1bef27656707e8b95f94d8586a1adeb6b75d5173e44381aed228d1f50a401644b9715b8224b2fa4a570e795f04199cb8f95cad94e08c0bd8c25fbc8dbbd822d85acac04aeae6d4d04ae0c4eba28d20032af635e913ccf9de2a8cb8f1db3a5301a6a932a0ee4810c401e04aee5042e56f602d717095c1469006e0f5d33140d74b3a5f05d95f09e12a9b280f35b00dc1db8525b0abbea085cacac04ae8e2dab987051a401e441e09aa25877b563aae11d12b8828af73c282d2b1caa4de6a10c807bcf70f9da4b38c3c5ca4ae0dabcb64a3f3a8bc095e949d7028a34800c16671469e0d16245373e46e07a5b436138a0c4a65ba4ea022ae101b8f8d2e38956e0da4fa1d645b414b2b2d252b8bae605bba5905af82c1469fc90220d20338ad46f052e6ffd6fed8e8848384ce0b20357a85fc9a64bd285196c2904e0f25af844ebdf095cacac04aeaad71ed00f3fbfaf1502085c5929d2b886220d2023d5f0f3acd055f25f8a04071c718e6b8c13ce6fa50a338c0d5fb6c21695f0005c7ef171e97e0ab5dc29c3344900ac0cef2934f5fae3bfd1555f247051a401b83d74152bbce4eb8afa3a1cd156e8880957d4bf5ee6ba53095c00dc1fb8968e956ff94f944826ade75f42172b73612b55d4f2ccfffd4c577f2575f131e187220dc0bd5a1f2a56e48dcf2832d8c2846bbbe860bdcce547727e0b401e9ce39aa070ddf932e2c1d4262f82002b4379cb502c1ad2dfe77e53d79e3b8ee0439106e0ee09d74345f23f77bc42dd8d94666c17eb7955aa3888f35b00f2c024c5ab3fa544b893a642564603977fb05bbff9c1a775c33726107a28d2005c1eb8a6a867e1c10a6c5b4ce0dabea530de717fba30838731002e675a812b5c76b8a2deb5a40056262397badbd6e9e68b3faa1bce277051a401e4475ba17fdd02b6146e2fcd48b4dd4ce0029037e7b89225e39418a82003b032ba363555e89aaf8dd37554c253a401e48154536168f99d8eb88bcb11812bb96596544d6106803c9972958e956fe3837691018b95992d85a66afeb540577f791f420e451a405ee879a458d19a1f12b8d2971efb65349d2d5512b800e489d2fd155e75d5506906a18b35fadb094dc3d053f7fecc0a5c146650a401e487ee85c5f22d3e3f7df971be07ae68b05566dd094375c93c8801c80707285c7386628924818b9589f1961db8fef7da33f5b3af12b81c5fa4f1038a348091d031af48dd8b4e57d4df95f5735c63b27ee9b1bf4966c31154c203c8a36af8898a961da678a88ba642d6e8e72d2b6c053cbdfae54587116c72a548e35a8a348091a886efffe7718a0e3667fdf2e3ac07ae98b752e6cac3085c00f2ab38a3f420053bff25eee2628dfe80cb50cb8a25fad95727eb7a0a3328d200f2e92eae678f52aca736df035758b1fee7a4c619042e007915b8ccd2f18a6efc9d5d66c0628d7661c6bf9efe6f2b70ed673dcc13b828d200f2277079fff91145b7bd9cef5b0a238a773c20d51611b800e497b2090ad45dac643c445b216b54c3563c16d6c3bfbfcc7a801f4b90c9d1ed851469007bc00a5c038f1faa60f3c27c2fcd0829b1f14ea9bcd07af8e0010c407e4db912e587a7cf71519cc11ac5c0e51fecd6adb33eca742b978b347e489106b0fb13ae29ea5c3055030d7fc8e70957aa12deab64cb4f79f0029097e28bc72bd257633d15274906ac512bccd8d652a79f7d95e956ce4fbaaea14803d893a6c2c1aa9f2b12f2e771e00af52bb9fe3b3c7801c8d3fbb8c629b0feaed42d492403d6a81566bcf9f41ff5e32fee4770a14803c8bf2997c5533a5b91e04056a75c590d5cd150978c962f580f1e5c7a0c203fefe38ad57d5189448c6d85acd1485b4a26e2ba77ce9774cd39042e8a34807c54a4d09be72a1ae8ce6a5361f60297f541db971eaffb64fa0c170f5f00f2ee3eae02c5971ea198670ddb0a59a3b09d30a9eed675bae592a3a883ffffec9d777cd5e5ddbfff782a909c84a52488bb8e2e6bdbdf533bb4d351650a8e56adb3e3511448c21257d5aab58e3a2aceaa24807be0461048421212c2de7b04c8de67afef79ffbee724526d1d2439e7e49cf3bddeedd5f4555faffea1c0b9aff3f9dcef3bc5265db329d20038b495c2826c7916fc4c9ef6031615aef084ab7d9b42ab4e61c20500d67d8f2bdc56b8a7a0b3a9902917899a6e45a85c3c47b9a36c0817451a00d6243f5bcd6f7d57eee65dd65d29f4b5ae90ca8751090f009625640a9773d5559df7b8102e12bd76c230050ffc513923d310158a34002cbb5258f7f28972d5aeb2aa70b9e46b5a24950c46b800c0c264cabbe470f9037e2c8144bda170fac547286f0cc245910680751f3fae291826d7fe42abae14bae46f7a532a1f1859abe1d00500565d2b0c2dee23c7810fcd23b2812590a8b5136e59bd50e3cff91a6242910680a5dfe2aa9f3b549e3def58b734c3dff0bcb47c10c2050096162e2d4d9763fd040583fecebb5c84f46c9dd030027af3e91c4d1cde4793b9bf4591068085570a9b5f1a2adfceb9d62dcd08d4de2f5598c255cca10b00accc40f94a4f93dfb98b7b5c242ad3ade6ba3dbaf3da1f68eab84c8484220d004bbfc3d5f8e25079373d62d53b5c1e05f64d979631dd02000816d9e43af036c245a2615cda50f181724685ef6e31dda24803c0dac2553f3b5bce957f516f3a4fafdee10a6eb9562a43b8000042c5a670adba5441eae1490febe0c32b85b3eebb429346f4434228d200b03c7505d96a2e9a60d10997db2e63dd68a98483160040185ff171f2da7787ebe5f006d2fd75c2867dbaf9d2e3900f8a3428d20030a9c9cf52fd47bf35ddc36141e172d5cb587d16c20500d0599e611467c8bde719e65ba4475936ff5fca19994e5906932e8a34004caaf387a8eeddf3e57134594fb8bccedd0aadf909872c00804fe15ef66b057cadac15926edddd723bdbf4f09473953706e1a04883220d804f6878e797f2b6575950b8ec9b155afbbf341402007c8a4061a6dc8de5ac15926e0897a1aa6d2b943b9ac91650a401f0e9b7b89ade39439ee66d1614aef6550aadfbae295c946600001ca4385dae75d7cbe03d2ed28dc28c571ebf411387f7453480220d8083c295a5d6774e97b7719df584cbd7be4ca10ddf44b80000fee32e97bfe414795a37980768a65ce4d0cb326aab36e9f62b4fa10a1e28d200f80fe1b2bffb3d79eb2b2d285cad4b4ce13ac914ae811cb000003e5d9e519429d7f6073aef7131e9225f7d772b5c05fff1eb0f6bd2c8744da12c0328d200f8d45b5cd972bdfb1df96a965a50b81ae62bb4f638840b00e0bfc894a7f068f97d4e848b1c9270f9bd6edd7ce9d1ca1b8d5400451a00ff295c8e79a7c8b3ff63eb0997bfe62d69e5d1ac1402007cce942b54d857ceddcf4556c5902ef265f7b64286a18a8ff375c3b987b14e081469007cce4a61dbeb27c9b1fb5d0b0ad7fe59d2f26c840b00e00ba4cb5df613055cd50817f992e15648edcd357a60c299880450a401f005c2d5f8f2716adbf29205856bcf6352f910840b00e00b308a6c72ee9c199e616016e40b275c4bdf7b5a9346f6432280220d80cf5d29cc52fd8b47a965ed53d613aec0cebba5d241bcc30500f02577b9bca5a7c9e769a6b1907c6e33a1dbd9aa7bfefc3df3e09c864000451a005f30e1aa2e3852cd2b1fb0a070edb829b232837001007cc95daea20cb936dfaa90e1c730c867120c06f45efe9d9a34c23c38d34c081469007ce1c3c7076665a9a9e236eb095770d714a99486420080afc25f344c9e968ddce5229fb9bb55b76fab665c7a94f2c6200d409106c097516d0a57fbf2195614ae1ba532840b00e02b29ce906bc5450af8da912e12912dafdba167effa9d268de0ee1650a401f055d41664cb5131d982c2b5fd8f4cb80000baf018b273ebbd91c336b1744746e4ddad8f5f7b4079a33378e41828d2003814e19a9dadf6d2f11614aead97235c00005d28d0f02f192c676319332e8b67cf960ae58e1acc2a2150a4017088d41464abb5f01aeb0997b1f942840b00a08b048a8f97abfa6d19e149d72790945f21ecc0d0868a0f34e377272005409106401785ab6df1651614ae0dc3112e00802e9321ffd213e4d831536e4795dcce6a8c24c5d3d65ca396862a2d7def49dd72d9d795339a7b5b409106405785ab65c1580b0ad7da5f49253c7a0c00d0ad47910bfbca5f3c54eec2e364184cb95239b75e7ebca65f9cad09e71fa6c9ac1102451a005d6f29cccf52d307e75b4fb842ab7f82700100f4b44c63491fd91bd647d6cd488aad121a86eaf66fd58de79aa27501e518409106404f84abe19d5f5a50b8567ebfe3e1630e4d0000dd67495f79f63eab9010aed4bbbb65a87cc10b1a7f761f1e36068a34007af80e57c35b3fb1a070557e13e10200e8e1844b25696a5b7dbd028100051a295694611841bdf6c48d9a34a28fa68ce5c00f146900749f2cd5bdfe7d0b0ad7f253102e00809e523250fee5e7caf03599c774a65ca9b44ee872b4e8e129e7f3d61650a401100de17aedbb1614aef213112e00801e125a3a50eee213e56ddbd2f92a2e4911e552fd816dbafdca6f68eab80c0efa409106400f85abe6e56f5b51b88e43b80000a2519c51942e5fe362842bc5846bfbba22e58e4ae3fe1650a4011005e1aa7de9140b0a57d9310817004034a65c85696adbf250780f0d4f49a13b5c856f3fae89c3fb70b8078a34007a4a7e966a5e3cd97ac2a5b2a3382801004483629b7cab462b18798f8b29570ad856a4a1f0e93bc66ad28834f3609bc6e11e28d200e8e94ae18b275a51b8867248020088ca3daefe722ffda67c9e76dee34a91c20c9fc7a9bffee95bca1b8d6c41724cba0a28d28004a766eef11614aed2211c940000a2768f2b5beec60a9a0a5344b8aab6af54eee86c1a0a21a9a4eb5f13faab3a1fe982047d8b6bf6d11614ae92c339240100444bb88ad3e5def150e4ee0f49fefb5b4be63daa9c51690817245991465a44baaa5e60bd101250b80a8eb4a070150fe490040010b57b5c1972565e2cc3efa03c23c9652bbc4ef8afbb2f8b1c5e39c443b23171549a0a72fb53a40109c7fefc6c0b0a170d850000519d72f98bb2e471eca23823c985abb97e8fa65f926d1e5e797f0b92bb48a336ff0855f35617248a70bd9065c595c2411c900000a288519826e7ee174cdd62c295ac310c43958b5fd48dbfe96b1e5e592784e4bed3959fdb5f55146940a208d72c2b4eb84a0673400200882a36b9979fa780dfc5942b299f3a0ec9eff3e8895b462877545f0eed9002d29546910624d05b5c4329cd0000809eaf15068ab3e5ae5b807025e53aa1a16d6b1669da85b41302451a00d12fcd18462d3c000044e14dae629b1cabae894c4b48f2cdb8e6fee3cf9a34b21f077548b1228d74cdce1d409106500b1fff878f8fe4700400108bbb5c8b0f93b3613553ae242bcba8deb34137fce67f38a0438a1669a469e6759911e962d205bd225c738eb39e7085ca8ea6a91000202664c8b5e24205bccd485792c896cbd1a267efba4439a3986e416adfe92aa048037a852cd5bc78a20585abfceb08170040ac1e422e4a9773c73f3a740be74af82c79eb314d1a691e4ab9bb05146900c446b85e3ad982c2b5fc14840b002086f88b87c9b96f9e42a1204693b035f041ad2f7f4fd32f1aa6bc311cc681220d80580957ed2bdfb1a070557e1be1020088f16aa1aff804396b8b0e963290c429c80867d7c652dd7af9f19103280771b0569146c77a21451a102fe1aa7bfdfb1614ae55ff0fe10200883999f2170d9573c73f1508f8c21786709d04a87f0fffb3287a7b66a4023e6f0cb205562dd248d713d7235d101fe1aa7febc71614aeb53f954a102e0080784857b068a05cabaf94bbb112e7eae5546d5fa98207ae52eea801ca63b20596bfd395ae39b90328d280d83614e667a9e1dd5f5a4fb88cb5bf42b80000e258a4a1e234394a7f2a9fbfa3198fc4bf8d309c0773ced48de7f5d5940b28c800f844ba28d280580b57d307e75950b8369c2f950ee410040010a729978a33e459fe2bf98262b5b017ef6d3d36ed2ce58c4cd36456090128d280b8505390ade605632d285c9b2e40b80000e22c5cde95e72910912d84ab37842b3ce59a79cb084d1a918e700150a4017114aeb645975a4fb8825b2e45b80000e2295c459932d68d338ffd06c2d55bc265187af6ae8b3511e102f882228d34cdbc2e5335f947a83a1f5180280a57d1351614aeed7f44b80000e22a5c19f2affbbd79ee47b87a53b80a1eb8561387235c005ff638727e6e7f8a34206ad4cece567be9f51614ae5d93a432840b00205ec2153285cbbd767cf8b95d84ab1785ebb5999334714458b6102e802f932e8a34206ac255902d47459ef5842bb0632a2d8500007124546453fbbae908572f0bd73b2fdca649c3fb71a806a04803e2b852d85e31c38ac2755b674d3187200080f80857bada36fcb5f30e17e9ad478f17bc7cbf260eefcb811a80220d8803fb3b1f3e6e2ebfd582c2b5fbef52e96053b898720100c447b8d2d4bae55184ab778d4bc5ef3e650a571f0ed3001469403c84eb852c53d887aa65c5dfad275cfebd4f48e559081700401c85ab6dfb73ac13f6f25ae1f28fe76ad2f0c3384c0350a40171997065a9eec5a3d4bcf6090b0ad78139d2f2a108170040dc84ab9fec7b5fe5d1e35ecebab2773411e102a04803e236e16a7cf978b56e9e6b3de1f2d5cd93561f83700100c48ba2bef2d4cec7787a77a3505b572f3285eb6b1ca00128d280380957ebeb27c9b1eb1d0b0a57cb470aad3bce142eaae10100e242611f059b0bb19e5e5e29dcbeae489386ff8f7978b4718006a0480362be52982dc7bc93e5d9bfd082c2d55aa8d08693102e0080b83040c1c234055b4ab8c3d5cbd9bda94c7963d234652cc205409106c443b85cef7c5bde9aa51614aef60a85d67f9b95420080380997afb0bffc2d15184f2fa76a5ba5a68e1b680a57068767008a34200e2b85f677be276fdd72eb0997d7be4ea1b5df43b80000e2c240790a87c8dbb20ae3e9e51cd8b556375d72a4a68c43b80028d28078b414b6bd73ba3c0d6b2d285c8e1d0aadf911872000807834149ac2e52e3a469ed60d184f2fa7b66a936eb9fc04840b80220d88cb846b889ade39439ee6ad16142ed77e19abcee420040010877542951c2e77f1d7e569dbc41dae5e6d290ca96eff56ddfcdb9335eda2fe14670050a40171a0e19d5fc8dbb6d77ac2e571b7c858739e7908e0300400103b3214281a24efb29faa7df33d0afa5a11ae5e162e8fab4d8b5e7f48f7ddf0334d1d37407963fa716006885291c6131469c07f10feb550fffef9f2381aac285c4e19eb2f914ab9c30500102b824bd2e4a97a5e0177b5828681f124503d7c7b4bad962f2a50cec83e1c980128d28058095778c2f5d1c5a67b382c285c1eb7825bc64b6508170040cc9a09979e209fabd63cdf1be6119fc9562209976104656fa9d3ed579cc46a2100451a10236a0bb2d55c383ee21e169c70b915a8ba552ae71d2e008098509c21e7aaab140cb859234cccfd42057c1ecd7ee08fca1dcd5a2100451a10fd86c221aa9f932de78adbd47b43a65e9e70056a1e922a069987020e460000d19e6e1945a670ed7e1ad54af02c9bff9c7246d978081980220d88817035be3854de8d0f5b75c2e592bf71b65489700100c442b8024547c967df691ee9b9bb95b0432ec35073fd5e4dbff868d60a016254a43193220d0b93a5e69786cab77376c43d2c295cbec6f73aef70718f0b0020daeb849ee5bf50201888acae91c46d2d0cdfe57a6cda59ca1991c6211980220d88f21b5c0d7387cab3f71d0b0b57f35253b8b2cc8301c2050010558ad2e5d8f2b74859064974e932b4e8f57f68e270da0a0128d280e80a57960e141c29d7fe428b0a97c72d6feb7a852a8f67c2050010e575427fd120f99a97613349d258b8674b85a68e1bac296333381c0350a401515c29ac7bf944b9eb5659f40e9789d7b147a10ddf914a682a0400881ea66c959f11797b8b76c2e49870b5b7d4e9efe37f8e700150a401d1243f5bcd6f9e2a77d30eab0a974b5ed70119dbce40b80000a238dd52713f39364e53d008727f2b49eae1c3d2f55efe2dbaf1bcc33499b642008a34203a8f1e9bc2e5fee80c79da0f5855b8dcf2baeb4de11ac54a21004014852bb4b88f1cd5f369274cb2b6c2ed6b176bfc395fe3500c4091064451b85c8b46ca6bafb3ae7079dc2d0a6ebd9a03120040d4c8946fc940f9fd5e2c26c9126e2b9c7ae160e58da1ad1080220d880a2f0c515be155f2389aac7b87cbe3b62bb07d9a54c2840b00203a75f09972aebcb4f3ee16eb84c9b55618d2f3f75ea59c91081700451a109509d7ac2cb5944e91c7d5aede749ede152ed334037b1e90ca78fc1800201aeb84c1a20c39763ddf79770be14aa6a6c2b070952f98a5dc91e99ac23d2e008a34a0c76f70d5ccce56ebcabff76a257c02089747fedab9526536f7b800000e798a6553a8c81679dcf8337f76960c94bff8ebf2b5ace1fe5652dee30aaa7acf7add72d9499f152ef3bfe79a07c24923fa993ffbb2720810cb228d02265da9f40657d3cbc7c8b9ad40bded3bbd3ee1f2357f24ad3e86c78f01000e815051a6dcab2f95b36a8edc15bf56a0684844c03afe7a86bc95e72810b9bfc5742b19d70a837e9f1e9f71ae7247f7350f8236e58d36256bf4603d30f1a72a9bffbc66dd7785260d47b8006275a7ab80228d9412aeb6374e94b7eafd5ebdbf9500c2e592b77d95426bbf8e7001007c2536b997fd445ec7bec804cb1ff0ca555f2cf79a6be52b3a525a7c981cdbee47b692fc4dae456f3ca23ffde2304dbbf0703d77cfe5dab26a81fc3e77e4afb5361dd043b93f3325ac5f44c838240350a4015f2c5cf6b74e91b7ae22e21cd6162ee76e85967f13e10200f88af6417fd150b99bd78677cf0e4e44c2726504cc3f4fdb76aa7de39df2b6aefff75f2749285c21d5ecdda4b79fbf59b5559be4f3ba22ff5ba8f33db5b074d5eddba2e9170d55de68265d001469c097ae14be71aabccd5bac7e87cb2d8fab41c6aa33a4521e3f0600f8e2328cc172ec9cf9f9b3abf061dc3c8887986ca5566ba1611c14adff4cc9fbcf98c23588720d008a34e00bc952dd9b3f96b7971f3d4e0ce1f2b8646cbd585a867001007c9e6c19457de4dcfc17050d848afcbbd570fe4b776bc2f98771380688759146fe11aace4760928dbad9d9b22fba401e97ddeac2d5b15618dc3b01e10200f8bc928ce24cb9968f94df5dcfdd2cf299d543677b939eba7d6ca4c190033240ecee74e553a49194d4cfcd9667d99f3ad7092d2f5c6e050e3cc8c10a00e073ee6d794abe236ffb76648b7cee94aba976b7eebaf63453ba38180350a4019f79f4383f4beed577f67a6146c20897bfee0da97410872b00804fe12fce96bbe6a32fbcc74348f8d7c6b6b54b34e3b747d25a08409106fcc71d2ec796fc5e9f6e25887079e46b5a2a2d3f9aa64200804e8cc27eb26f7f5486e163ba45be74ca150cf855fcee93bae19caf713006a04803220d8543543bf728d9f72e5422b84e420897b77d83421b7f2015718f0b0028c908dfdb72aefe832877275dc98b8f5caf9c1136265d001469205ce1478fdf3a4daeda5508d7272b855ee71e193bce928a112e00e0716377c52fe475ec67b245ba34e96a6faed163d37ead9c917d391c0350a46169f6bd902dcfc25fc8d3bc8d95c2838f1fbbeb656cb928f2cd2e872d00b032bee2e3cd0f8855c816e9d67daeeaddeb75ebe5272a6f0c8762008a342c2c5cb3b2e55e7281bcedd5bdfee871c24cb83cee3605b7e74acb06205d006059024543e4dcff9a79700e620fa47bd265185a5b3a4f53c70dd164a40b80220d8bdedf0a3714362dfe833c8e26265c9f9e7245aae1570c44b800c09aef6d15f5956be33419c120d32dd2c34997a1f75eb85513cfff1fee730150a4613de19a95a5c639d96a5b71a73c6ea709c27550b8fccd6f49154cb800c07a25192ace9063e5550a785bb1051285db5c21795ced9afde09f357138f7b90028d2b09e7035bf942dcff6820ee1a234e353c519ed6b902d00b02019f2149f229fab86c91689aa76d95beb74e7b5df56ae7918e4600c409186a52ae1f3b3e4ab599a108f1e27907099b85ba46547235d0060b1928ca3e4ac59846c91989468ecdcb05437ffee680ec4001469588aea82611d851909707f2bb184cbfc1b62acfbb95482700180551e371e28d7ee7f296404b003129384ef04962f2850cec8011c880128d2b0866ce567a979deff26443b61c2ad148609eeb95a2ae32d2e00b0c2e3c6e972acf9b30201375640629a80cfa357fe79a3268d48a3440380228d94a76676b6dc45172b71864a09265c81bd774b2583388c0140ea16642ccd54a8284deee567cbefb5b34a48e2729fcbe77569e6cde7e9c6dff4ed78a36b2ce2054091462a166698c255902dcfca1907fd02e1fa0fe9f2d7ce95560ce51e1700a42099328a33e42d3e56cef593e56ddb8a0790382a97547f6087de7c669a6ebbe244e58ccc50dee874265e0031bed3554091469c0b33b25437e728d937cc44b8bea81aded752a8d0fa93a462d60a012005a659e13ba9c569f22fb1c95d7e8edcbb9f92c7be2f52db4d48ef146918b2b7d66bd9fce7f5d8f4e1ca1d6dd384f33baae3a730f502a04823e9275cd96a7be32439f7bc9f30b29570c2e5b56f5068cd0fcc030a87350048d695c18e6956b02843fea527c9b57ebc5cb5450afada22875d8521a497a52b4cf8adaebd5b2bf5fa9339baed8a539433aadfa72ae4912f008a349273c2657fe7fbf2d657264c257cc2ad147a5df53256ff9a431b002421e1c9bc4dc692be722d3d55ce1d8fc8d3b2a1639615912ca65a24d1c42b64fed234223febf66d56f1db8febef379cae1bceeda34923fa6acab80c0ecb001469241d0deffc52deb6bd4cb8be4cba823bc74b65dce10280642ac148efb89bb5eecf72d42c5630f4c9ad19a6592479a65ee67f447ed9eedc50a2971fbb4e375f7a82260def1bf9769e7543008a3492a2a1303f4b8d8bae90c7eda0a5f0cb842b50fb98b49ca642004870d12ace50b068903c65df9763eb7df2b6ae5730e8ed94ac10132d928cd67550be82019f6aab3669c99b8fea6fd7ff40b9a3069ae2d58f55438028dce9caa74823660d850d73b2e55cfd5753b8dc08d7971667347d282d1bcc3d2e0048d84a777fe16039575e2ed7feb7e4f739fe5d821142b248eaac1b86bf3408fff4999fcd1b2aded59c87fea429e30ed78de7f551de98f0d48b9543008a34124bb81ae766cbbbfbb5847af43821275cdef64d0aad3eb1f33e04873c004880128cc8346b80bc65ff4f8e2d7f95bb75938c80ab43b428c1209628d908c9eff3a86edf562d78e5efba6ffc0f4de91aa89c91699a3c869543008a3412812cd5bd78bc5cb59509757f2bf184cbb451afab5ac6d633a512840b007ab904a3b89f8c2587c9513e428ebd73e573d6747cf31f62659058b464a313475b835615bfaaa76f1fa71b7ff33f91a917251b001469f426d505d972bcf743795af7225c5f35e1f2b85b14dc7a2d8f1f03402fddcdb2c9089760949e26c7c6dbe56ed9d6b93248090621ff39f50affbe68aadda3f973efd63dfff743e58cec17997a31f102a04823eec2352b4bce2517c963af47b80ee51e5760e73d52d920ee7101409cd6060728648a56b0e808b9969f27e79e7cf91dbb150c06591924e410265f8611544bc33ead58f2b29eb86584f2c60c514ee44d2fc40b80228df809574bd9e4c81b8308d721e0af7b5d5a39cc142ea65c0010cb77b332142a0c57ba1f2fd7863cb9eb972810303eb532c8da202187a85d07d70dc3bf7ff66c29d7bc7fdda4dbaf385137fea66fe45165560e0128d288e583c70d738f9263ddd309275b093be1f2b6ad5468cdd7592b0480d8340d1667285074b8dc15e7c8b9fb5ff239f6cb08faf4ef4a7742480f465e1dd5f241bfda9b6b54b170b666de32c214ae233469645a67c321932f008a34a22b5c6d6f9c24efbe4508d721176738ab155af1bf081700444fb44acc9f857de55b3250ce35d7c955fd9efc5e4787647df2e82b21240677bd0c05fc5e6d5eb9402f3f3a4193c70ed48de71ed671c844bc0028d288d684eb8dd3e46dde1619de205c87529c6112dc76a9544e532100f4b4d2dda640a14deef2b3e5dcf1b03cce86ce120c248b90f8ae1c76146d78dd0e957cf0b41e9d365cb9a36c9a38bc1ff2054091468fa89b93adf68fc7c8e36a63c2d5a5e28c7d774b254cb800a07b844b307c45c3e45a7db9dc35ef2be031452b14a4d29d905e9d7875fcfe0b976cb8eccddabc6281663ff407cdf8ddb19176c3bc311cb80128d2e88670cdce96bb7272c23d789ce0c2e596affe3d69d911341502c021ae0c7654ba0796f495bbecc7726dbb579ed6ad32c2924501062109b96e18997c19869a6a776be1abf7ebc1893fd384f3bea64923fa46ee7971d70b28d2a048e3501f3d766cc94fc8e956e20a97db2d6fdb5a85369e661ea0582b04802f2fc1308a6cf22f3d56aed5bf9573ff3cf97d4d9dd32c2add09498a754353ba42e1a997a32572d72bfffe2b34e377c747def50a1709502f0f146950a4f165f7b79a5e3b45ae9a7225e6202981570abdce7d32b69d877001c017b70d2ee9234fd1b1726cba45eee6ca482b9a42340d1292c463af887c19c180f6ed58a5f767dfa93baf3e45e3cf3ecc3c78f6d394b154cb03451af059f6cdca967be1afe569dec184abcbc519ee3605b7e549cb06d0560800ff96aca274f98bb3e45a79891c7b5f5620a84fad0c225a84a4d2ca61a8b3d8666dc91b7aeeeecb34fda26c4d1ade5779a3d35937048a34a0e3c1e3fc2cb52cbe4a1e7b0377b8ba33e5f2d7fc4b5a3e90079001ac2e5ac599324cbc25df92637dae3ce16996dfde790744881621292b5d1d5fa4847faf7b3d4eeddfb9466f3f7f8beebce65bca1999c1ba2150a461f575c259596a9a9badf655f799b2e560c2d59df7b87ced2b682a04b0ec34cba4284d8125fde55e7ebe9cbb9e95cfd37cf01b6f248b10abca57486e47ab2a16e6eba9dbc79ad2354013ceefdb310960ea05146958ecfed61035ccc99677ef3b09f9fe56124cb8c2d2d5aa50e5f1ac140258eaddac8c8e128cd2efc8b96e82dc4d2b15f4b5751cb628c1208474ae1b86bf73f1baed91a9d71b4fe7e9ae3f7e5739236dca1995867c01451a16a276f63079dbf726ec742bf185cbfc1b67ec182595519c0190da845787d3642c394cced21fc9b9fd71f9ecbb641806251884902f9d7a7d72d7aba5a14aa5ef3fab07269da91bcefd9a260eefab29e328d9008a3452fdfe96fdfd33137aba95e0c2e58e10d87b97295c83798f0b2025275a1991b541efd293e45c7b9d9c0d959107512382c5348b10d2c5a9d727027660d73abdfe44aeeeb8fa3b9a30bc4f64eac5c40b28d248b5fb5b4354333b5b9e157907bd01e1eaa674f9ebde92561d437106404a956084d70607c9bdecc7726e7b487efb1605039e4f4916132d4248b7b4abe33f0dc3fc33c5afc69a9d2a7ceb313d9473a672470f56eea84f4a36902fa0482315dedf6a7ce91839b63c8f70f5f83daeb6d50aad3d8d7b5c00a932cd2aca966bf5957255bf239fd7f5a99541248b1012ed75c30e027e9fb6ae5ea8d90ffe51337e7ba46efc4d5fe58de15d2fa04823a9c9cf56fbdbdf95a7a62c61ebe09366c2e57135ca5837422ae1d00a908cef6685a759c1a281f286a7595bef91a77d978c808bb5414248dcd70dfd3eb75aeaabf4f16b0feac1493f33a56b807246a6993f5939048a349291c6f7ce92b76d7f424fb79240b83c9df7b866743c80cc3d2e80e410adf0730ec5fd14586293abf202b9f6bd229fabd6542c4a300821bd6a5e9df265c8656fd19a9237f4cc9d9744da0d6ffccd611dd23596c33b50a49114ed840559b297fe5fc24fb79244b85cf235bd23950f66ad102009ee66050bd3e5293b5daecd33e46aaf0abf9ad339cd42b2082189b972e8686bd08773eed07de37f6aca573fe58ce8c7011e28d24868b2d4f4d25079b7bf8070456bc2e56ddba4d0aa93a512eae10112f1edac5071bafc45d972579e27d7fe57e573ee936104986411429262ea15feb3ca0806d5d674406b4aded253b78fd6d40b872a6754f8ae17ab86409146220a57dd8bc7c95db30ce18a9a70b9ea646c1bce840b2051887cf9912163493f79977e53ae8d53e46a5aa980e1d3bf0b30902d4248928957274630a0ea3deb35efd9e9baebda5375e3798745e48b7b5e409146a2bcbf952dc78767caddb62fe1ef6f25897099b8ed0aecbc99091740029460848a32e42f3e529ecadfc8b9a7403e77b50cc36f9e56b89b4508491df90adff30a8b577b73ad5617bfae99b78cd0b48b862967645fe58da6640328d2e8ed0957dbd2ebe471b6205c517d8fabe10d69e591bcc705d05b6b83857de52b3c5c8ed57f92bba158019f2b7220619a45084961f33a285f7eaf5bbb3696ea957f4ed24d976469fcb987296f4c3ae2051469c4fdfdad216a78f12839373f9514b29544c2e592d7b143a1d5df62ad10208e92a5229b024503e45e7eaeecbb9e91d76b676590106259f9faa464c3eff3a862e10b7a6cfa7053b8066ae2f07e9a8c7c01451a717bf0b8f5cd6fc8d7509914f7b7926ac2155e2b34b68d95ca582b0488354671867cc527c8b9ea72b9eb8b14f036460e19881621846dc3d041f972d99bb5676b85663f70ad6eb9ec04e58c4c57dee8f04117f1028a3462777f2b4bcdeffe525e473d13ae584cb90207ee954a997001447f9a15265dc1253679ca7e2ce78e7fc86bdf23c3303afd0ac9228490cf97af8e9f2d0dfb54fceee37a30e7e79a34dca68923fa6af2581b532fa04823cad4cdc9967bf9c4a4996e25997079e46b5a2c551ec53d2e80a8912923bc36b8f4eb72aefa9ddc754b15f03475dccde281624208e9c2ba61c79f992e478b766d5aa6597fffbd6ebbe2e4c8d42b5c5ec0811f28d2880e350547cab9fda5a4996e259970b9e5b56f97b1f50c53b8582b04e83ee6ef9f920c69491fb98a4f9473cbbdf2b5ac56301840b20821240a53af48c3a11154cdde8dfaf8b57fe8ce6bbea1f1e77c4d39a3fa69cad80c0efe40914637d917bebf35efbb72d5ad42b862778fab45c1ad7fee582b2ce6e00cd0d54a7715a5cb577ca49c2b2e96ab66a10281ce77b322a245082124aaf2651811010b06fddab1ae50b3eebb4a337e77ac260eef1b9934b06e08146974b130233f5bce2517c96baf895c3742b8628253fe9a67a5e503692b04e8d2da607f794bbf25e7a6dbe46d59a180cffea96916132d420889e5bae1272b877e9f5bfb77aed107b3ffaabbff74aa72460de85c3744bc80228d43797bab614e96da2aef90c76567c215d3b542c7469a0a010ea9d23d4dbec28172558c946bdf8bf2b91bfe2d584cb4082124feead5f94557f8a7dbd9a635a56feaa9dbc745aae56f3caf2fd5f24091c657bcbf556f0a97a76a7e52156624a17075b4158636fd582a61c205f05f92559ca96051a67c65a7cab571b23ccdab15f4b7235984109280f2155e37f4ba1daadeb341efe5dfa6bbfff87de58eb6296754e7ea17f20514697c66c2d5f8eac9f2381ae576bb11ae98dee3320956e599c235907b5c0007652b5dc1c5fde42efba99c7b9e93d7be33fc1d2a2518841092f0e2153a78d7aba57eaf962f2ad043393fd784f3fa6ae2f97d902ea048e39376c2d943e52ef97da76c215c31972e5ffddb0aad3a9a7b5c00c536f9c395ee1b26c8d9b052c1836f66215984109294f2157edbcbfc77ddbecd7ae3e93cdd7af989ca19d9172980f815691424dea46bff0b59aa9f7b94da363e7370008370c512b74b5efb6685d6fd10e1028bcb563fb9cb7f2677e3521946b86d90120c42084901ed3a285fe176c3dd9b97e991c9bfd6a4917d100388cb9dae82dc01da9760451ae13af8b679a7c953539654ed84493ce10ae35070fb351df5f01cbcc18a2b84c569f2549c299fabee331fd0841042526be2158eb3ad510f4ffeb972461e46a321c441bad22377ba6a12ac2ebee9c311f23aeae549b2fb5bc92b5c6e97fc0db3a5e583b8c70516c42677c5afe46ddfce698410422c92c69a5da6749d6d4a573fa400e250a491aee712a44863bf49c3dca172adbd27e95609937cc2e596b7759d422b8e63ad102c87bf68983c4de59c3e0821c45ae32eeddd5aa99b2e3e4a93c730e5022b156974dcdf72572d48ba3af8a4172e8fb35ec6d6b10817588a60517f39f7e477bee5420821c45ace15d28ac573953b3a93d542b04c91467541b6dadf3f43eed67d4cb8e2bf56e85460efdfa46583592b04cb3412ba2b4729107045bee924841062bd2997dfebd653b75da04923582d84781669f45755af156964a9b564bc3cce1684ab57eae15b9628b4fa58f320ca940b529d810a141f294f43a928c82084104b5b97f66ca9d0f48b8fd494b1190801c44dbac2451ad5f947c4bd0ebee5d5e3e4dcf172d2ca56d20b97d7552763dd9952e9400ee490daad844569726d98a460d0dbf1a031218410cb0a5730e08bbcd1157e1899d542885f91468774c5b348232c5c8d6f7e5f9ee66d4959079f12c215fe1b1fac9a2a9531e182542653c1c57de56edbc5748b10424864b5b0b9beca14ae704d7c1a3200295ba45137275b6d4597cbe3b633e1ea4d7c4d0ba515c3582b849425546c9373f535e251634208219f4cb9c2d235e7a13f53130fbd57a4917f84aaf36339dd0a17660c95635b7e52cb560a08975b5ec72e195b7e15b9e3c2e11c52719d30589c2577ed07c8162184904f2957485b562ed0d40bb334652c6b85d01b451a03b42f86451afb6765abf5dd1fc859b75ac93e204a7ae1f2b8db15d8354d2a1f40453ca4e423c7dee5bf96df67373f5ea982278410d2295ca1907c1ea71e9d7ab6724733e582de90aef418176964a9bde8f7f238ea93f6fdad9459290cdfe3f2352fe8102eeae121d5d6090bd3e4dcf50cd32d4208219f235d86967df4826efc4d1f040052ac48234b8d2f66cbb1f1e9c853504cb812e24dae5685569fcc840b526e9dd05f34441ec74e848b1042c8e70a5753ed6e4dbf78086d859052451afb23851943e56dda94f4f7b75244b8dc11827b274965839872410a3d749c21d7cacb65841f3a46b8082184fc9770753c843ceb6f5746260d1cfe21558a346a6667cbb568945262309432132e53b8fcb5af482b8f360fa99467406a4cb78ca24cb9763f8b6c114208f932edd2b28f9e57ce481be519d0eb451af9b9fd55d5e3228d2cd5cd394af6b50f1c1cac205c09728fcbebd8a6d0fa1fb1560829b44e7894bced3bcccf52ca320821847c7e0cc35053dd6e4dbf6898268fe5d00fbd2f5d3d2dd2083f76dc3aef34b9aacb92be2c23c5842b8c53c1bd93a5650817a4c63aa1a7f25c058241265c841042be74c26518413d3ee33ce58c64ad107a9f9c4f8a349eef5e9146757e965a165d228fa3c9142e37c295706d858def9bc275048f2043f2539426c7e67b986e114208f96ae5323f2b16bc7cbf260eefcb811f92ba48235c96d130275bce2d4fa4cc742bc584cb2dafb35ac6869f4925dce382645f2734692ee714410821e450865cdabba542532ec8e41e17245e91464157265d596a7be3db72376e8a0c5310ae447d0479f74d1d6d851cdc216919245fd90f15705589c78e0921847cb570196a6ddcafbbfffc234d1d97c9811f12ea4e5741978a34b2e4883c76dc9812651929285c1dd2e56bf958a155c7509e01c94b894d8e55d72818f0b252480821e4ab7dcbfcac08067c9af3d01f9433aa2fe5199094451ae1b28cc6978e9673f37329b54e9892c2e571d5cb58ff2ba914e182e45c2754615f79f63c11f900258410420e55ba4a3f785ae3cfe9c35a21241cb99f1469bcf025eb85f9d96a79eb7bf2841f3b46b812bf3c235075bb5482704172125adc47ed75ab986e114208e9927055ef59af1bcefd1a077c48ca228dbad9d96a2bba5c1e973da5d6095354b8c26b85e50aadfa3a6d85908464c85fd85f415c8b104248978cabe3c7d40b07286f34f5f090e0451af947a83affd3eb8443543be7283976bc9a72b295b2132eafab5ac6b60bccc32b6d859064d3ade24cd9cbcee2e52d420821dd30ae901e9df61be58ce4700f897da72bff3f8a34f6cdca967dfe2fe46eda92326f6fa5b870754897ffc09352c540ca3320b984abc826cf965b0f7e701242082187a45ba15064adf0dd597768d2887e1cec21698a34c2d3adbad9596aad98218fab9d095772bdc95525ad381ae1822462a08245fde5dcf766f89393d3032184902e4bd7dab2b7943b3a5353c66570b087e428d278fe0835ce1d2a57f5d2947a7bcb02c2d5215dc19d974ba5ac1542b2d4c19bc2557c8cfc2d15e6c7669093032184902ec5300c556dabd44dbf3d16e1822429d248d79cc903d5f6ee19f2b81d4a552f4969e1f2d7bd21ad3c9af20c481232e55bf643799c8d54c2134208e9d684cb656fd17de34fd7e4311467401214698cb569eab8815af7d17d9dab846e842be9d60aed3b65ac3d83b542480e8ad3e55b35b253b65829248410d23de97afa2fa3951b7e0099033d243879636c7ae8869354bfab24e5dedeb28870754857a0ea0ea99cb54248028ad2d4b6e13653b5902d420821dd562ebd3fe74e4d380fe182c4276774bae63d72913cce96949d6ea5be7099a6ec6bab5068e53154c443e237142e4993afe66df3b392fb5b841042ba17c3086a7df97b1a7f4e1f0ef490d88cb5e996df0ed0ee1573e44ee1e99625265c5e57bd8cada3582b84c4962df3d7a77771865ccd1bb9bf450821a4fbf32df333a46eff16e58eb199075a0ef590c864e899a9df525bc3f6949e6e5940b83acb33aa9f932ab329cf8004668002a5272ae0ada5129e1042480f842b247b4b9d6ebbe2644d1e43532124b67095be324d1e973d251f3bb69870b9e4b56f5368e5a94cb920a1712f3b4b86af25bc10c28981104248b7275c6e67ab1e99726ea49080433d246459c60536dd7bed51aaddb638a5cb32ac235c11637629b83b4f2a43b82051c99073edf532025e265c8410427a34e10a06fc7ae59f13953bba1f877b48d8e9d66bf79fd7519691e2d32d8b4cb83af035152ab4f278d60a2121d7094345e9f2efba9f9302218490a864d1eb0f2a6764b8a9902917241e375d94a9ad4b9f4df9bb5b1613ae7079468d8c1d17d2560809295cc1a201b257bdc6098110424854b2b6ec2de58e1a10795896033e24dadb5bcf4efbbe9a0f6c94db8d70a5dc5d2e7fc3ab9d6f7231e58204a264a08ce261f2b76d14f7b7082184f43486f14953e13053b828ce80c421fc054058b896cf9b218fbb9d09574adee5723528b4f214f3808b7041220957a63c4527c8ef6ee20d2e4208215111ae7071c6ed579ea0c963d238e843c2903b265db75ed25fedfbcb2d519661c109973b4260ef74a97cb054cc411f12e40dae629bdce567c8173022979d092184909ee493cf928773cf54ce28840b128831197ae3beb3239b67d671104b0957c75aa1afa548a135a7b056080942a6549421ffbacb158aac13225c8410427a6c5c0a19865eb8ef4a4d1c8e7041e2ac13fee5f221da5afa4cc7e69945ee6f5950b8c2ff709b656cba482a45b82041265c45e96adf7817c2450821247ace650ad7872fde6b0a575f0efb9018eb84a36dfad78cff95bd619b65ee6e5954b83aa4cbd7304f5a7e04532e480c8afaca75e06ddedf228410123de132ffb5befc5d53b8bec6611f1282a9636d5afbd1df2cd34c6879e1f23af7c9d8f44b840b12a212de5f98a9404b39a70342082151cd9e2d15e64137936a7848006c7ae0bae3d5b87f95a5ca322c2c5ce1c642a702071e952a8ee02164e8dd75c2a503e52e3e49def62d9c0c0821844475c6557f609b6ebbe21b9a3a2e93033ff4f2db5b195a38eb8f72395a2cb74e685de10a4fb9ecdb145a7d1a532ee8e54af841f257fc42014f9d78838b104248d474cb30e4686dd0dfc7ff0ae182de95ad0b6cbae7ea2355b365bedc169c6e595ab8c253aee0ee5cca33a0d7dfe072ad1827c3ef44b80821844455b87c5e979ebdf362e5f11617f42a197af1eeb3e471345972ba6561e1eac0d75aa9d0ea53582b845ebbbfa5a57d65df709302066f7011420889aa72457877d6cd9a70fe619a3c96833ff40e332e1ea8edcb0a2c2b5b16172ef31fbaab41c19d7f60ca05bd275c857de5dffbcf91951c11000034a049444154ce4a78420821247a310c434bdf7b42e3cfee437106f44e15fc980ce5dffe53b5d66eb5643b21c275f021e48fa50af3e05b8c00402f94662cee23fb81855228c8c980104248d4856bfbda25bae19cc338fc43af3c741c6e27dcb0f06f72bbda2df5d031c2f55f8d8576199b7e25950e440020fec2b5e43039daaac3cbf69c0c0821844435a150b838a35e379cfb3f9acc3d2ee8852af887ae3b4aaeb6bd96962d842bb24bea96ffc0935265368d851067321528b4c9e0ee1621849018266f4c3ac51910ff878ec765aaece51b3a650be192d5a5cbebd82b63c3590817c497e24cb517fd3fa15b8410426299bfdff823e58e4200209eef6ed9f4f0f893d4b8a7dcb255f008d7e7dce5f2ef7b4caa188474411c85abbf5cab7e6f0a5747931421841012cd84db6fc33c7fefd59a3492d20c886759864df39fb95a6e671b9e81707dfa21e49d0aadff817910e62e17c407a3c826efd63b3aef6f215c84104262215c86de2fb8cb14ae7e8800c4edeed65faf18a203db1633dd42b8febb3c235075b7b4ec70a65c10fbb20c53ec03a670b5ef2a909870114208898d7245a85c3c47b9a3d2a8868738ad1366e89dc72f91b3bddef277b710aecf9b72b5ae5768ed37102e88030365141f2e5fc3473414124208899d721986b6ac5a601e820fd7d471190801c47cba75c7e559dabde2a5c8951dfc02e1fa5ce90aecbd492a63ad10624cc940f98b4f34257f1d6f7011420889a1700555b377a36ebdfc64265c1097e9d6ab7f3f5b1e5713d32d84eb8b85cbd7b2ac63ca55cc940b628b6fd90fe5713630e1228410123be1323f639cf666dd37fe74f3404c353cc496db2e1dacede5ffb2fcbb5b08d757bdcbe56a5670c704a96c40a4450e3180d8605360d579910bcd84104248acf3c4adc39533aa2f5200312367b44d2fdf738eec4d7b986e215c5f559ee192b77595543e94bb5c10c34af834b5ad9d445506218490b8e48d67f234e17c840b6277776bfa8536ed5c966f9ea59df804c27508532e93e096cba412a65c10230ad3e5dcf58c295cac13124208896dc2c519a5f39fd7f873a88687d809d73353bf2d8fa391754284ebd0a75cbea62285569dc2940b62c0000516f793af71298519841042e2205c41edda58a609e7f5891c8c91038826e132965b7e37581b973c113943b34e88701d3aae1605b7fd492a65ca05d17e83abbfbc8583e56adb13b9cc4c082184c454b8cccf9ae6babd9a76e160840b62d04c68d30bb7fe44f686ed3c748c707515977ccd2552e5514cb920fa13aeb25365f8eac583c7841042622f5c2139da1a74d71f4e330fc8bcc505d19d6e4d33d95cf84f265b08574f1a0bff1c7933094980e89129c7f2710afa1d0817218490b80897d7e3d033775eacbcd148024471ba75814dcfdffc43b535ece2ee16c2d583bb5c8d8b14aa3c9a77b920aa95f0de2dd3651841848b1042483c942bb25638efb99b9433aa0fa200515a254cd7f40b0768f5fbf7c9e372e00d08570fa65c6e8782dbae954a99724174d6098d229bdcbb9fe1f39f1042485c5336ff5fa67075ac81210cd073e1cad073334e97aba5aab32c037740b87a205dbec6850aad389e29174445b882c543e4ac2b343ffa28cc20841012a71957c8d0ce0d25ca1d35c4142eee7141cfb9f992fe5abff01fc816c215adbb5c4d0aeeb89ec642e83925fde52f3a5601770d95f0841042e296f01abbbda54e337e772cb2003d2677b44df97ff9b9da1a765296817045ef2e97b775adb472188d85d0a3b20c2dcd90bbfc0cf9fc46f8eb464e00841042e234e10a451e407e28f74ce58c4a330fcd69880374fb91e39b2eccd0f6b217e4763b4c102e842b5a532e93e09e3f4be583987241f785ab2843de75572b14592744b8082184c44db922c255f0e01f347138b2053d7b77ebf919a7c9e368a29910e18af694cb2d6feb4a85d69dc65d2ee8fea3c745696adbf16ce49b4642082124de53ae651fbda089e71f863840b7a75b775c91a59dcbf3592544b862255d760576dd22950f64ca05dd2bcc28b4c9df54c4748b104248af64e786a5ca0baf14d25408ddbcbbf5ca7de7c8d9ba1fe142b862b75ae86ddfa8d0baef70970bba3edd5a3a509e926fca6bdf8e70114208e98d11971aab77e8f62bbfada9e3321108e8f274ebd64b0769ef9ad7e4a69910e18aedbb5c7605aaee95961dc1940bbadc50e8a91ca3a0bfddfcd0a3129e1042489c7dcb30e471d935f3e60b9007e8d6bb5b6f3f3246ceb65aa65b08573ca65cdb155afb3df300cd63c870e8eb842aee27c7a69b153428cc208410d23b13aef03dae7767dda21bcfebc303c8d0a5e9d69d5764a96aed5bbcbb8570c54fbafcfb1f97ca99724117560a17f795ebc03be6875db053b8000000e28b110c6a53e5871a7f36c519d005c6a469fed3574436bd986e215cf19b72d977cad878ae799066ca058756091f2a3485cbd1a440c0ab600c08ffff06fc0000005f8ecbd1a289c30f8b1ca291093894e9d6037f3e5607362fa2061ee18a7763a153fefa37a48a014cb9e090842bb8748096bc72a35e7bfa3abdf96c7499f7dc78bdf2e444cd7d78bc5e7ce47a0000802fe4957f4ee82ccd40b8e0abee6da52b778c4d15af4f91dbd98270215cbd51a0d12e63db68a99429171c5a6946cd07363d91d757b75c7998fe7275cfb93dfcf39abebae9b24ce55d6053eee87eca030000f80a902d38d4e9d683d71d2367d34e560911aede932e5fc3db0aad3a8ec790e190a5abeec34c3d3ca19f6e3745e98e6b7bc69d7feca75baf1ca8c963a9f705000080e8112e55b9e9a2012a9f770b932d84abb7570bdb15dc39492a45b8e0d0a5abe5e34c3d9167cad2553d93ad19bf47b600000020368f1c3f7feb196aabdfc1740be1ea6d5cf2b5ae5468f537780c190e9dd2feaa7e3f533327f7d36d577743b6fe90a69baf18a029c816000000c4e0eed68c8bfb6b4bd19372bb9d9cf711aec4b8cb15d877a7547138d2055d92ae96451deb85b77561d275d71fd334e3f703986c010000408c84cba6d7fe7e8e1cadd5a670f1ee16c2952835f18e9d0a6dfc9154827041d7d60b6be767eac9298736e90a4fb6c2b2c5640b00000062255b775f3d4c0736becb23c70857a2dde572c97fe09f52f9e1d4c443b78a34fe31e1cba52b7c67eb962bb8b305000000b17ce4d8a6f94f5d2e8fab8db20c842bd1842b3ce5aa96b1f512a65cd0bd228d45999a99f7f9eb8561d9ba99820c00000088e9742b438f4dfca61aaa56ca8d6c215c095ba0d1b8505a3184bb5cd0fd228dbccf4eba226b841464000000402c6be02fb099678d0cad78f76eb99ded3413225c095ca06112dcf50769d920560ba17b451a1f771469dc7af527d5efc816000000c478ba650ad733d3be2b8fbd0ed942b892e031e4964a85d6fd3fa65cd0fd228d0f33f5f4b4744dbb14d9020000805863d35d570ed5b6f217682544b892e53e974381bdf74ba503a562a40bba41f9201d78eb68dd71f940e58ee183000000006247ee189bdefac70572b533dd42b892a926de592b63d3f952c940e401ba46d920d93f3c5e3505c3b4ebd92374ef9519ca199dc60702000000c464ba75ff1f8f52e3ee326ae011ae64c3297ffd5b0aad3c86d5423864426583e55c70acaa0b8ed481594354933f441b661eaebf99d2953b06e90200008068b612a66bda850354fafa54b99c6d4cb710ae242cd070db15dcf1276919532e3804960d9263feb191c95658b63e212c5d3b9f3d42775c6653ce683e1c000000207ac2f5ccf4ff95bd6127b2857025f16a61db2a8536fe88bb5cf09593ad0ed93af233b2f509d5269b9f3c5cf75d9da15ca40b000000a250037fc7efb3b46d5941e46923ceed0857121768d8e5dfff44c7948b9a78f8823b5b1d6b84c33e57b60e4a577e8774fde532d60b010000a067e48cced07b4f5e26475b2dd32d842b15dee672cad83cda3c58235df0dfb2d5fee1f107ef6c7d15d59deb85146900000040b757092fb0e9be6b8f567bdd16640be14a155cf2352c5068cd3729d0802f2cc8385428d2000000806e33d6a69b7f3b48956fdf816c215ca9b75a18d8739754cedb5cd0519061ff9c828cae4817451a000000d0e555c23136bd74efd9b237ed41b810aed49b7279edbb656c3a8bb7b9986c99b2755cb7658b220d000000e81e36fdedda6c556f7c5f6ededc42b85273cae594bfee1569c530a65c1464f448b628d2000000802e37138ecdd4e282ebe472b498e752a65b0857cabecde55070e78d9183370262bd35c2ae14647445ba28d2000000802f2fcac8d0b3334e97bd7117d32d84cb026f73b5ac5268c38f29d0b0da3b5b0b8f8dba6c1dbcd3554091060000007cf12ae19d5764696bd92c640be1b2ca94ab73b5b09c9a78eb1464f4fcce16451a000000d01d72c7a46bf1acebe46c6fa02803e1b29274b52bb8ed6af3303e182149f5c9560fda0829d2000000801e31c6a6c7269c2c47e30e640be1b2e0db5cad2b145af77df3604e6b210519d1bdd3b5f9098a34000000c0a6db2e3b42eb16fd93554284cbba932e7fed4b526536f7b95250b662519041910600000074659570feb357cbe36862ba85705978b5d0d9a0e0f6ab682d4cb135c28ec956efc8d6a7ef746d789c220d0000006b92a1c7267c430d7b5730dd42b8acfe36974bded6750aadfb9e54c2942b350a32e2bf464891060000007c7a95f0d6df1dae2dc533e571d9396f235c10becfe5af7e56aa1c466b210519146900000040cf189ba1f79fb85c2e3bab840817fcfb6d2e675dc76a61e900a42b49ef6c391624ce648b220d000000ebdedb7a3ce7db6adc53218f1bd942b8e0b3d2e5d8abd0eaef50a0414106451a000000d0ad55c25b7e3b40556bde8c5c5be17c8d70c17fbdcde592bf265fa195c7225d1464c4ae486326451a000000a9c89471fdf5fe93bf97c7d5c62a21c2055f285dae1605774d96ca06225d4952905193a06b845f5aa4f10c451a000000a9b54a68d333337ea4a6031b582544b8e02b570bed3b656c3c4b2ae141e4449e6cd9e71f9774b24591060000406aae12de7b4db6aad6bc21b7dbc9791ae182afae8a77cad7f08eb4f218a998295722ded97226704106451a000000d6216f4cbaa68ccd54d1dc1be474b430dd42b8e0d084cb1d997405aaee95960fa1b590820c8a34000000e00b84cba657eefdb5dc6dfbb8b7857041d7570b77cbd836ae63b510e9a22083220d000000f88f55c207ffefebaa5aff81dcb412225cd0bd0791bd2dab145a751c051a095090e148c2828c2e15693c4b910600004032c9d64d17666873e1a3f2b8da592544b8a0dbad859e7055fc9352e551dce7eac5c956876c1d9992b2459106000040f231755c7fcd7b749c5c8e56640be1821e4b97b341c11dff272d43b828c8884391c6931469000000247405fc689b1ecffd8e1af72e8f7c39cf7919e18268ac163af6cad8f46baae229c8a048030000c0e2ab847fbd325b556be7716f0be182e8e294aff12385569e6cca00d215bf828c6196922d8a3400000012bb027efa850354faea14391dcda670b14a887041d4ef73050e3c225566739f2bc60519f6142ec8a0480300002049856b74865ebbef2cb95af753018f7041ccaae29db50aeebc4e2aa52a9e820c8a340000002c736f6b8c4d8fe77c47353b965292817041cca5ab7d97426bbe2d9530e5a220234e451a4f50a4010000d09bf7b6665c64d3aef25972872be03913235c107be9f235bcafd0aa93582d8c6a41c609962bc8a04803000020b1991296ad4b06a9f8e59cce920ca65b0817c40757ab02fb1e949667f12872940a320ee4235b1469000000245a51864dafdc3f42ed8dbb28c940b820feef73352ab8e34fd2b2c1dce7a22083220d0000801494ad7f4efc869af654f0de16c205bdf63e977da78ccd67f33e1705191469000000a4926c5d60d35d571da9ed152fcaed7270ee45b8a037a5cbd7b840a1b5dfe03e1705191469000000a40853c7da54f272ae3cae36ee6d215c9008d2e5af7f43aae43ed7a117641c4f4146948a34eea14803000020ca15f0197aeff14be5683e806c215c9030f7b9dced0aee9e242d1fc27dae4328c840b6a277a76b23451a000000515c25ccd0e339df524bcd26640be182847b9fcbb14fc68e8ba5d20148170519146900000024dd64cba607af3f41fbd7cfebac80e78c8b7041e24957db5a85369c4e89c6e74cb6ec1f215b1469000000242a36dd7e5996362e79422e278f1b235c90b8b81df237bc29ad3886120d0a3228d2000000488afaf7744d1dd75f1fbf709d9cf6665609112e488a128deaa74ce93a1ae9a220a3578a34eea548030000a00b64e8cd7f8c96db5e8b6c215c903c8f22d72bb8676ae4de92559b0b23ef6c5190d12b77ba3650a40100007088d3ad0c3d33fd74d5ef2e47b6102e483ee96a90b1e57ca974a0f54a34c205191fb14648910600004022cb964d775f9da5ea2d1f5392817041f29668ac36a5ebd752c9006b1564cc3f8e820c8a34000000121753b6eeba6aa8362f79441eb7d384e916c205497b9fcbd7b848a1d5275a63b590820c8a3400000092809b2ecc50f96bb972b537b04a887041f237173ae5af7b55a195c7a4b6742da32083220d000080e468249cffcc5572b437225b0817a4cc7d2e57ab02fbee942ab353b2b930bc46e85a484106451a000000092e5c1764e885bffc5cad75db902d840b52ee3e97ab5ec1bd791dcd85c5295690319f35428a34000000129bdc31363d39f5bbaadf55260f25190817a47273e158535206a7847445aadf4dd9a22083220d000080446f24bcef0fc354b36581dc2e07e752840b527ad2d5ba5ac6869f267f73e1b241722c64b2459106000040e23712de7e7996d67cf420f5ef081758a6b9b06d8542ebbe97bc251a65146450a4010000900cd874f32503b5fa837be471db3987225c609de64287fc0df3145a7372d24957788d90ea778a3400000092a291f0c2fefaf8f96be56aaba12403e102cbdde772bbe4dfff9c422b8e499ee6c2ce820cee6ca55691c65f28d20000801464cad80ccd7b78b45c2dfb902d840bac39e50ad7c5b72870e051a9322be1275d146450a4010000903cd3ad0cbdf9d008351fd8d071e6e2ec89708195275d6d0aeebc4eaa383c71275d65835823a44803000020691a09ff31fe2453b6d6cb8d6c215cfc4d80836f74edbc412a1d987875f1146450a401000090446f6dfd33f754d56c5fc2640b102ef80fe9b2ef94b16d6c423d8c1c592364b2459106000040923412de73ed91dab5f215795c341202c2059f2b5ddb646c3da763d2950805191f215b562dd2b883220d00004832d9baf3ca2c6d5dfa94dcce76a65b8070c1174b97af75a58c4d67f5ea7a6178b2659f7f1c0519146950a401000049b04698ae3b2e1fa2351fde2397a38d7b5b8070c157b517bae46b59aed0ea137ba7b990820ca0480300009268b23579b44d252f4d96a3ad9ec916205cd0854957e34285d67d37bed2b58c820ca0480300009247b6665c32588bf3af8f8816932d40b8a08b932ebbfc75af29b4e2f8b84857788dd0b9f058640b28d2000080c47fd4d894ad69170ed0fb4f5f237b330f1b03c205dd7ea32b2c5d73145a794c6cdfe80a176470670b28d20000806460ac4d53c7f5d75b8f5c2847eb01640b102e88c2a4abfaa9984957a4fa7dfeb1c8161c729106d2050000bdc9d471997ae5fe91b237ee94dbede2ac0808174461d2e56a56a0fa61a9626074a56bd9203916529001877ea76b13451a0000d08be48cb669d6ed3f5553d54a640b102e88f67aa14b81037f93560d8b8e74950d929d820ca0480300009284bc0b6c7afee61fc8d9b80dd902840b62b15a684a97b35181bd774a15d93d92ae4841c6020a3280220d00004896b7b64cd9bae574d56f5f8c6c01c205b15e2f6c5160cfcdd2f26e4a57a420833b5b409106000024c964cb94ada7a77d570dbb4a902d40b8205ed2d5a4e0aea952c591a674756db265ff08d982e81769e4225d000010a3b7b69e99fe03d56d2f92dbe5e41c080817c46fbdd0ebac35a52be7d08b34ca06c9b580820c88fe9daecd14690000404cd608333433e79bdab7e103265b807041ef156904774dfceaf54253b6da29c8008a3400002089d60867e69ca2a6bdcb912d40b8a077a5cbebace990aef2233e77bd30f2ce1605194091060000240ba66c3d35e55455ad7bdb942d77477118e73e40b8a057275dce7a0577de282d1ff259e9ea2cc8a8ce678d1028d200008024986c999f1f8f4ffcbaaa377dd8215b9cf500e18284912e87295dbb734de9ca8a485764b2451b2150a40100004943869e9a7aaaf66f785f2ea783f31d205c9088eb85b50aee9c20550e9273c171146440ef16695cca7a21000074a520e394c81a212b84807041624fba4c5ceba7a9e9d513b4ff852c040028d2000080c45e23bcc01669236cae5ace1a21205c9024d265af976bd5ed6a7ae918a40b7aef4e5701451a000070088f1a4fff4147f5bbcb857001c205c9f34e97dbd922cfdabbd5f4f2b1da3f0be9028a3400002001656bda69aadb5144f53b205c909c93aeb074b9d7deafe6d74e64d205146900004042ad113e77f3e96ad85522b7cbc9b90d102e4862e97234cbbdf13135cecd46ba80220d0000e87572c6d8f4ecf4efa96efb62265b8070418adce932ff30736d7e5a4daf9d6c1e7e912ea0480300007a81b1364d1d9ba9e76ffb899c0ddb902d40b820d51e476e9173f3f36a0e4b577e3602001469000040dc9872814d53c6f5d74b7f1baea6aa15912f83399f01c205a987ab5daeed2f9ad2f54d55235d4091060000c4059ba65d38406f3d72a1ec8d3b912d40b820c5275d2ebb5cbbdf51dbbb3f31a52b4bfb1100a04803000062d64498ae19970cd67b4f5f2347f37ed60801e102eb4897737fb1dae79da69a02265dd0cb451a97b15e080090aab295373a5d0b9fff3fb537ef8b3c5bc3390c102eb0d45b5daeba35722e1aa9dad9e1064304007aaf48e31e8a34000052aef6fd2f970dd1d29726777cd9eb41b600e102abd6c637ac937bf16853ba86225dd06b77ba3652a401009052b275c7ef8768f50777cbd15a8f6c01c205d626b24bddb253f6c2cb543787b7ba80220d0000e8c91aa14df75e334c9b8b66cae56833cf19c816205c001ddf3cb5ec967dd944d5bf384cfb79ab0b28d20000806ec8d6a313bfa39d2b5e91dbd98e6c01c205f05fd2e56890b33c47cdaf1ccba40b28d20000804326774c861ebafe241dd8ba2852cec51a21205c005fd860d82ec7c6a7d4fafac9e60118e9028a340000e0cb9b08a78cb569eeddbf517dd51a9a0801e1023854e9f2ec9cab96b7be8b7401451a0000f0850f1a4f1dd75f6ffe63941af7af67aa0508174097da0bdd2eb9f6bcafb6f77e621e7e79201928d2000080cfcad68c8b0768fed357c9d15cc583c680700174bdbdd02d8fdb2177fd3ab57d788eeae60ea3361e28d20000804839c6edbfcfd28af7ef95b3b59a720c40b8007a864bae860db2175e4a6d3c50a401006071c21b07f75e7ba456cd7f90720c40b800a2ba62686f947bc54d6a78f168ee7501451a0000967bcc384c8666e69daaea4d0b381b01c205101be9aa9763edfd6a7efd141d60d2051469000058a789705c7f3d77eb99aaddb1546e97837311205c00b16c3074ed79f7ffb77767f155d5e71ac7ef4d806a3501b156141cea54e59c8efaa95afbb13df628a0b1e0801362d52220a3cc5ac0090d0e38819889510244c3a8cc33220209332410b2b387ec79afb576bc7ace5e6b85849c6a454b4286dfc5f793407be594fdf0beeff35764e1b5f250a6018a3400a0954fb6d234ac679a8adfedab88773f2b842070014d12ba2c53966783e22bef94372f93691728d20080561ab6263c94a90d73062811ad266c81c00534f98a6175a912abb3e4cfefa413dc75e16c1469f466bd10001a678d305d2ff6cdd49ecf5f97190bd04408021770b61a0cad4450891d6314f9e4321a0c71568a342651a4010067f45eebb91e697a77487755ec5ba1a46530d902810b38eb93ae44b56a0e4e57707e5779723379af0b4d77d3957b814a28d2008033f698f1d09eedf5c994bbe43db2b9f68c80b0050217d06ceebaccf262c596dc226f6e862a085da04803005ad4bdd6e8dee76bf9f47e32a355042d10b88066c93264054a64ac7f5081599d79af0b146900400b095b2ff5bb585faf7c4b46ac9ab0050217d0eca75db12a99db872b3ce7225570d7058a3400a05997634c1d7095cabf2e9465c4f81c030217d072deeb8acb38ba50b145d7b8ef75b162088a3400a0594db586f448d3c2ec2c853ca5b22c93cf2f2070012df2bdae8a958aadf8b37c54c783220d00682653ad348defdb49abf307281e3a413906085c408b6f310c1f91b5e94985665fc423c9a0480300ce127ba2654fb6b29fbe420736cf52d28812b440e0025acb7b5dc9445066e99b0a155ecb8a2128d20080b3f0bed688ac735530e90ef98f6e96651a842d10b880d6d56068df75c564547c21a3f8574e753c0f25a3c98a34fab05e08a06ddf6b0def95a62f72ffa188ef10f75a207001adfeb62b725ce696410acdfd39775da04803001a2d68b9f75a6f0ebc5a0737ce48052dcbfd39cce71110b8803610bae23e597bdf52b8f0ead407e2cc54f02218a0716fba28d200d0b6a46958af0e9a35f136790ead936552f90e0217d0f642578a797cb9224b6f972f3f93154350a4010067a88570dc03995a9d3f5089d0f1ba9fb97cf600810b6893b75d86ac48b9cccd4f2938efb2d407630a35d034451a842e00adb11863688f767ae399ab7478fb0219f110c5182070f1170138b962189075e023258a7ea12a5a0cd1c8375d7b29d200d02a5708d354f8464ff98e6c62aa0510b8806f5f31ac09ed5762fd030aceb94815ac1882220d0038ad15c297fb75d1ae15afc94c84095a00810bf89e8792a315b24ade50705e5755e56632ed02451a00f01d532d7b853067eccd2adb552ccb88d63611f27902207001a731ed32ca8a155b7e87bc3999ce6d17210114690040fd546bc243195af9717fb71883ca7780c005fca8428d7099629b062b38af1b851a68f4228d41842e002d60aa35a4673b4d1bda5d87b7cf95110f538c0110b880ff70c530119279304fa14537c89797417d3c1ae5a66b1f451a005ac0546bc4bded55987d9ffcc777cb320d560801021770e6560c93b14a25363ea5eab997c8634fbb080aa04803405b996af548d7eb4f5fa943dbe6ca32224cb5000217d048d3ae7840c6811c453ffd8d53a8c16d1728d200d0dac3d6c8acf35438f53e790f6f747f1612b6000217d0a8d32ecb9455bd57d1758f2934f76267c590691728d200d09a0c49052d7b85f0b5a7ba6ad7caa932e341a65a00810b68ea69975fd691790a2dba51bebc4e146a80220d00ade3562b15b646fded7c2d7efb0179cbb6c832e3341002042ee0ecdd7659deed4aac7f5481828e6e9321810114690068897aa4e9b9bbd2f46aff2efa7259b6cc989fa00510b8806612bcccb88ca3858a2dfd837c791d693204451a005adcadd6983e17a8f8fdc715f51ea82f8ce2e73c40e0029ad56d5760b712db462834f732797233593304451a005a4003613b7d30fcbf54ba6e8612d100410b2070012d60cdb06cb1129fff45fefc4c4a354091068066fbaed6840733b474fa138a060ed7fee121610b2070012d816528193daec4ce498a2cbc2ef5813983691728d200d06ca65a23eefd89668ebb45655f2f96110fcbb24c7e7603042ea025ae19c66555ac50fc8b1e0ae4f36e1728d2007036275aee54eba57e9db561c16845abcb9c7578a65a00810b681df75d076628b1fc167973ed1543821728d200d05435efe738ed83a3fb9caf0553b314f694b8218ba00510b880d6b5661897555da2f896c10aceefe6966a10bc40910680465e1f1cdab3bdde1a7883f6ac9dae44a48aa00510b880d63eed4ac83cb644c6ea7b142870d70cb9ef02451a00cef49b5af6fae0a4472fd4ea82c18af829c500085c405b2bd548f86596bea3d8929be4b5dfeee2d16450a401e00cdc69d953adb10f6468d6e4bfaaead07a9989a82caade010217d0d658cefebc21cbffb5ac2d4f2b34fb2255f176177e6c91466fd60b01d86f6aa52bfb1f576acf9a0f958878996801042e00756f779d58abf8dabeaa9edd599e8f29d600451a004e3f68d95e7df272ad9b3f4146c453f7b3859fb100810bc029a12b19f7c93cf091a24b6f55a0a0b37bdf45a0c0e9dc74e552a401b4c99af754d09af050272dc8ce52d5d1ed328d98bb41c1cf5680c005e0df04afe8312577bda470e1756e8dfc4ca65da04803806b486d21c6b05eed95fbc2ad2adbb94866225cbb3e48d802085c004e2f78993159beaf14dff29c429f5c5e77dfc5c40ba755a4d197220da0b5ae0f0ebba7bda60dffb5be5afe96e2618f2c1e2f06085c00fe8369572a7825cb8b64aceea5ea7cf7ed2e8a35f0bd451aa9d035ae0feb85406b0a5af6fae0a4473b6bcdeca10afb0ea68296c1440b20700138334c77e26507af5577a97af6c56eb106ab86a0480368f5ef69d9616bd26397e8f3dc018afaf63bd32c67aac5cf4780c005e04c3f9a9c123926f3608e62c5bfab2fd660e285efb8e9a2480368c9ef69a56bf4fd195a90dd5b657b56ca8887996801042e004db66a18295362f7144517df20bfbd6a3893e0058a3480d65288312aab830a26dfa983dbe62a69c5dd3f70e34e0b20700168ea628dd40fe1eabd32768c51b4e84655e5ba35f2042f7c6b91c6c3146900cd7ba295a6d17dced7cc71b7ead0d602c542b585184cb5000217806610bc7c3b646e795aa1f95da892c7b717694ca34803689661cb6e1eec99aeb7075dadddab3f502c789c891640e002d06c570dab4b646e1ba2e8c2abe5cb755b0d091ca04803689e416b68cff67a6ff8afb567cdfb32637e821640e002d02282971151d2b35e898dcfca3fa79b3ca9e05549f002451a40330859b56f69f5eca07787dea82d452f2b5875489669c8226801042e002d69dae57e352b562bb6e12905e75de6de78cdcce0f1644217451ac0d928c3b08356af3427686d2c7c51717b75b0b68196b00510b800b4e0f0652542323deb1559ff77850baf73abe429d7a048a3b64883d005347e19c6a8fbced39bcf75d7b6e2290afbca6499715607010217805677df654452c16bb38c0dfd149a7fa97c79946bb4f59baebd1469008d18b6dc328cd79fb95c3b964f55d0b3affe4d457e3601042e00ad3b7cd5044b656c1fa958d10da9e095a94adef1a24883220de08cac0eda13ad9159e7eaa3b137ab74dd74ca3000021780b65b271f55d2b74de6ce318a2cbc56befc0b559993c98d17451a007e30fb462b5d63fa6468662a68ed59fd9e22fea3f56518842d80c005a08d862eeb649dfc6e25764e52ecb3dfaabae042e78338eb866db048a337451ac00f0d5ab6b1f79fafd9aff450e9c67c99311fab8300085c00be2d7cc5950c1f91b1f73d8597dda9d0dc4b521fc4dd5543a65e6dab486310a10bf8deb541fbeb4bfd2ed5fc37ee57d9eee58a477cb22c93a00580c005e0fb6ebc4cd5c42a651dca97b1ea2e050a3ad6062f265e6de1a66b1f451ac0bf79472bdd095a131fe9a4651f3ea68a031b6426c26ed04a12b40010b800fcd075432ba164e55a199bfa2bbcf01a79edb7bc3e267cb585228d89146900a7ac0da66b58af0e7a6ff8afb469d18b8a551fa1080300810bc0190c5f89802cef36195b062950d85dd5b33b3bef79b90829adf1a6ab94220d10b41ce31feca8e9636ed6ae35d3555db94f9611639a0580c005a071eae49d75c3f061197ba729b6e20e05e7fc4c55b9eec48b5af9565aa4d187220db4cdfbac898ffe4c0bdfeeaba35f7f2a23567dca448bb00580c005a0d1d70d0d25631e99c75728fcc5230a175e2f5f7e2767e245f0a2480368798f14a7bef648d7a8de3fd51b03aed7da7963e42dfb3215b442ac0e0220700138bb051b4923a264d526193b9e5770c1350a1664d6062fd60d29d2009abb7467a235ac673bcd18fd3bedfcfc1d052bf7d64ff5095a00085c009a07b7a1ab26ee55f2c81c25d6dea7d082ab9c920dc257eb29d2984491065a831eeecae0901eed943de06a7d913750dec31bdcc97d2a60b98d83fc771d00810b4073bef34a052fd3b341c6972315f9f4570acdfb795dc9066f7ab5dc9bae128a34d0826fb38638d3ac748d7fe842cd18779bbe5cfe8ebce5bb642522f5932c265a00085c005a4ef872bfd644ca641c9aadf8ea3e0acdef2a7f7ea6fb9832532f8a3480467d33cb6d1a1c74d7391a91d55eaf3f738596e50cd691dd2b64c482ac0d02207001685deb86c9784049ef5625768c57f0b35b144e85afaadcccda0ff3946db4c4220d42179a6f01469a86dfd34193fa5daa8f5feca13deb3e56d0b35fa611755706095900085c005a6dc986fd61277c44e6d18532373caac0bcae146db4c09baebd1469a099be9b35ac57bab207fc42eb17bca0f2d25532e321421600021780b67aef65176d78943c9ca7c4bafb1559788daa72321c95bced459106701a6f660ded99aea1bdda6beaa0ebb4f8bdfe2adfb3cc7d9cb8ae0083a00580c00580f0a59a845f966f878c9d2f28baf4764516d82b871de5a16ca3d917694ca248036721688db8f7277af9c9ae9afd4a0fed5e9723dff1129989487dcb20132d00042e00f88ea28d54f84a9e58a5f897a39558fe47056777963fafbe6c83f0459106dadebaa07d9b35ac67ba5e7ca4b3f227dfa9ad4bdf54e0f82e5946d4f9ef86c503c500085c00f003570ecdb892f12a59152b65ee18ab48f11f14fea4abbcf91de5c93919bcb8fba24803adf1adacc1ce342b5dc37ab5d3e47e5df4e1d8bf68f3e2d7e42bff4af188dfbd07256401207001c099b8f572cb36ec8af9647991ac6d4314987b9533f5f2e7dbc12b93c20d8a34d06a265969ce24cb7e37ebc3e76fd2baf963756cef5a25a20159498b020c00042e00688ab28da41154cd89e54a6c1f25f3f33b149c77995bb891ebb61d52b84191065a56f1853dcd7ae9894b35eb95bbb575c954058e7fad93ef645926210b00810b009afedecbfe936e7bed30522eb3728dcc1da3155d7e87220b2e9737af93bb6e48f8a24803cd2e64d9d32b3b688dcc3a4f2ff7efaa9c8977eacb15efe8c4e16d8a87ab5201cba80f58042d00042e00680e53afa4bb7a98a8568d778be25fbfa6c4aa5eaa9edb4d81828ef2e666d4976e10c028d240934fb1ecd28ba13dec75c1767af3d9eb343ffb41ed5c3543d595a56ef1456db0b257062d42160002170034e300e6dc78184ac6fd327dbb943c5ca0d886fe0a7dfa7b450bbbc99393d9a0748300d688451a7dd33588d0d5f6265876c872bea6a70256074d7ebc8bde1971b33e2f18ae83db1729e43fae442cc45b5900085c00d07a4a3752012c7c48c6b16532be1ca9c48adbe5cbbf50d50599ceed17c51b8d73d365872e8a34da4ed01a7c77baf37558cf348de993a9bc7ffe551b8aa6e8e89e558a873d4a3628bd20640120700140eb2ddd705a0f8fc83cf0b1426bfb2bb9f25605e77671c2973f3fb3f6b165a65f1469e0df350ada532cbbf0e2b91ee9fae7239d3563fc9fb42467a88eec289419f3d5975ed02c0880c005006db074c3f93068286984940c1d927962b5cc3d5364aceba3d0a2ee8a2eb84c55b91dddf28d9c93218c10f5638b342653a4d16aca2e86ded35e2f3edc596f0ebe5185ef3caa1d5f4c57c5c1cd8a064fc832630d0316410b00810b0008600d9a0fadb86aa2e532cb8b15de3e51f155bd145e788dfc059d14c8afbdffb20b385221ec040f2fffb0228dde1469b49ca28b74a7e8c2fe7e78af748dc83a4f53075ea7796ff4d1fac553547160a3e2a1ca0695eddc630100810b004ebf78c3f99a5032e197153c20eb78b1125f4d5460f97d0a15fd56b1c26eaacaeb246f5e2a84d505af0c42d8f715693c4c9146b32cb9b07f5d5b7431e2de9f68f2e397287bf07f2bef95fbb47df9349597ae562860975d049d7f3f781b0b00085c0070662760274398195532b857d6b1258aef7a4d351b1f52b0f05a797332149e95297f7e862aec120ea78883a0f52f451ad328d2683e13ac34a7aadd9e600dbfa783b29fbd4a9fbedf5f5b9764eb68c96a45fc479db55ba7a6bdee0f2108590040e00280c674ea87cf93cc98be09ec50cdc1198a6f1f2963d55d4a2cf9b5fcb37ea6cada220e8f53c2518b220d8a349af20dacbbddc995537091fa7eec03197a6bf00dca9fdc53cbf34769ffe6398a068ed4aed45ad4b50300810b009a570147fd0420c58cab265629abba54c6b115324a5e97b9a99f8245372b5c78a5c2f32ea92be370df04cbac6b443c4191067ea4c1b52b817663a0d32078b73db9eaa0f10f76d4c4c72ed1fba3ffa04f3f7842db96bdad237bd6c87f629fe211bfacd43faf0dc295c5140b00085c00d0126ec02cabc1af6b123e25035fcb38f289c23b262bb2fe09992bffa848e135f2e67756f5ac8ef239f76017d486afccda695806451af8d74a767b7275971bb4dc628b761a9975ae5e7ef2727d3ce136154eebaff58bb375e8ab62054e94ca8c07ff255831c50200021700b4c2328eda364423ac64ac4a56f0a0ac13ab5473f043c5b78d90aff87f9c528ec4a2ab149ad7459e9c8e4e314755ae5b4d5f5917c85a7e18ab2bd2e84b91c6b71559d881aafed7e9b56b81ed34ee814cbdfa6457bd3eb0bb3e7af17fb52cf739ed5a9babf2d235aaf61c562cec959988ca7d68d80d56ee57c2150010b800a0ad9571244f5947b4bf4f54ab26b85749cf1a250ecd516ce7647db3ed29192bef50606e37e74d30bb98233c3bd39988d953b08a99997513b1ca1616c29c228d54e81ad7bbedae17d69758a43bf7567691c5887bd235aca7bb2238a1efc5faf0f95bf4d9f4015abb60a24ab72c706ad9c3de43ce4aa013ac9cd6c09393558bc9150010b80000df59ca913c25803528e7882a19daaf9a8a25324ade5468d3304557fd4d35abfe2273e96f5381acab731f661774787333e4cb77276375651da7a048a3e94a2b4e35246558cff454a8726fad86f46aaf171ee9aca9837ea98fc6ff4905af66a9e8a3a1dabee23d95ed2e563450960a534683fb2a8b75400020700100cef424ecffdf88994e3b624dc2af9ae831a7aadef06c51bcec53254aa629f9d548591b1e54b0f83679e7fd52b14557396f8745e67591afe042799c1545f7edb04afbfb9cccba77c44e4eca4e167934459947556ecb2ad238b9f677723a7572e5cf6d053cc7f9deae5a1fdde702bdd0b7b3263d7e895e7af20abd37ea56e7f1e0153903b5a5385b255b3fd5b1fd9be4abd8ab70f509c5a301b7c8c234ea56011b8471d6020180c0050068eabb30ab6149c7a9bf6faf2846cb5453bd5bdf54ad53b27c91a27ba629bc6d82c21b9e5162cd7db23eff93129fdda8ea7957c83beb62797232149add51c1591d152870cb3caa721b4ec5ea2bee33eb3598a2fdf8228d717d9aa648c3094b7553a8f4da86bffa96bfc1dff2ff1f5a5b503122c55ef91b99f5534d78f8624d1d74bd3e1c7593f226fd55f3df7a5c4bf2c6695dd19bdab361b68eef5b9b0a54a58a06ca9ddb2a37489975d32afbef5bddd4ca621d1000085c008016b49e58bba26819a77c90b7dc5f1b9154200ba8265ea564e498cc40a94ccf6659c797e99b63854e91c73725af28b16d98aa573dacc092bbe45b7c9baa8b6e52a4e8378a15dda844d1b5328bae50bcb09b53f261bf3de6cdbbd0adbd4fb1571aedd28f93c51f27d9a1cee6de9cd5b37f6fdfb4f3f5f2c3ed7e50e83a75e2543779b2bfdeedaeef9d7c87cafddefddf86f66aaf1159e76974ef0c4d78a89326f5fbb95eee7f995e7bfa4a4df9c7357afdd91b943de466bd3be6cf9a39294b85effc5d5fcc1ea56dcba6a964d3273af8d51255ecdf28ff895205fd158a043d8a85fd32e291062b7ff5018bf20a0020700100dae0baa2d9703266d506b40635e2a673435613f7a826724435c152d504be528d77936a2a5739212d7ee813454a6628bc335bc1ad1314de324a89adc314df3c40d1f54f28b2e6018557dea3e0d2ff51f567b729b0e877f21576976ffef529d7aa6acee50edfec4b55fac1257ae991f33432ab8386f5b243d239a9c09496fa3e1592eee9a091f776d0f3f79d9b0a4b3fd5e8fb3334fec14e7ae1918bf4d2135d5381e96a650feaaeb787ff5eef8fb95d3327f650c19407b560dad32a9a3e50c533876859fe28ad9a3f491b8adfd697ab0b54b2b5588776af52f9be0daa3cb25dfe63bb14f21e523ce29369c41bfcb5b00b2accba953ff7f799500100085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000085c0000000040e0020000000002170000000080c00500000000042e0000000020700100000000ce94ff0367c3649cebf9fa5f0000000049454e44ae426082, NULL, NULL, '-', '12-05-2022 06:05 PM [EAT +03:00]', 'employee', '-', '31dcba18f6d09556c85a9ea2669f5a57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_no` (`member_no`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_barangay`
--
ALTER TABLE `tbl_barangay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_no` (`member_no`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_no` (`member_no`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_no` (`member_no`);

--
-- Indexes for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_no` (`member_no`);

--
-- Indexes for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_no` (`member_no`);

--
-- Indexes for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_no` (`member_no`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_no` (`member_no`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`member_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_barangay`
--
ALTER TABLE `tbl_barangay`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `review_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  ADD CONSTRAINT `tbl_academic_qualification_ibfk_1` FOREIGN KEY (`member_no`) REFERENCES `tbl_users` (`member_no`);

--
-- Constraints for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD CONSTRAINT `tbl_experience_ibfk_1` FOREIGN KEY (`member_no`) REFERENCES `tbl_users` (`member_no`);

--
-- Constraints for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD CONSTRAINT `tbl_job_applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `tbl_jobs` (`job_id`);

--
-- Constraints for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD CONSTRAINT `tbl_language_ibfk_1` FOREIGN KEY (`member_no`) REFERENCES `tbl_users` (`member_no`);

--
-- Constraints for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  ADD CONSTRAINT `tbl_other_attachments_ibfk_1` FOREIGN KEY (`member_no`) REFERENCES `tbl_users` (`member_no`);

--
-- Constraints for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  ADD CONSTRAINT `tbl_professional_qualification_ibfk_1` FOREIGN KEY (`member_no`) REFERENCES `tbl_users` (`member_no`);

--
-- Constraints for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  ADD CONSTRAINT `tbl_referees_ibfk_1` FOREIGN KEY (`member_no`) REFERENCES `tbl_users` (`member_no`);

--
-- Constraints for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD CONSTRAINT `tbl_training_ibfk_1` FOREIGN KEY (`member_no`) REFERENCES `tbl_users` (`member_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
