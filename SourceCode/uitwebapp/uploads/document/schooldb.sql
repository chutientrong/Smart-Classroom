-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2022 at 06:48 AM
-- Server version: 5.7.33
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `academic_syllabus_id` int(11) NOT NULL,
  `academic_syllabus_code` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `class_id` int(11) DEFAULT NULL,
  `uploader_type` longtext COLLATE utf8_unicode_ci,
  `uploader_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `file_name` longtext COLLATE utf8_unicode_ci,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `accountant_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  `password` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `email`, `password`) VALUES
(1, 'account', 'account@account.com', 'ca20728d35f00c3a4c21b1fc8b0086b59f89df2d');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  `password` longtext COLLATE utf8_unicode_ci,
  `level` longtext COLLATE utf8_unicode_ci,
  `authentication_key` longtext COLLATE utf8_unicode_ci,
  `phone` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `authentication_key`, `phone`, `address`) VALUES
(1, 'Admin', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_routine_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `timestamp`, `year`, `class_id`, `section_id`, `student_id`, `class_routine_id`, `status`) VALUES
(1, '1649095200', '2021-2022', 1, 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `author` longtext COLLATE utf8_unicode_ci,
  `class_id` longtext COLLATE utf8_unicode_ci,
  `price` longtext COLLATE utf8_unicode_ci,
  `total_copies` int(11) DEFAULT NULL,
  `issued_copies` int(11) DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci,
  `file_name` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_request`
--

CREATE TABLE `book_request` (
  `book_request_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `issue_start_date` longtext COLLATE utf8_unicode_ci,
  `issue_end_date` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('18rfe0blaeru7f84bi6q3rglhjha6hvo', '127.0.0.1', 1650259311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235393331313b),
('2v5l9nckovrq0qldem240c1s7sit7pjf', '::1', 1649042120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393034323132303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('45q2gsulvup353j9l2e55p3bnm5boasi', '127.0.0.1', 1650614481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303631343438313b),
('46vvp409achjqnru222g8n9jtqn0oteu', '127.0.0.1', 1650685978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303638353937383b),
('52pl7t6iunq472u02ir63k54dmudlhbe', '::1', 1649064582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393036343538323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('a2c8cjdh0upr1kh9fs5gvekja5vcl1k0', '127.0.0.1', 1650259794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235393739313b),
('ga3ji57fhqe272fmk0h71t5h49iedsii', '::1', 1649042411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393034323132303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('hro60okmjf1ck0ppkgrp211qcsmqgj2h', '127.0.0.1', 1650259791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235393739313b),
('mr14mgjhvaa0buvp396tljumne34fkll', '127.0.0.1', 1650630258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303633303135363b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a2274656163686572223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('p97toi586s18cop4vjoedlikrhc8ainp', '127.0.0.1', 1650259758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235393734373b),
('pn2i9ei8fguqnfcbdcedfj9q63t72g77', '::1', 1649064859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393036343538323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('pok30tcjqssf1stfmse1eedfcbjn4cv4', '::1', 1649064238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393036343233383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2241646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('qarfbub3gj7k46rqf3c3lbqh17lo2vo9', '127.0.0.1', 1650258914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235383931343b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a2274656163686572223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('r12t24amk1lp2a07hql610vu44ujq2lt', '::1', 1649063787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393036333738373b706172656e745f6c6f67696e7c733a313a2231223b706172656e745f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a363a22706172656e74223b6c6f67696e5f747970657c733a363a22706172656e74223b);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` varchar(11) COLLATE utf8_unicode_ci DEFAULT '',
  `name_numeric` varchar(3) COLLATE utf8_unicode_ci DEFAULT '',
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(1, 'TEST', 'TE1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_end` int(11) DEFAULT NULL,
  `time_start_min` int(11) DEFAULT NULL,
  `time_end_min` int(11) DEFAULT NULL,
  `day` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `section_id`, `subject_id`, `time_start`, `time_end`, `time_start_min`, `time_end_min`, `day`, `year`) VALUES
(1, 1, 2, 1, 7, 10, 30, 30, 'sunday', '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `file_name` longtext COLLATE utf8_unicode_ci,
  `file_type` longtext COLLATE utf8_unicode_ci,
  `class_id` longtext COLLATE utf8_unicode_ci,
  `teacher_id` int(11) DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `number_of_room` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL,
  `enroll_code` longtext COLLATE utf8_unicode_ci,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `date_added` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enroll_id`, `enroll_code`, `student_id`, `class_id`, `section_id`, `roll`, `date_added`, `year`) VALUES
(1, '4c1484e', 1, 1, 1, NULL, '1649059176', '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `date` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `date`, `year`, `comment`) VALUES
(1, 'test', '04/05/2022', '2021-2022', 'sdsad');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_events`
--

CREATE TABLE `frontend_events` (
  `frontend_events_id` int(11) NOT NULL,
  `title` text,
  `timestamp` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery`
--

CREATE TABLE `frontend_gallery` (
  `frontend_gallery_id` int(11) NOT NULL,
  `title` text,
  `description` longtext,
  `date_added` int(11) DEFAULT NULL,
  `image` text,
  `show_on_website` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery_image`
--

CREATE TABLE `frontend_gallery_image` (
  `frontend_gallery_image_id` int(11) NOT NULL,
  `frontend_gallery_id` int(11) DEFAULT NULL,
  `title` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_general_settings`
--

CREATE TABLE `frontend_general_settings` (
  `frontend_general_settings_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frontend_general_settings`
--

INSERT INTO `frontend_general_settings` (`frontend_general_settings_id`, `type`, `description`) VALUES
(1, 'about_us', ''),
(2, 'terms_conditions', ''),
(3, 'privacy_policy', ''),
(4, 'social_links', '[{\"facebook\":\"http://facebook.com\",\"twitter\":\"http://twitter.com\",\"linkedin\":\"http://linkedin.com\",\"google\":\"http://google.com\",\"youtube\":\"http://youtube.com\",\"instagram\":\"http://instagram.com\"}]'),
(5, 'school_title', ''),
(6, 'school_logo', ''),
(7, 'school_location', '51.7548164,-1.2565555'),
(8, 'address', ''),
(9, 'phone', ''),
(10, 'email', ''),
(11, 'fax', ''),
(12, 'header_logo', ''),
(13, 'footer_logo', ''),
(14, 'copyright_text', ''),
(15, 'about_us_image', 'about_us.png'),
(16, 'slider_images', '[{\"title\":\"We rock the big stage\",\"description\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected \",\"image\":\"1.jpg\"},{\"title\":\"Making this the first true generator on the Internet\",\"description\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected \",\"image\":\"2.jpg\"},{\"title\":\"There are many variations of passages of Lorem Ipsum\",\"description\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected \",\"image\":\"3.jpg\"}]'),
(17, 'theme', 'ultimate'),
(18, 'homepage_note_title', ''),
(19, 'homepage_note_description', ''),
(20, 'recaptcha_site_key', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_news`
--

CREATE TABLE `frontend_news` (
  `frontend_news_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `date_added` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `grade_point` longtext COLLATE utf8_unicode_ci,
  `mark_from` int(11) DEFAULT NULL,
  `mark_upto` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `comment`) VALUES
(1, 'TESTGRADE', '10', 0, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

CREATE TABLE `group_message` (
  `group_message_id` int(11) NOT NULL,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_message_thread`
--

CREATE TABLE `group_message_thread` (
  `group_message_thread_id` int(11) NOT NULL,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci,
  `members` longtext COLLATE utf8_unicode_ci,
  `group_name` longtext COLLATE utf8_unicode_ci,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci,
  `created_timestamp` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `amount` int(11) DEFAULT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci,
  `due` longtext COLLATE utf8_unicode_ci,
  `creation_timestamp` int(11) DEFAULT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci,
  `payment_method` longtext COLLATE utf8_unicode_ci,
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `status` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci,
  `bengali` longtext COLLATE utf8_unicode_ci,
  `spanish` longtext COLLATE utf8_unicode_ci,
  `arabic` longtext COLLATE utf8_unicode_ci,
  `dutch` longtext COLLATE utf8_unicode_ci,
  `russian` longtext COLLATE utf8_unicode_ci,
  `chinese` longtext COLLATE utf8_unicode_ci,
  `turkish` longtext COLLATE utf8_unicode_ci,
  `portuguese` longtext COLLATE utf8_unicode_ci,
  `hungarian` longtext COLLATE utf8_unicode_ci,
  `french` longtext COLLATE utf8_unicode_ci,
  `greek` longtext COLLATE utf8_unicode_ci,
  `german` longtext COLLATE utf8_unicode_ci,
  `italian` longtext COLLATE utf8_unicode_ci,
  `thai` longtext COLLATE utf8_unicode_ci,
  `urdu` longtext COLLATE utf8_unicode_ci,
  `hindi` longtext COLLATE utf8_unicode_ci,
  `latin` longtext COLLATE utf8_unicode_ci,
  `indonesian` longtext COLLATE utf8_unicode_ci,
  `japanese` longtext COLLATE utf8_unicode_ci,
  `korean` longtext COLLATE utf8_unicode_ci,
  `vietnamese` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`, `vietnamese`) VALUES
(1, 'class_routine', 'Class Routine', 'ক্লাস রুটিন', 'rutina de clase', 'روتين الصف', 'klasse Routine', 'Рутинное Класс', '常规类', 'sınıf Rutin', 'classe de rotina', 'class rutin', 'classe routine', 'Κλάση ρουτίνας', 'Klasse Routine', 'Routine Class', 'ประจำชั้น', 'کلاس ضابطہء', 'कक्षा नियमित', 'Class DEFUNCTORIUS', 'kelas rutin', 'クラスルーチン', '클래스 루틴', NULL),
(2, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', 'لوحة القيادة', 'Dashboard', 'Панель приборов', '仪表板', 'gösterge paneli', 'painel de instrumentos', 'Műszerfal', 'Tableau de bord', 'Ταμπλό', 'Instrumententafel', 'Cruscotto', 'แผงควบคุม', 'ڈیش بورڈ', 'डैशबोर्ड', 'Dashboard', 'Dasbor', 'ダッシュボード', '계기반', NULL),
(3, 'student', 'Student', 'ছাত্র', 'Estudiante', 'طالب علم', 'Student', 'Студент', '学生', 'öğrenci', 'Aluna', 'Diák', 'Élève', 'Φοιτητής', 'Schüler', 'Alunno', 'นักเรียน', 'طالب علم', 'छात्र', 'Student', 'Mahasiswa', '学生', '학생', NULL),
(4, 'admit_student', 'Admit Student', 'প্রবেশপত্র স্টুডেন্ট', 'admitir Estudiante', 'أعترف الطلاب', 'toegeven Student', 'Признайтесь Student', '承认学生', 'Öğrenci itiraf', 'Admita Student', 'Valld Student', 'Admettez étudiant', 'Παραδέξου Φοιτητής', 'Admit Studenten', 'ammettere Student', 'ยอมรับนักศึกษา', 'طالب علم کو داخلہ', 'मान लो छात्र', 'Discipulus Nunquid concedam', 'akui Mahasiswa', '学生を認めます', '학생을 인정', NULL),
(5, 'admit_bulk_student', 'Admit Bulk Student', 'বাল্ক শিক্ষার্থীর প্রবেশপত্র', 'Estudiante admitir a granel', 'أعترف طالب السائبة', 'Toegeven Bulk Student', 'Признайтесь Bulk Student', '承认散装学生', 'Toplu Öğrenci itiraf', 'Admita Student massa', 'Valld Tömeges Student', 'Admettez étudiant en vrac', 'Παραδέξου Μαζική Φοιτητής', 'Zugeben, Bulk-Studenten', 'Ammettere Student Bulk', 'ยอมรับว่าเป็นกลุ่มนักศึกษา', 'بلک طالب علم کو داخلہ', 'थोक छात्र एडमिट', 'Discipulus admittere Bulk', 'Akui Mahasiswa Massal', 'バルク学生を認めます', '대량 학생을 인정', NULL),
(6, 'student_information', 'Student Information', 'ছাত্র তথ্য', 'Información del estudiante', 'معلومات الطالب', 'studenten Informatie', 'информация для студентов', '学生信息', 'Öğrenci Bilgi', 'Informações do estudante', 'hallgatói Információs', 'information sur les étudiants', 'Πληροφορίες φοιτητή', 'Student Information', 'Informazioni per studenti', 'ข้อมูลนักศึกษา', 'طالب علم کی معلومات', 'छात्र जानकारी', 'Student Information', 'Informasi Mahasiswa', '学生情報', '학생 정보', NULL),
(7, 'class', 'Class', 'শ্রেণী', 'Clase', 'صف مدرسي', 'Klasse', 'Класс', '类', 'sınıf', 'Classe', 'Osztály', 'Classe', 'Τάξη', 'Klasse', 'Classe', 'ชั้น', 'کلاس', 'कक्षा', 'Class', 'Kelas', 'クラス', '수업', NULL),
(8, 'student_promotion', 'Student Promotion', 'ছাত্র প্রোমোশন', 'Promoción del estudiante', 'تعزيز طالب', 'student Promotion', 'Студент Продвижение', '学生优惠', 'Öğrenci Tanıtım', 'Promoção Student', 'Student Promotion', 'promotion des étudiants', 'φοιτητής Προώθηση', 'Studentenförderung', 'Student Promozione', 'โปรโมชั่นนักศึกษา', 'Student کی پروموشن', 'छात्र प्रमोशन', 'Discipulus Promotion', 'Promosi mahasiswa', '学生プロモーション', '학생 프로모션', NULL),
(9, 'teacher', 'Teacher', 'শিক্ষক', 'Profesor', 'مدرس', 'Leraar', 'учитель', '老师', 'öğretmen', 'Professor', 'Tanár', 'Professeur', 'Δάσκαλος', 'Lehrer', 'Insegnante', 'ครู', 'ٹیچر', 'अध्यापक', 'magister', 'Guru', '先生', '선생', NULL),
(10, 'parents', 'Parents', 'মাতাপিতা', 'padres', 'الآباء', 'Ouders', 'Родители', '父母', 'ebeveyn', 'Pais', 'A szülők', 'Des parents', 'Γονείς', 'Eltern', 'genitori', 'พ่อแม่', 'والدین', 'माता-पिता', 'Parentes', 'Orangtua', '親', '부모님', NULL),
(11, 'manage_classes', 'Manage Classes', 'ক্লাস পরিচালনা', 'Manejo de Clases', 'إدارة الفصول الدراسية', 'Beheer klassen', 'Управление Классы', '管理类', 'Sınıfları yönetme', 'Gerenciar Classes', 'kezelése Osztályok', 'Gérer les classes', 'διαχειριστείτε Μαθήματα', 'verwalten Klassen', 'gestire le classi', 'จัดการชั้นเรียน', 'کلاسز انتظام کریں', 'कक्षाओं को प्रबंधित', 'Classes Manage', 'mengelola Kelas', 'クラスの管理', '클래스 관리', NULL),
(12, 'manage_sections', 'Manage Sections', 'বিভাগগুলি পরিচালনা', 'Sectores de manejo', 'إدارة الأقسام', 'Beheer Secties', 'Управление разделов', '管理版面', 'Bölümleri yönetmek', 'Gerenciar seções', 'Panelek kezelése', 'Gérer les sections', 'διαχειριστείτε Ενότητες', 'Abschnitte verwalten', 'gestire Sezioni', 'จัดการส่วน', 'حصے انتظام کریں', 'वर्गों का प्रबंधन', 'Sectionum Manage', 'mengelola Bagian', 'セクションを管理', '섹션 관리', NULL),
(13, 'subject', 'Subject', 'বিষয়', 'Tema', 'موضوع', 'Onderwerpen', 'Предмет', '学科', 'konu', 'Sujeito', 'Tantárgy', 'Assujettir', 'Θέμα', 'Fach', 'Soggetto', 'เรื่อง', 'موضوع', 'विषय', 'Subject', 'Subyek', 'テーマ', '제목', NULL),
(14, 'daily_attendance', 'Daily Attendance', 'দৈনিক এ্যাটেনডেন্স', 'Asistencia diaria', 'الحضور اليومي', 'dagelijkse aanwezigheid', 'Ежедневная посещаемость', '日常考勤', 'günlük Seyirci', 'Presença diária', 'napi látogatottsága', 'présences quotidiennes', 'καθημερινή Συμμετοχή', 'Tägliche Teilnahme', 'La frequenza giornaliera', 'การเข้าร่วมประชุมทุกวัน', 'روزانہ حاضری', 'दैनिक उपस्थिति', 'cotidianarum', 'Kehadiran harian', '毎日の出席', '매일 출석', NULL),
(15, 'exam', 'Exam', 'পরীক্ষা', 'Examen', 'امتحان', 'tentamen', 'Экзамен', '考试', 'sınav', 'Exame', 'Vizsga', 'Examen', 'Εξέταση', 'Prüfung', 'Esame', 'การสอบ', 'امتحان', 'परीक्षा', 'IV', 'Ujian', '試験', '시험', NULL),
(16, 'exam_list', 'Exam List', 'পরীক্ষার তালিকা', 'Lista de examen', 'قائمة الامتحان', 'examen Lijst', 'Список экзамен', '考试名单', 'sınav listesi', 'Lista de exame', 'vizsga listája', 'Liste d\'examen', 'Λίστα εξετάσεις', 'Prüfungsliste', 'Lista esame', 'รายการสอบ', 'امتحان کی فہرست', 'परीक्षा सूची', 'IV List', 'Daftar ujian', '試験のリスト', '시험 목록', NULL),
(17, 'exam_grades', 'Exam Grades', 'পরীক্ষার বাংলাদেশের', 'Niveles de examen', 'درجات الامتحان', 'examen Grades', 'экзамен Сорта', '考试成绩', 'sınav Sınıflar', 'Notas da Prova', 'vizsga fokozat', 'Notes d\'examen', 'κατηγορίες εξετάσεις', 'Prüfungseinstufung', 'Voti di esame', 'สอบเกรด', 'امتحان گریڈز', 'परीक्षा ग्रेड', 'IV gradus', 'Kelas ujian', '試験評価', '시험 성적', NULL),
(18, 'manage_marks', 'Manage Marks', 'মার্কস পরিচালনা', 'Manejo de marcas', 'إدارة العلامات', 'Beheer Marks', 'Управление Marks', '商标管理', 'Marks yönet', 'Gerenciar Marcas', 'Kezelés Marks', 'Gérer les marques', 'διαχειριστείτε σήματα', 'verwalten Marks', 'gestire Marks', 'จัดการ Marks', 'مارکس کو منظم کریں', 'मार्क्स का प्रबंधन करें', 'Manage Marks', 'mengelola Marks', 'マークを管理します', '마크 관리', NULL),
(19, 'send_marks_by_sms', 'Send Marks By Sms', 'মার্কস পাঠান এসএমএস', 'Enviar por sms Marcas', 'إرسال ماركس عن طريق الرسائل القصيرة', 'Stuur Marks via SMS', 'Отправить Marks По Sms', '马克斯发送短信', 'Sms tarafından Marks gönder', 'Enviar Marcas por SMS', 'Küldj SMS-ben Marks', 'Envoyer Marks Par Sms', 'Αποστολή σημάτων μέσω SMS', 'Senden Marks von Sms', 'Invia Marks via SMS', 'ส่งเครื่องหมายโดยการส่ง SMS', 'SMS کے ذریعے مارکس کا حساب', 'मार्क्स भेजें एसएमएस', 'Send marcas SMS', 'Kirim Marks Dengan Sms', 'SMSでマークを送ります', 'SMS로 마크 보내기', NULL),
(20, 'tabulation_sheet', 'Tabulation Sheet', 'ট্যাবুলেশন শিট', 'Hoja de Tabulación', 'ورقة تبويب', 'tabel Sheet', 'Табуляционная Sheet', '制表表', 'Çizelge Sayfası', 'Folha de tabulação', 'táblázatrendszer Sheet', 'Tabulation Sheet', 'Φύλλο Υπολογισμού', 'Tabulablatt', 'tabulazione Scheda', 'แผ่นการจัดระเบียบ', 'ٹیبیولیشن شیٹ', 'सारणीकरण शीट', 'tabularia Sheet', 'tabulasi Lembar', '集計シート', '집계 시트', NULL),
(21, 'accounting', 'Accounting', 'হিসাবরক্ষণ', 'Contabilidad', 'محاسبة', 'Accounting', 'бухгалтерский учет', '会计', 'Muhasebe', 'Contabilidade', 'Számvitel', 'Comptabilité', 'Λογιστική', 'Buchhaltung', 'Contabilità', 'การบัญชี', 'اکاونٹنگ', 'लेखांकन', 'arbitrans', 'Akuntansi', '会計', '회계', NULL),
(22, 'create_student_payment', 'Create Student Payment', 'স্টুডেন্ট পেমেন্ট তৈরি করুন', 'Crear Pago Estudiante', 'إنشاء طالب الدفع', 'Maak Student Betaling', 'Создать Student Оплата', '建立学生缴付', 'Öğrenci Ödeme oluştur', 'Criar Student pagamento', 'Create Student fizetés', 'Créer Paiement étudiant', 'Δημιουργία Φοιτητών Πληρωμής', 'Erstellen Studenten Zahlung', 'Creare Student pagamento', 'สร้างการชำระเงินนักศึกษา', 'Student کی ادائیگی بنائیں', 'छात्र भुगतान बनाएं', 'Create Discipulus Payment', 'Buat Mahasiswa Pembayaran', '学生の支払いを作成します。', '학생 지불 만들기', NULL),
(23, 'student_payments', 'Student Payments', 'ছাত্র পেমেন্টস্', 'Los pagos de los estudiantes', 'المدفوعات طالب', 'student Payments', 'Студенческие платежи', '学生付款', 'Öğrenci Ödemeler', 'Pagamentos de estudante', 'Student kifizetések', 'Les paiements d\'étudiants', 'Πληρωμές φοιτητής', 'Studenten Zahlungen', 'Pagamenti studenti', 'การชำระเงินนักศึกษา', 'Student کی ادائیگیاں', 'छात्र भुगतान', 'Discipulus liberate', 'Pembayaran Mahasiswa', '学生の支払い', '학생 지급', NULL),
(24, 'expense', 'Expense', 'খরচ', 'Gastos', 'مصروف', 'Kosten', 'расходы', '费用', 'gider', 'Despesa', 'Költség', 'Frais', 'Δαπάνη', 'Ausgabe', 'Spese', 'ค่าใช้จ่าย', 'خرچہ', 'व्यय', 'expense', 'Biaya', '費用', '비용', NULL),
(25, 'expense_category', 'Expense Category', 'ব্যায়ের শ্রেণী', 'Categoría del gasto', 'حساب الفئة', 'Expense Categorie', 'Expense Категория', '费用类别', 'gider Kategori', 'Categoria de despesa', 'Költség kategória', 'Catégorie de dépenses', 'εξόδων Κατηγορία', 'Kostenkategorie', 'spesa Categoria', 'ประเภทค่าใช้จ่าย', 'اخراجات زمرہ', 'व्यय श्रेणी', 'expense Category', 'beban Kategori', '経費カテゴリ', '비용 카테고리', NULL),
(26, 'library', 'Library', 'লাইব্রেরি', 'Biblioteca', 'مكتبة', 'Bibliotheek', 'Библиотека', '图书馆', 'kütüphane', 'Biblioteca', 'Könyvtár', 'Bibliothèque', 'Βιβλιοθήκη', 'Bibliothek', 'Biblioteca', 'ห้องสมุด', 'لائبریری', 'पुस्तकालय', 'Bibliotheca', 'Perpustakaan', 'ライブラリ', '도서관', NULL),
(27, 'transport', 'Transport', 'পরিবহন', 'Transporte', 'المواصلات', 'Vervoer', 'Транспорт', '运输', 'taşıma', 'Transporte', 'Szállítás', 'Transport', 'Μεταφορά', 'Transport', 'Trasporto', 'ขนส่ง', 'ٹرانسپورٹ', 'ट्रांसपोर्ट', 'Transport', 'Mengangkut', '輸送', '수송', NULL),
(28, 'dormitory', 'Dormitory', 'ছাত্রাবাস', 'Dormitorio', 'المهجع', 'Slaapzaal', 'Общежитие', '宿舍', 'Yurt', 'Dormitório', 'Hálóterem', 'Dortoir', 'Υπνωτήριο', 'Schlafsaal', 'Dormitorio', 'หอพัก', 'شیناگار', 'छात्रावास', 'dormitory', 'asrama mahasiswa', '寮', '기숙사', NULL),
(29, 'noticeboard', 'Noticeboard', 'নোটিশ বোর্ড', 'tablón de anuncios', 'اللافتة', 'Notitiebord', 'Доска объявлений', '布告栏', 'noticeboard', 'Quadro de notícias', 'Hirdetőtábla', 'Tableau d\'affichage', 'Πίνακας ανακοινώσεων', 'Schwarzes Brett', 'Bacheca', 'กระดานป้ายติดประกาศ', 'نوٹس بورڈ', 'सूचना पट्ट', 'Noticeboard', 'Papan peringatan', '掲示板', '공지 사항 게시판', NULL),
(30, 'message', 'Message', 'বার্তা', 'Mensaje', 'الرسالة', 'Bericht', 'Сообщение', '信息', 'Mesaj', 'Mensagem', 'Üzenet', 'Message', 'Μήνυμα', 'Nachricht', 'Messaggio', 'ข่าวสาร', 'پیغام', 'संदेश', 'Nuntius', 'Pesan', 'メッセージ', '메시지', NULL),
(31, 'settings', 'Settings', 'সেটিংস', 'ajustes', 'إعدادات', 'instellingen', 'настройки', '设置', 'Ayarlar', 'Configurações', 'Beállítások', 'Paramètres', 'Ρυθμίσεις', 'Einstellungen', 'impostazioni', 'การตั้งค่า', 'ترتیبات', 'सेटिंग्स', 'occasus', 'pengaturan', '設定', '설정', NULL),
(32, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'Configuración general', 'الإعدادات العامة', 'Algemene instellingen', 'общие настройки', '常规设置', 'Genel Ayarlar', 'Configurações Gerais', 'Általános beállítások', 'réglages généraux', 'Γενικές Ρυθμίσεις', 'Allgemeine Einstellungen', 'impostazioni generali', 'การตั้งค่าทั่วไป', 'عام ترتیبات', 'सामान्य सेटिंग्स', 'General Occasus', 'Pengaturan Umum', '一般設定', '일반 설정', NULL),
(33, 'sms_settings', 'Sms Settings', 'SMS সেটিংস', 'Configuración de sMS', 'إعدادات الرسائل القصيرة', 'sms-instellingen', 'Настройки Sms', '短信设置', 'sms Ayarları', 'definições de SMS', 'sMS-beállítások', 'Paramètres Sms', 'Ρυθμίσεις SMS', 'sms Einstellungen', 'Impostazioni SMS', 'การตั้งค่า SMS', 'SMS کی ترتیبات', 'एसएमएस सेटिंग', 'sMS Occasus', 'Pengaturan sms', 'SMS設定', 'SMS 설정', NULL),
(34, 'language_settings', 'Language Settings', 'ভাষা ব্যাবস্থা', 'Ajustes de idioma', 'اعدادات اللغة', 'Taal instellingen', 'Языковые настройки', '语言设定', 'Dil ayarları', 'Configurações de linguagem', 'Nyelvi beállítások', 'Paramètres de langue', 'Ρυθμίσεις γλώσσας', 'Spracheinstellungen', 'Impostazioni della lingua', 'ตั้งค่าภาษา', 'زبان کی ترتیبات', 'भाषा सेटिंग', 'Language Occasus', 'Pengaturan bahasa', '言語設定', '언어 설정', NULL),
(35, 'account', 'Account', 'হিসাব', 'Cuenta', 'حساب', 'Account', 'Счет', '帐户', 'hesap', 'Conta', 'számla', 'Compte', 'Λογαριασμός', 'Konto', 'account', 'บัญชี', 'اکاؤنٹ', 'लेखा', 'account', 'Rekening', 'アカウント', '계정', NULL),
(36, 'running_session', 'Running Session', 'অধিবেশন চলমান', 'Ejecución de Sesión', 'تشغيل الدورة', 'running Session', 'Запуск сеанса', '运行会议', 'Oturumu Koşu', 'correndo Session', 'futó Session', 'Courir session', 'τρέξιμο Συνεδρία', 'Lauf Session', 'corsa della sessione', 'เล่นเซสชัน', 'سیشن چلانے', 'सत्र चल रहा है', 'Sessio cursor', 'menjalankan Sesi', 'セッションの実行', '세션을 실행', NULL),
(37, 'edit_profile', 'Edit Profile', 'জীবন বৃত্তান্ত সম্পাদনা', 'Editar perfil', 'تعديل الملف الشخصي', 'Bewerk profiel', 'Редактировать профиль', '编辑个人资料', 'Profili Düzenle', 'Editar Perfil', 'Profil szerkesztése', 'Modifier le profil', 'Επεξεργασία προφίλ', 'Profil bearbeiten', 'Modifica Profilo', 'แก้ไขโปรไฟล์', 'پروفائل میں ترمیم کریں', 'प्रोफाइल एडिट करें', 'Edit Profile', 'Edit Profile', 'プロファイル編集', '프로필 수정', NULL),
(38, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন করুন', 'Cambia la contraseña', 'تغيير كلمة السر', 'Verander wachtwoord', 'Изменить пароль', '更改密码', 'Şifre değiştir', 'Mudar senha', 'Változtass jelszót', 'Changer le mot de passe', 'Άλλαξε κωδικό', 'Passwort ändern', 'Cambia la password', 'เปลี่ยนรหัสผ่าน', 'پاس ورڈ تبدیل کریں', 'पासवर्ड बदलें', 'Change Password', 'Ganti kata sandi', 'パスワードを変更する', '암호 변경', NULL),
(39, 'add_class_routine', 'Add Class Routine', 'ক্লাস রুটিন যোগ', 'Añadir rutina de la clase', 'إضافة فئة الروتينية', 'Voeg Klasse Routine', 'Добавить класс подпрограмм', '添加类常规', 'Sınıf Rutin ekle', 'Adicione a classe de rotina', 'Add Class Rutin', 'Ajouter une classe Routine', 'Προσθέστε Class ρουτίνας', 'In der Klasse Routine', 'Aggiungi classe di routine', 'เพิ่มระดับชั้นประจำ', 'کلاس معمول کا اضافہ کریں', 'कक्षा नियमित जोड़े', 'Class Add DEFUNCTORIUS', 'Tambahkan Kelas Rutin', 'クラスのルーチンを追加します。', '클래스 루틴 추가', NULL),
(40, 'section', 'Section', 'অধ্যায়', 'Sección', 'قسم', 'sectie', 'Раздел', '部分', 'Bölüm', 'Seção', 'Szakasz', 'Section', 'Τμήμα', 'Abschnitt', 'Sezione', 'มาตรา', 'سیکشن', 'अनुभाग', 'section', 'Bagian', 'セクション', '섹션', NULL),
(41, 'edit', 'Edit', 'সম্পাদন করা', 'Editar', 'تحرير', 'Bewerk', 'редактировать', '编辑', 'Düzenleme', 'Editar', 'szerkesztése', 'modifier', 'Επεξεργασία', 'Bearbeiten', 'Modifica', 'แก้ไข', 'تصیح', 'संपादित करें', 'Edit', 'mengedit', '編集', '편집하다', NULL),
(42, 'delete', 'Delete', 'মুছে ফেলা', 'Borrar', 'حذف', 'Verwijder', 'Удалить', '删除', 'silmek', 'Excluir', 'Töröl', 'Effacer', 'Διαγράφω', 'Löschen', 'cancellare', 'ลบ', 'حذف کریں', 'मिटाना', 'Delete', 'Menghapus', '削除', '지우다', NULL),
(43, 'cancel', 'Cancel', 'বাতিল', 'Cancelar', 'إلغاء', 'Annuleer', 'Отмена', '取消', 'İptal', 'Cancelar', 'Törölni', 'Annuler', 'Ματαίωση', 'Stornieren', 'Annulla', 'ยกเลิก', 'منسوخ کریں', 'रद्द करना', 'Cancel', 'Membatalkan', 'キャンセル', '취소', NULL),
(44, 'admin_dashboard', 'Admin Dashboard', 'অ্যাডমিন ড্যাশবোর্ডের', 'Tablero de instrumentos de administración', 'لوحة المشرف', 'Admin Dashboard', 'Админ Панель приборов', '管理仪表板', 'Yönetici Paneli', 'Painel de administração', 'admin Dashboard', 'Administrateur Dashboard', 'ταμπλό διαχειριστή', 'Admin-Dashboard', 'Dashboard Admin', 'แดชบอร์ดผู้ดูแลระบบ', 'ایڈمن ڈیش بورڈ', 'व्यवस्थापक डैशबोर्ड', 'Sed Dashboard', 'Dashboard Admin', '管理ダッシュボード', '관리 대시 보드', NULL),
(45, 'event_schedule', 'Event Schedule', 'ইভেন্ট সময়সূচী', 'Programa del evento', 'جدول الفعاليات', 'event Planning', 'Расписание мероприятий', '活动日程', 'Etkinlik Programı', 'Calendário de eventos', 'esemény Menetrend', 'Horaire de l\'événement', 'Πρόγραμμα εκδήλωσης', 'Veranstaltungskalender', 'Programma dell\'evento', 'ตารางกิจกรรม', 'ایونٹ کے شیڈول', 'घटना अनुसूची', 'Event Schedule', 'Jadwal acara', 'イベントスケジュール', '이벤트 일정', NULL),
(46, 'parent', 'Parent', 'মাতা', 'Padre', 'أصل', 'Ouder', 'родитель', '亲', 'ebeveyn', 'parente', 'Szülő', 'Parent', 'Μητρική εταιρεία', 'Elternteil', 'Genitore', 'ผู้ปกครอง', 'والدین', 'माता-पिता', 'Parent', 'Induk', '親', '부모의', NULL),
(47, 'attendance', 'Attendance', 'উপস্থিতি', 'Asistencia', 'الحضور', 'opkomst', 'посещаемость', '护理', 'katılım', 'Comparecimento', 'Részvétel', 'Présence', 'Παρουσία', 'Teilnahme', 'partecipazione', 'การดูแลรักษา', 'حاضری', 'उपस्थिति', 'frequentatio', 'Kehadiran', '出席', '출석', NULL),
(48, 'add_student', 'Add Student', 'স্টুডেন্ট যোগ', 'Añadir Estudiante', 'إضافة طالب', 'Student', 'Добавить Student', '添加学生', 'Öğrenci ekle', 'Adicionar Student', 'Add Student', 'Ajouter étudiant', 'Προσθέστε Φοιτητής', 'In Studenten', 'Aggiungere Student', 'เพิ่มนักศึกษา', 'طالب علم کے لئے شامل کریں', 'छात्र जोड़े', 'Add Student', 'Tambahkan Mahasiswa', '学生を追加', '학생 추가', NULL),
(49, 'addmission_form', 'Addmission Form', 'Admisn ফর্ম', 'forma Admisn', 'شكل Admisn', 'Admisn vorm', 'Admisn форма', 'Admisn形式', 'Admisn formu', 'forma Admisn', 'Admisn formában', 'forme Admisn', 'Admisn μορφή', 'Admisn Form', 'modulo Admisn', 'รูปแบบ Admisn', 'Addmission Form', 'Addmission Form', 'Admisn forma,', 'bentuk Admisn', 'Admisnフォーム', 'Admisn 형태', NULL),
(50, 'name', 'Name', 'নাম', 'Nombre', 'اسم', 'Naam', 'имя', '名称', 'isim', 'Nome', 'Név', 'prénom', 'Όνομα', 'Name', 'Nome', 'ชื่อ', 'نام', 'नाम', 'nomine', 'Nama', '名', '이름', NULL),
(51, 'value_required', 'Value Required', 'মূল্য প্রয়োজনীয়', 'valor Obligatorio', 'القيمة المطلوبة', 'waarde Verplicht', 'Значение Обязательный', '值必需', 'Değer Gerekli', 'valor Obrigatório', 'érték Kötelező', 'Valeur Obligatoire', 'αξία Υποχρεωτικά', 'Wert Erforderlich', 'valore richiesto', 'ค่าที่ต้องการ', 'ویلیو مطلوب', 'मान आवश्यक', 'eget Value', 'nilai Diperlukan', '値必須', '값 필수', NULL),
(52, 'select', 'Select', 'নির্বাচন করা', 'Seleccionar', 'اختار', 'kiezen', 'Выбрать', '选择', 'seçmek', 'selecionar', 'választ', 'Sélectionner', 'Επιλέγω', 'Wählen', 'Selezionare', 'เลือก', 'منتخب کریں', 'चुनते हैं', 'select', 'Memilih', '選択します', '고르다', NULL),
(53, 'select_class_first', 'Select Class First', 'নির্বাচন শ্রেনীতে প্রথম', 'Seleccione Primera Clase', 'حدد الدرجة الأولى', 'Selecteer Eerste Klasse', 'Выберите First Class', '选择头等舱', 'Sınıf İlk seçin', 'Escolha de Primeira Classe', 'Válassza Class első', 'Sélectionnez First Class', 'Επιλέξτε Class Πρώτα', 'Wählen Sie First Class', 'Selezionare Classe First', 'เลือกเฟิร์สคลาส', 'کلاس فرسٹ کریں', 'चयन कक्षा प्रथम', 'First Class Select', 'Pilih First Class', 'クラスファーストを選択', '클래스 먼저 선택', NULL),
(54, 'roll', 'Roll', 'রোল', 'Rodar', 'لفة', 'Rollen', 'Рулон', '滚', 'Rulo', 'Rolo', 'Tekercs', 'Roulent', 'Ρολό', 'Rollen', 'Rotolo', 'ม้วน', 'رول', 'रोल', 'Rerum', 'Gulungan', 'ロール', '롤', NULL),
(55, 'birthday', 'Birthday', 'জন্মদিন', 'Cumpleaños', 'تاريخ الميلاد', 'Verjaardag', 'день рождения', '生日', 'Doğum günü', 'Aniversário', 'Születésnap', 'Anniversaire', 'Γενέθλια', 'Geburtstag', 'Compleanno', 'วันเกิด', 'سالگرہ', 'जन्मदिन', 'Natus', 'Ulang tahun', 'お誕生日', '생일', NULL),
(56, 'gender', 'Gender', 'লিঙ্গ', 'Género', 'جنس', 'Geslacht', 'Пол', '性别', 'Cinsiyet', 'Gênero', 'nem', 'Le genre', 'Γένος', 'Geschlecht', 'Genere', 'เพศ', 'صنف', 'लिंग', 'Gender', 'Jenis kelamin', '性別', '성별', NULL),
(57, 'male', 'Male', 'পুরুষ', 'Masculino', 'ذكر', 'Mannetje', 'мужчина', '男', 'Erkek', 'Masculino', 'Férfi', 'Mâle', 'Αρσενικός', 'Männlich', 'Maschio', 'ชาย', 'مرد', 'नर', 'Male', 'Pria', '男性', '남성', NULL),
(58, 'female', 'Female', 'মহিলা', 'Hembra', 'أنثى', 'Vrouw', 'женский', '女', 'Kadın', 'Fêmea', 'Női', 'Femelle', 'Θηλυκός', 'Weiblich', 'Femmina', 'หญิง', 'خواتین', 'महिला', 'Male', 'Wanita', '女性', '여자', NULL),
(59, 'address', 'Address', 'ঠিকানা', 'Dirección', 'عنوان', 'Adres', 'Адрес', '地址', 'adres', 'Endereço', 'Lakcim', 'Adresse', 'Διεύθυνση', 'Adresse', 'Indirizzo', 'ที่อยู่', 'ایڈریس', 'पता', 'oratio', 'Alamat', '住所', '주소', NULL),
(60, 'phone', 'Phone', 'ফোন', 'Teléfono', 'هاتف', 'Telefoon', 'Телефон', '电话', 'Telefon', 'Telefone', 'Telefon', 'Téléphone', 'Τηλέφωνο', 'Telefon', 'Telefono', 'โทรศัพท์', 'فون', 'फ़ोन', 'Phone', 'Telepon', '電話', '전화', NULL),
(61, 'email', 'Email', 'ই-মেইল', 'Email', 'البريد الإلكتروني', 'E-mail', 'Эл. адрес', '电子邮件', 'E-posta', 'O email', 'Email', 'Email', 'E-mail', 'Email', 'E-mail', 'อีเมล์', 'دوستوں کوارسال کریں', 'ईमेल', 'Email', 'E-mail', 'Eメール', '이메일', NULL),
(62, 'password', 'Password', 'পাসওয়ার্ড', 'Contraseña', 'كلمه السر', 'Wachtwoord', 'пароль', '密码', 'Parola', 'Senha', 'Jelszó', 'Mot de passe', 'Σύνθημα', 'Passwort', 'parola d\'ordine', 'รหัสผ่าน', 'پاس ورڈ', 'पासवर्ड', 'Password', 'Kata sandi', 'パスワード', '암호', NULL),
(63, 'transport_route', 'Transport Route', 'পরিবহন রুট', 'Ruta de Transporte', 'النقل الطريق', 'transport Route', 'транспортный путь', '运输路线', 'Ulaştırma Rota', 'Itinerários', 'Transport Route', 'Transport Route', 'μεταφορές Διαδρομή', 'Transportweg', 'Transport Route', 'เส้นทางขนส่ง', 'ٹرانسپورٹ روٹ', 'परिवहन मार्ग', 'Transport Route', 'Transportasi Route', '交通ルート', '운송 경로', NULL),
(64, 'photo', 'Photo', 'ছবি', 'Foto', 'صورة فوتوغرافية', 'Foto', 'Фото', '照片', 'fotoğraf', 'foto', 'Fénykép', 'photo', 'φωτογραφία', 'Foto', 'Foto', 'ภาพถ่าย', 'تصویر', 'तस्वीर', 'Photo', 'Foto', '写真', '사진', NULL),
(65, 'add_bulk_student', 'Add Bulk Student', 'বাল্ক স্টুডেন্ট যোগ', 'Añadir Estudiante granel', 'إضافة طالب السائبة', 'Voeg Bulk Student', 'Добавить Bulk Student', '批量添加学生', 'Toplu Öğrenci ekle', 'Adicionar Student massa', 'Add Tömeges Student', 'Ajouter étudiant en vrac', 'Προσθέστε Μαζική Φοιτητής', 'In Großstudenten', 'Aggiungere Student Bulk', 'เพิ่มกลุ่มนักศึกษา', 'بلک طالب علم ان کریں', 'थोक छात्र जोड़े', 'Discipulus Add Bulk', 'Tambahkan Mahasiswa Massal', 'バルク学生を追加', '대량 학생 추가', NULL),
(66, 'select_class', 'Select Class', 'ক্লাস নির্বাচন', 'Seleccionar clase', 'حدد فئة', 'Select Class', 'Выбор класса', '选择类别', 'seçin Sınıf', 'Selecionar classe', 'osztály kiválasztása', 'Sélectionnez la classe', 'Select Class', 'Klasse auswählen', 'Seleziona classe', 'เลือกชั้นเรียน', 'کلاس منتخب', 'वर्ग का चयन', 'Class Select', 'Pilih Kelas', 'クラスを選択します', '선택 클래스', NULL),
(67, 'add_more_students', 'Add More Students', 'অধিক শিক্ষার্থী যোগ', 'Añadir más estudiantes', 'إضافة المزيد من الطلاب', 'Voeg meer studenten', 'Добавить больше студентов', '添加更多的学生', 'Daha Öğrenciler Ekle', 'Adicionar Mais Estudantes', 'Add több diák', 'Ajouter d\'autres étudiants', 'Προσθέστε περισσότερους φοιτητές', 'In mehr Studenten', 'Aggiungere più studenti', 'เพิ่มนักเรียน', 'زیادہ طالب علموں کو شامل کریں', 'अधिक छात्रों को जोड़ें', 'More Add Students', 'Tambahkan Siswa Lebih', 'より多くの学生を追加', '더 많은 학생들 추가', NULL),
(68, 'save_students', 'Save Students', 'শিক্ষার্থীরা সংরক্ষণ', 'guardar estudiantes', 'حفظ الطلاب', 'Save Studenten', 'Сохранить студентов', '保存学生', 'Öğrenciler kaydet', 'salve Estudantes', 'Save diákok', 'Enregistrer les étudiants', 'Αποθήκευση Φοιτητές', 'speichern Studenten', 'Salva studenti', 'บันทึกนักเรียน', 'طالب علموں کو محفوظ کریں', 'छात्रों को बचाने के', 'Save Students', 'Simpan Siswa', '学生を保存', '학생 저장', NULL),
(69, 'select_section', 'Select Section', 'অনুচ্ছেদ নির্বাচন', 'Seleccionar sección', 'حدد القسم', 'Select Section', 'Выберите раздел', '选择部分', 'seç Bölüm', 'Select Section', 'Select szakasz', 'Sélectionnez Section', 'Επιλέξτε Ενότητα', 'Wählen Sie Abschnitt', 'Seleziona sezione', 'เลือกส่วน', 'سیکشن منتخب', 'अनुभाग का चयन', 'Select Section', 'Pilih Bagian', 'セクションを選択します', '선택 섹션', NULL),
(70, 'add_new_student', 'Add New Student', 'নতুন শিক্ষার্থী যোগ', 'Agregar nuevo Estudiante', 'إضافة جديد للطلاب', 'Voeg Nieuwe Student', 'Добавить новый студент', '新增学生', 'Yeni Öğrenci Ekle', 'Adicionar novo Student', 'Új diák', 'Ajouter un nouvel étudiant', 'Προσθήκη νέου Φοιτητής', 'New Studenten', 'Aggiungi nuovo Student', 'เพิ่มนักเรียนใหม่', 'نیا طالب علم کے لئے شامل کریں', 'नई छात्र जोड़े', 'Add Student', 'Tambahkan Mahasiswa Baru', '新入生を追加', '신입생 추가', NULL),
(71, 'all_students', 'All Students', 'সকল শিক্ষার্থীরা', 'Todos los estudiantes', 'كل الطلاب', 'Alle studenten', 'Все студенты', '所有学生', 'Tüm öğrenciler', 'Todos os alunos', 'minden diák', 'Tous les étudiants', 'Όλοι οι φοιτητές', 'Alle Schüler', 'Tutti gli studenti', 'นักเรียนทุกคน', 'تمام طلباء', 'सभी छात्र', 'omnes alumni', 'Semua murid', '全生徒', '모든 학생', NULL),
(72, 'options', 'Options', 'বিকল্প', 'opciones', 'خيارات', 'opties', 'Опции', '选项', 'Seçenekler', 'opções', 'Lehetőségek', 'options de', 'επιλογές', 'Optionen', 'Opzioni', 'ตัวเลือก', 'اختیارات', 'विकल्प', 'options', 'Pilihan', 'オプション', '옵션', NULL),
(73, 'mark_sheet', 'Mark Sheet', 'নাম্বার শিট', 'Hoja de marca', 'ورقة علامة', 'Mark Sheet', 'Mark Sheet', '标记表', 'İşareti levha', 'Mark Sheet', 'Mark Sheet', 'Mark Sheet', 'Mark Φύλλο', 'Markierungsblatt', 'Libretto universitario', 'มาร์คแผ่น', 'مارک شیٹ', 'अंक तालिका', 'Mark Sheet', 'Lembar penilaian', 'マークシート', '마크 시트', NULL),
(74, 'profile', 'Profile', 'প্রোফাইলের', 'Perfil', 'الملف الشخصي', 'Profiel', 'Профиль', '轮廓', 'Profil', 'Perfil', 'Profil', 'Profil', 'Προφίλ', 'Profil', 'Profilo', 'ข้อมูลส่วนตัว', 'پروفائل', 'प्रोफाइल', 'Profile', 'profil', 'プロフィール', '윤곽', NULL),
(75, 'edit_student', 'Edit Student', 'স্টুডেন্ট সম্পাদনা', 'Editar alumno', 'تحرير طالب', 'Student bewerken', 'Редактировать Student', '编辑学生', 'Düzenleme Öğrenci', 'Editar aluno', 'Tanuló szerkesztése', 'Modifier étudiant', 'Επεξεργασία Φοιτητών', 'Schüler bearbeiten', 'Edit Student', 'แก้ไขนักศึกษา', 'Student کی تصیح', 'छात्र संपादित करें', 'Discipulus Edit', 'mengedit Mahasiswa', '編集学生', '편집 학생', NULL),
(76, 'current_session', 'Current Session', 'বর্তমান সেশন', 'Sesión actual', 'الدورة الحالية', 'Huidige sessie', 'Текущая сессия', '当前会话', 'Geçerli oturum', 'Sessão atual', 'aktuális munkamenet', 'Session actuelle', 'τρέχουσα περίοδο', 'Aktuelle Sitzung', 'Sessione corrente', 'เซสชันปัจจุบัน', 'موجودہ سیشن', 'मौजूदा सत्र', 'Current Session', 'Sesi Sekarang', '現在のセッション', '현재 세션', NULL),
(77, 'promote_to_session', 'Promote To Session', 'সেশন উন্নীত', 'Para promover la Sesión', 'تعزيز لدورة', 'Om te bevorderen Session', 'Продвижение к сеансу', '促进会议', 'Oturum için teşvik', 'Promover para a Sessão', 'Előléptetés Session', 'Promouvoir Pour Session', 'Προώθηση της συνεδρία', 'Fördern Session', 'Promuovere alla sessione', 'ส่งเสริมให้เซสชัน', 'اجلاس سے فروغ دینا', 'सत्र को बढ़ावा देने के', 'Promovere Session', 'Promosikan Untuk Sesi', 'セッションに推進', '세션에 홍보', NULL),
(78, 'promotion_from_class', 'Promotion From Class', 'ক্লাস থেকে প্রোমোশন', 'Promoción de la Clase', 'الترويج من الدرجة', 'Promotie Van Class', 'Продвижение из класса', '促进从阶级', 'Sınıf itibaren Promosyon', 'Promoção da classe', 'Promóció osztály', 'Promotion de la classe', 'Προώθηση από την τάξη', 'Promotion Von Klasse', 'Promozione dalla classe', 'โปรโมชั่นจากชั้นเรียน', 'کلاس سے پروموشن', 'कक्षा से पदोन्नति', 'Class E Promotion', 'Promosi Dari Kelas', 'クラスから昇格', '클래스에서 추진', NULL),
(79, 'promotion_to_class', 'Promotion To Class', 'ক্লাস পদোন্নতি', 'Promoción para la Clase', 'الترويج لفئة', 'Promotie naar klasse', 'Повышение в классе', '推广类', 'Sınıf için Promosyon', 'Promoção para a Classe', 'Feljutott osztály', 'Promotion Pour classe', 'Προώθηση στην τάξη', 'Promotion in Klasse', 'Promozione in classe', 'โปรโมชั่นในชั้นเรียน', 'کلاس میں پروموشن', 'वर्ग के लिए प्रमोशन', 'Class promotus', 'Promosi Untuk Kelas', 'クラスへの昇進', '클래스 프로모션', NULL),
(80, 'select_all', 'Select All', 'সবগুলো নির্বাচন করা', 'Seleccionar todo', 'اختر الكل', 'Selecteer alles', 'Выбрать все', '全选', 'Hepsini seç', 'Selecionar tudo', 'Mindet kiválaszt', 'Sélectionner tout', 'Επιλογή όλων', 'Alles auswählen', 'Seleziona tutto', 'เลือกทั้งหมด', 'تمام منتخب کریں', 'सभी का चयन करे', 'lego All', 'Pilih Semua', 'すべて選択', '모두 선택', NULL),
(81, 'select_none', 'Select None', 'কিছুই না', 'Seleccione Ninguno', 'حدد بلا', 'Niets selecteren', 'Не выбирать', '选择无', 'Hiçbir şey seçilmedi', 'Selecione nenhum', 'Select None', 'Ne rien sélectionner', 'Επιλέξτε None', 'Nichts ausgewählt', 'Non selezionare niente', 'เลือกไม่มี', 'کوئی بھی منتخب', 'किसी का चयन न करें', 'non Select', 'Pilih Tidak', '何も選択しません', '선택 없음', NULL),
(82, 'average', 'Average', 'গড়', 'Promedio', 'متوسط', 'Gemiddelde', 'В среднем', '平均', 'Ortalama', 'Média', 'Átlagos', 'Moyenne', 'Μέσος', 'Durchschnittlich', 'Media', 'เฉลี่ย', 'اوسط', 'औसत', 'Average', 'rata-rata', '平均', '평균', NULL),
(83, 'promote_slelected_students', 'Promote Slelected Students', 'Slelected ছাত্ররা', 'Promover estudiantes Slelected', 'تشجيع الطلاب Slelected', 'Bevorder Slelected Studenten', 'Содействие Студенты Slelected', '促进学生Slelected', 'Slelected Öğrenciler teşvik', 'Promover Estudantes Slelected', 'Támogassák Slelected diákok', 'Promouvoir les étudiants Slelected', 'Προώθηση μαθητές Slelected', 'Förderung Slelected Studenten', 'Promuovere studenti Slelected', 'ส่งเสริมนักเรียน Slelected', 'Slelected طلبا کو فروغ دینا', 'Slelected छात्र को बढ़ावा देना', 'Suspendisse Slelected Students', 'Promosikan Siswa Slelected', 'Slelected学生を推進', 'Slelected 학생 홍보', NULL),
(84, 'manage_teacher', 'Manage Teacher', 'গুরু পরিচালনা', 'administrar Maestro', 'إدارة المعلم', 'Beheer Teacher', 'Управление Teacher', '教师管理', 'Öğretmen Yönet', 'Gerenciar professor', 'kezelése tanár', 'Gérer l\'enseignant', 'διαχειριστείτε Δάσκαλος', 'verwalten Lehrer', 'gestire Maestro', 'จัดการครู', 'ٹیچر انتظام کریں', 'शिक्षक की व्यवस्था करें', 'magister Manage', 'mengelola Guru', '教師を管理します', '교사 관리', NULL),
(85, 'add_new_teacher', 'Add New Teacher', 'নতুন গুরু যোগ', 'Agregar nuevo Maestro', 'إضافة معلم جديد', 'Add New Teacher', 'Добавить новый учитель', '添加新教师', 'Yeni Öğretmen ekle', 'Adicionar novo professor', 'Új tanár', 'Ajouter un nouvel enseignant', 'Προσθήκη νέου Δάσκαλος', 'New Teacher', 'Aggiungi nuovo insegnante', 'เพิ่มครูคนใหม่', 'نیو ٹیچر شامل کریں', 'नए शिक्षक जोड़े', 'Add New magister', 'Tambahkan New Guru', '新しい先生を追加', '새로운 교사를 추가', NULL),
(86, 'add_teacher', 'Add Teacher', 'গুরু যোগ', 'Añadir Maestro', 'إضافة المعلم', 'Voeg Teacher', 'Добавить Teacher', '添加教师', 'Öğretmen ekle', 'Adicionar professor', 'Add Tanár', 'Ajouter Teacher', 'Προσθέστε Δάσκαλος', 'Teacher', 'Aggiungere Teacher', 'เพิ่มครู', 'استاد ان کریں', 'शिक्षक जोड़े', 'Add magister', 'Tambahkan Guru', '教師を追加', '교사 추가', NULL),
(87, 'edit_teacher', 'Edit Teacher', 'গুরু সম্পাদনা', 'Editar Maestro', 'تحرير المعلم', 'Leraar bewerken', 'Изменить Учитель', '编辑老师', 'Düzenleme Öğretmen', 'Editar professor', 'szerkesztés tanár', 'Modifier enseignant', 'Επεξεργασία Δάσκαλος', 'Bearbeiten Lehrer', 'Modifica Maestro', 'แก้ไขครู', 'ٹیچر ترمیم کریں', 'शिक्षक संपादित करें', 'magister Edit', 'mengedit Guru', '編集教師', '편집 교사', NULL),
(88, 'sex', 'Sex', 'লিঙ্গ', 'Sexo', 'جنس', 'Seks', 'секс', '性别', 'Seks', 'Sexo', 'Szex', 'Sexe', 'Φύλο', 'Sex', 'Sesso', 'เพศ', 'جنس', 'लिंग', 'Sex', 'Seks', 'セックス', '섹스', NULL),
(89, 'marksheet_for', 'Marksheet For', 'মার্ক শীট', 'las hojas de calificación para', 'ورقة علامة ل', 'Mark platen voor', 'Все листы для', '马克薄板', 'Mark levhalar', 'Marcar folhas para', 'Mark lapok', 'Marquer les feuilles pour', 'Mark φύλλα', 'Mark Blätter', 'fogli marchio per', 'แผ่นมาร์คสำหรับ', 'Marksheet For', 'Marksheet For', 'Mark rudentis', 'Mark lembar untuk', '用マークシート', '에 대한 마크 시트', NULL),
(90, 'total_marks', 'Total Marks', 'মোট মার্কস', 'Notas totales', 'مجموع الدرجات', 'Totaal Marks', 'Всего знаков', '总分', 'Toplam Marks', 'total de Marcas', 'Összesen Marks', 'total de points', 'Σύνολο σήματα', 'insgesamt Marks', 'Marks totali', 'Marks รวม', 'کل مارکس', 'कुल मार्क', 'Total Marks', 'total Marks', '総マークス', '총 마크', NULL),
(91, 'average_grade_point', 'Average Grade Point', 'গড় গ্রেড পয়েন্ট', 'Promedio de calificaciones', 'متوسط ​​درجة نقطة', 'Gemiddeld Grade Point', 'Средний балл', '平均绩点', 'Ortalama not', 'Ponto de classe média', 'Átlagos Grade Point', 'Point de grade moyen', 'Μέσος Βαθμός Point', 'Durchschnittliche Grade Point', 'Point Average Grade', 'เกรดเฉลี่ยจุด', 'اوسط گریڈ پوائنٹ', 'औसत ग्रेड प्वाइंट', 'Mediocris gradus punctum', 'Rata-rata Grade Point', '平均グレードポイント', '평균 등급 포인트', NULL),
(92, 'print_marksheet', 'Print Marksheet', 'প্রিন্ট নম্বরপত্র', 'Imprimir las hojas de calificación', 'ورقة علامة طباعة', 'Print mark sheets', 'Знак печати листов', '打印标记表', 'Baskı işareti yaprak', 'folhas marca de impressão', 'Nyomtatási jel lapok', 'Imprimer les feuilles de marque', 'φύλλα σήμα Εκτύπωση', 'Druckmarken-Blätter', 'fogli simbolo di stampa', 'แผ่นมาร์คพิมพ์', 'Print Marksheet', 'Print Marksheet', 'Mark Print rudentis', 'lembar tanda cetak', 'プリントマークシート', '인쇄 마크 시트', NULL),
(93, 'student_marksheet', 'Student Marksheet', 'শিক্ষার্থীরা চাদর চিহ্নিত', 'Los alumnos que marquen las hojas', 'الطلاب بمناسبة صحائف', 'Studenten markeren vellen', 'Студенты отмечают листы', '学生张标', 'Öğrenciler yaprak işaretlemek', 'Os alunos marcar folhas', 'A tanulók jelöljék lapok', 'Les élèves marquent feuilles', 'Φοιτητές σηματοδοτήσει φύλλα', 'Studenten markieren Blätter', 'Gli studenti segnano fogli', 'นักเรียนแผ่นมาร์ค', 'Student Marksheet', 'Student Marksheet', 'Alumni attende rudentis', 'Siswa menandai lembar', '学生のマークシート', '학생들은 시트를 표시', NULL),
(94, 'parent_phone', 'Parent Phone', 'পেরেন্ট ফোন', 'Teléfono de los padres', 'الأم الهاتف', 'Parent Phone', 'родитель телефон', '家长电话', 'Veli Telefon', 'pais Telefone', 'szülő Phone', 'Parent téléphone', 'μητρική τηλέφωνο', 'Eltern Telefon', 'Parent Phone', 'ผู้ปกครองโทรศัพท์', 'والدین فون', 'माता पिता के फोन', 'Parent Phone', 'induk Telepon', '親の携帯電話', '부모 전화', NULL),
(95, 'all_parents', 'All Parents', 'সকল মাতাপিতা', 'todos los padres', 'جميع الآباء والأمهات', 'alle ouders', 'Все родители', '所有家长', 'Tüm Veliler', 'Todos os Pais', 'minden szülő', 'Tous les parents', 'Όλες οι γονείς', 'Alle Eltern', 'tutti i genitori', 'พ่อแม่ทุกคน', 'تمام والدین', 'सभी माता-पिता', 'omnes parentes,', 'semua Orangtua', 'すべての親', '모든 부모', NULL),
(96, 'add_new_parent', 'Add New Parent', 'নতুন অভিভাবক যোগ', 'Añadir nuevo elemento primario', 'إضافة الرئيسي الجديد', 'Add New Parent', 'Добавить новый родитель', '添加新的父', 'Yeni Ana Ekle', 'Adicionar Novo Parent', 'Új Szülő', 'Ajouter un nouveau Parent', 'Προσθήκη νέου γονέα', 'New Eltern', 'Aggiungi nuovo padre', 'เพิ่มผู้ปกครองใหม่', 'نئے والدین کے لئے شامل کریں', 'न्यू जनक जोड़े', 'Add Parent', 'Tambahkan Induk Baru', '新しい親を追加します。', '새 부모 추가', NULL),
(97, 'profession', 'Profession', 'পেশা', 'Profesión', 'مهنة', 'Beroep', 'профессия', '职业', 'meslek', 'Profissão', 'Szakma', 'Métier', 'Επάγγελμα', 'Beruf', 'Professione', 'อาชีพ', 'پیشہ', 'व्यवसाय', 'Professio', 'Profesi', '職業', '직업', NULL),
(98, 'add_parent', 'Add Parent', 'অভিভাবক যোগ', 'Añadir Padres', 'إضافة الرئيسي', 'Parent toevoegen', 'Добавить Parent', '添加父', 'Ana ekle', 'Adicionar Parent', 'Add Parent', 'Ajouter Parent', 'Προσθέστε Μητρικής', 'In Eltern', 'Aggiungere Parent', 'เพิ่มผู้ปกครอง', 'والدین کا اضافہ کریں', 'जनक जोड़े', 'Add Parent', 'Tambahkan Induk', '親を追加します。', '부모 추가', NULL),
(99, 'update', 'Update', 'হালনাগাদ', 'Actualizar', 'تحديث', 'Bijwerken', 'Обновить', '更新', 'Güncelleştirme', 'Atualizar', 'frissítés', 'Mettre à jour', 'Εκσυγχρονίζω', 'Aktualisieren', 'Aggiornare', 'ปรับปรุง', 'اپ ڈیٹ', 'अपडेट', 'Update', 'Memperbarui', '更新', '최신 정보', NULL),
(100, 'manage_class', 'Manage Class', 'ক্লাস পরিচালনা', 'Manejo de Clase', 'إدارة الدرجة', 'Beheer Class', 'Управление класса', '管理类', 'Sınıf Yönet', 'Gerenciar Classe', 'Kezelés osztály', 'Gérer la classe', 'διαχειριστείτε Class', 'verwalten Klasse', 'gestire Classe', 'การจัดการชั้นเรียน', 'کلاس انتظام کریں', 'कक्षा प्रबंधित', 'Class Manage', 'mengelola Kelas', 'クラスを管理します', '클래스 관리', NULL),
(101, 'class_list', 'Class List', 'ক্লাস তালিকা', 'Lista de clase', 'قائمة الطبقة', 'class List', 'Список классов', '班级列表', 'sınıf listesi', 'Lista de Classes', 'class listája', 'Liste des classes', 'πίνακας αποτελεσμάτων', 'Klassenliste', 'Lista Class', 'รายการระดับ', 'کلاس کی فہرست', 'कक्षा सूची', 'Class List', 'Daftar kelas', 'クラス一覧', '클래스 목록', NULL),
(102, 'add_class', 'Add Class', 'ক্লাস যোগ', 'Agregar clase', 'إضافة فئة', 'Voeg klasse', 'Добавление класса', '添加类', 'Add Class', 'Adicione a classe', 'Add Class', 'Ajouter une classe', 'Προσθήκη κατηγορίας', 'Klasse hinzufügen', 'Aggiungi classe', 'เพิ่มระดับชั้น', 'کلاس شامل', 'वर्ग को जोड़ने', 'Add Class', 'Tambahkan Kelas', 'クラスの追加', '클래스 추가', NULL),
(103, 'class_name', 'Class Name', 'শ্রেণির নাম', 'Nombre de la clase', 'اسم الطبقة', 'Naam van de klasse', 'Имя класса', '类名', 'Sınıf adı', 'Nome da classe', 'osztály neve', 'Nom du cours', 'Class Όνομα', 'Klassenname', 'Nome della classe', 'ชื่อชั้น', 'کلاس نام', 'कक्षा का नाम', 'Class Name', 'Nama kelas', 'クラス名', '클래스 이름', NULL),
(104, 'numeric_name', 'Numeric Name', 'সাংখ্যিক নাম', 'Nombre numérico', 'اسم رقمية', 'numeriek Naam', 'Числовой Имя', '数字域名', 'sayısal Adı', 'Nome numérico', 'numerikus neve', 'Nom numérique', 'αριθμητικό Όνομα', 'numerischen Namen', 'Nome numerico', 'ชื่อที่เป็นตัวเลข', 'نمبری نام', 'संख्यात्मक नाम', 'numerum nominis', 'Nama numerik', '数値名', '숫자 이름', NULL),
(105, 'name_numeric', 'Name Numeric', 'নাম সংখ্যাসূচক', 'nombre numérico', 'اسم الرقمية', 'naam Numeriek', 'Имя Числовой', '名称数字', 'isim Sayısal', 'nome numérico', 'név Numerikus', 'Nom numérique', 'όνομα Αριθμητική', 'Name Numeric', 'nome numerico', 'ชื่อตัวเลข', 'نام نمبری', 'नाम संख्यात्मक', 'nomen numerorum', 'nama Numeric', '名前数値', '이름 숫자', NULL),
(106, 'select_teacher', 'Select Teacher', 'গুরু নির্বাচন', 'Seleccione Maestro', 'حدد المعلم', 'Selecteer Teacher', 'Выберите Учитель', '选择教师', 'seçin Öğretmen', 'Escolha um professor', 'Select tanár', 'Sélectionnez ce professeur', 'Επιλέξτε Δάσκαλος', 'Wählen Sie Lehrer', 'Seleziona insegnante', 'เลือกครู', 'ٹیچر منتخب', 'शिक्षक का चयन', 'Select magister', 'Pilih Guru', '教師を選択', '선택 교사', NULL),
(107, 'edit_class', 'Edit Class', 'ক্লাস সম্পাদনা', 'Editar clase', 'تحرير الفئة', 'klasse bewerken', 'Редактировать Класс', '编辑类', 'Düzenleme Sınıfı', 'Editar Classe', 'szerkesztés osztály', 'Modifier la classe', 'Επεξεργασία κατηγορίας', 'Bearbeiten Klasse', 'Modifica Class', 'แก้ไขชั้น', 'تصیح کلاس', 'कक्षा संपादित करें', 'Class Edit', 'mengedit Kelas', '編集クラス', '편집 클래스', NULL),
(108, 'add_new_section', 'Add New Section', 'নতুন অনুচ্ছেদ যুক্ত', 'Añadir Nueva Sección', 'إضافة مقطع جديد', 'Voeg Nieuwe sectie', 'Добавить раздел', '添加新科', 'Yeni Bölüm Ekle', 'Adicionar Nova Seção', 'Új szakasz hozzáadása', 'Ajouter un nouvel article', 'Προσθήκη νέου τμήματος', 'New Section', 'Aggiungere Nuova sezione', 'เพิ่มหัวข้อใหม่', 'نیا سیکشن میں شامل کریں', 'नई धारा जोड़े', 'Add Section', 'Tambahkan Bagian New', '新しいセクションを追加します。', '새 섹션 추가', NULL),
(109, 'section_name', 'Section Name', 'অনুচ্ছেদ নাম', 'Nombre de la sección', 'اسم القسم', 'sectie Naam', 'Название раздела', '部分名称', 'bölüm Adı', 'Nome da seção', '§ neve', 'Nom de la section', 'ενότητα Όνομα', 'Abschnittsname', 'Nome sezione', 'ส่วนชื่อ', 'حصے کا نام', 'अनुभाग का नाम', 'Page Name', 'bagian Nama', 'セクション名', '섹션 이름', NULL),
(110, 'nick_name', 'Nick Name', 'নিক নাম', 'Nombre Nick', 'اسم الشهرة', 'Nick Name', 'Имя Ник', '昵称', 'Nick Adı', 'Nome Nick', 'Nick neve', 'Surnom', 'Όνομα Nick', 'Spitzname', 'Nome Nick', 'ชื่อนิค', 'نک نام', 'निक नाम', 'Nick Name', 'Nama panggilan', 'ニックネーム', '닉 이름', NULL),
(111, 'add_section', 'Add Section', 'অনুচ্ছেদ যোগ', 'Añadir Sección', 'إضافة مقطع', 'Sectie toevoegen', 'Добавить раздел', '添加章节', 'Bölüm ekle', 'Adicionar Seção', 'Add szakasz', 'Ajouter Section', 'Προσθέστε Ενότητα', 'In Abschnitt', 'Aggiungere Sezione', 'เพิ่มส่วน', 'سیکشن کا اضافہ کریں', 'धारा जोड़े', 'Add Section', 'Tambahkan Bagian', 'セクションを追加します。', '섹션 추가', NULL),
(112, 'manage_subject', 'Manage Subject', 'সাপেক্ষে পরিচালনা', 'administrar Asunto', 'إدارة موضوع', 'Beheer Subject', 'Управление Subject', '管理主题', 'Konu yönet', 'Gerenciar Assunto', 'kezelésükben', 'Gérer Sujet', 'διαχειριστείτε Θέμα', 'verwalten Thema', 'gestire Soggetto', 'จัดการเรื่อง', 'موضوع انتظام کریں', 'विषय प्रबंधित', 'Subject Manage', 'mengelola Subjek', '件名を管理します', '주제 관리', NULL),
(113, 'subject_list', 'Subject List', 'বিষয় তালিকা', 'Lista de asuntos', 'قائمة الموضوع', 'subject List', 'Тема Список', '主题列表', 'Konu listesi', 'Assunto Lista', 'Tárgy listája', 'Liste Sujet', 'Θέμα Λίστα', 'Betreff Liste', 'soggetto List', 'รายการหัวเรื่อง', 'موضوع لسٹ', 'विषय सूची', 'Title List', 'Daftar subjek', '件名一覧', '주제 목록', NULL),
(114, 'add_subject', 'Add Subject', 'বিষয় যুক্ত করুন', 'Añadir tema', 'إضافة موضوع', 'Onderwerp toevoegen', 'Добавить тему', '添加主题', 'Konu Ekle', 'Adicionar assunto', 'Add Tárgy', 'Ajouter un sujet', 'Προσθέστε Θέμα', 'In Betreff', 'Aggiungere Soggetto', 'เพิ่มเรื่อง', 'موضوع کا اضافہ کریں', 'विषय जोड़ने', 'Add Subject', 'Tambahkan Subjek', '件名を追加します。', '주제 추가', NULL),
(115, 'subject_name', 'Subject Name', 'বিষয় নাম', 'Nombre de la asignatura', 'اسم الموضوع', 'onderwerp Naam', 'Имя субъекта', '主题名称', 'Konu Adı', 'Nome Assunto', 'Tárgy neve', 'Nom Sujet', 'Θέμα Όνομα', 'Subject Name', 'soggetto Nome', 'ชื่อเรื่อง', 'موضوع کا نام', 'विषय नाम', 'Author Name', 'Nama subjek', 'サブジェクト名', '주체 이름', NULL),
(116, 'edit_subject', 'Edit Subject', 'বিষয় সম্পাদনা', 'Editar asunto', 'تحرير الموضوع', 'Onderwerp bewerken', 'Изменить тему', '编辑主题', 'Konu Düzenle', 'Editar assunto', 'Tárgy szerkesztése', 'Modifier Objet', 'Επεξεργασία θέματος', 'Betreff bearbeiten', 'Modifica oggetto', 'แก้ไขเรื่อง', 'موضوع میں ترمیم کریں', 'विषय संपादित करें', 'Subiectum', 'Edit Perihal', '編集件名', '편집 주제', NULL),
(117, 'day', 'Day', 'দিন', 'Día', 'يوم', 'Dag', 'День', '天', 'Gün', 'Dia', 'Nap', 'journée', 'Ημέρα', 'Tag', 'Giorno', 'วัน', 'ڈے', 'दिन', 'Dies', 'Hari', '日', '일', NULL),
(118, 'starting_time', 'Starting Time', 'সময় শুরু', 'Tiempo de empezar', 'ابتداء من الوقت', 'Starttijd', 'Время начала', '开始时间', 'Başlangıç ​​zamanı', 'Tempo de partida', 'Kezdve idő', 'Heure de départ', 'Ώρα έναρξης', 'Anfangszeit', 'Tempo di partenza', 'เวลาเริ่มต้น', 'وقت پر شروع', 'प्रारम्भ का समय', 'satus Tempus', 'Waktu mulai', '起動時間', '시간 시작', NULL),
(119, 'hour', 'Hour', 'ঘন্টা', 'Hora', 'ساعة', 'Uur', 'Час', '小时', 'Saat', 'Hora', 'Óra', 'Heure', 'Ώρα', 'Stunde', 'Ora', 'ชั่วโมง', 'قیامت', 'समय', 'Hora', 'Jam', '時間', '시간', NULL),
(120, 'minutes', 'Minutes', 'মিনিট', 'Minutos', 'دقيقة', 'Notulen', 'минут', '纪要', 'dakika', 'Minutos', 'Percek', 'Minutes', 'Λεπτά', 'Protokoll', 'Minuti', 'รายงานการประชุม', 'منٹس', 'मिनट', 'minutes', 'Menit', '分', '의사록', NULL),
(121, 'ending_time', 'Ending Time', 'সময় শেষ', 'terminando Tiempo', 'إنهاء الوقت', 'Ending Time', 'Время окончания', '结束时间', 'Zaman Bitiş', 'Tempo Final', 'Befejezés ideje', 'Fin Temps', 'Ώρα λήξης', 'Endzeit', 'Fine Tempo', 'เวลาสิ้นสุด', 'وقت ختم', 'अंतिम समय', 'Bellum Tempus', 'akhir Waktu', '終了時刻', '시간 종료', NULL),
(122, 'edit_class_routine', 'Edit Class Routine', 'সম্পাদনা ক্লাস রুটিন', 'Rutina de edición Clase', 'روتين تحرير الفئة', 'Klasse bewerken Routine', 'Рутинное Редактировать Класс', '编辑常规类', 'Düzenleme Sınıf Rutin', 'Editar Classe de rotina', 'Szerkesztés osztály rutin', 'Modifier la classe de routine', 'Επεξεργασία Κατηγορίας ρουτίνας', 'Bearbeiten Klasse Routine', 'Modifica classe di routine', 'ประจำชั้นแก้ไข', 'تصیح کلاس ضابطہء', 'संपादित कक्षा नियमित', 'Class Edit DEFUNCTORIUS', 'Mengedit Kelas Rutin', '編集クラスルーチン', '편집 클래스 루틴', NULL),
(123, 'select_subject', 'Select Subject', 'বিষয় নির্বাচন করুন', 'Seleccione Tema', 'حدد الموضوع', 'Selecteer Onderwerp', 'Выберите тему', '选择主题', 'Konu seçin', 'Selecione Assunto', 'Válassza a Tárgy', 'Sélectionnez Objet', 'Επιλέξτε Θέμα', 'Wählen Sie Betreff', 'Selezionare Oggetto', 'เลือกสาขาวิชา', 'موضوع منتخب', 'विषय का चयन', 'Subject Select', 'Pilih Jurusan', '件名を選択', '선택 주제', NULL),
(124, 'manage_daily_attendance', 'Manage Daily Attendance', 'দৈনিক এ্যাটেনডেন্স পরিচালনা', 'Manejo de Asistencia Diaria', 'إدارة الحضور اليومي', 'Manage dagelijkse aanwezigheid', 'Управление ежедневной посещаемости', '管理日常考勤', 'Günlük Katılım yönet', 'Gerenciar atendimento diário', 'Kezelése napi látogatottsága', 'Gérer présences quotidiennes', 'Διαχειριστείτε την καθημερινή προσέλευση', 'Verwalten tägliche Anwesenheit', 'Gestire presenza quotidiana', 'จัดการเข้าร่วมประชุมทุกวัน', 'روزانہ حاضری انتظام کریں', 'दैनिक उपस्थिति प्रबंधित', 'Manage cotidianarum', 'Mengelola Kehadiran Harian', '毎日の出席を管理します', '매일 출석 관리', NULL),
(125, 'select_date', 'Select Date', 'তারিখ নির্বাচন করুন', 'Seleccione fecha', 'حدد التاريخ', 'Datum selecteren', 'Выберите дату', '选择日期', 'seçin tarihi', 'Selecione Data', 'Válassza ki a dátum', 'Sélectionnez date', 'Επιλέξτε Ημερομηνία', 'Wählen Sie Datum', 'Selezionare Data', 'เลือกวันที่', 'تاریخ منتخب', 'तारीख़ चुनें', 'Select Date', 'Pilih Tanggal', '日付を選択', '날짜 선택', NULL),
(126, 'select_month', 'Select Month', 'মাস নির্বাচন করুন', 'Seleccione mes', 'اختر الشهر', 'Selecteer maand', 'Выберите месяц', '选择月份', 'Ay seç', 'Selecione o mês', 'Válassza ki a hónap', 'Sélectionnez un mois', 'Επιλογή Μήνα', 'Wählen Sie einen Monat', 'Selezionare il mese', 'เลือกเดือน', 'مہینہ منتخب کریں', 'महीना चुनिए', 'Select Month', 'Pilih Bulan', '月を選択', '월을 선택', NULL),
(127, 'select_year', 'Select Year', 'নির্বাচন বছর', 'Seleccionar año', 'اختر السنة', 'Selecteer Jaar', 'Выберите год', '选择年份', 'Yıl seçin', 'Selecione o ano', 'Válassza év', 'Sélectionnez Année', 'Επιλέξτε Έτος', 'Wählen Jahr', 'Seleziona Anno', 'เลือกปี', 'چھانٹیں کریں', 'चयन वर्ष', 'Anno select', 'pilih Tahun', '年を選択', '년도 선택', NULL),
(128, 'manage_attendance', 'Manage Attendance', 'এ্যাটেনডেন্স পরিচালনা', 'Manejo de Asistencia', 'إدارة الحضور', 'Beheer Attendance', 'Управление посещаемости', '考勤管理', 'Seyirci yönet', 'Gerenciar Presença', 'kezelése Részvétel', 'Gérer Participation', 'διαχειριστείτε Συμμετοχή', 'verwalten Teilnahme', 'gestire presenze', 'จัดการเข้าร่วมประชุม', 'حاضری انتظام کریں', 'उपस्थिति प्रबंधित', 'frequentatio Manage', 'mengelola Kehadiran', '出席を管理します', '출석 관리', NULL),
(129, 'manage_exam', 'Manage Exam', 'পরীক্ষার পরিচালনা', 'Manejo de examen', 'إدارة الامتحانات', 'Beheer Examen', 'Управление экзамен', '考试管理', 'Sınav Yönet', 'Gerenciar Exam', 'kezelése vizsga', 'Gérer examen', 'διαχειριστείτε τις εξετάσεις', 'verwalten Exam', 'gestire esame', 'จัดการสอบ', 'امتحان انتظام کریں', 'परीक्षा की व्यवस्था करें', 'IV Manage', 'mengelola Ujian', '試験を管理します', '시험 관리', NULL),
(130, 'add_exam', 'Add Exam', 'পরীক্ষার যোগ', 'Añadir Examen', 'إضافة الامتحان', 'Exam toevoegen', 'Добавить экзамен', '添加考试', 'Sınav ekle', 'Adicionar Exam', 'Add vizsga', 'Ajouter examen', 'Προσθέστε Εξετάσεων', 'In Exam', 'aggiungere esame', 'เพิ่มการสอบ', 'امتحان میں شامل کریں', 'परीक्षा जोड़े', 'Add Exam', 'Tambahkan Ujian', '試験を追加', '시험 추가', NULL),
(131, 'exam_name', 'Exam Name', 'পরীক্ষার নাম', 'Nombre del examen', 'اسم الامتحان', 'examen Naam', 'экзамен Название', '考试名称', 'sınav Adı', 'exame Nome', 'vizsga neve', 'Nom d\'examen', 'εξετάσεις Όνομα', 'Prüfungsname', 'Nome esame', 'ชื่อสอบ', 'امتحان نام', 'परीक्षा का नाम', 'IV Name', 'ujian Nama', '試験名', '시험 이름', NULL),
(132, 'date', 'Date', 'তারিখ', 'Fecha', 'تاريخ', 'Datum', 'Дата', '日期', 'tarih', 'Encontro', 'Dátum', 'date', 'Ημερομηνία', 'Datum', 'Data', 'วันที่', 'تاریخ', 'तारीख', 'Date', 'Tanggal', '日付', '날짜', NULL),
(133, 'comment', 'Comment', 'মন্তব্য', 'Comentario', 'التعليق', 'Commentaar', 'Комментарий', '评论', 'Yorum', 'Comente', 'Megjegyzés', 'Commentaire', 'Σχόλιο', 'Kommentar', 'Commento', 'คิดเห็น', 'تبصرہ', 'टिप्पणी', 'Comment', 'Komentar', 'コメント', '논평', NULL),
(134, 'edit_exam', 'Edit Exam', 'পরীক্ষার সম্পাদনা', 'Editar examen', 'تحرير امتحان', 'Examen bewerken', 'Редактировать экзамен', '编辑考试', 'Düzenleme Sınavı', 'Editar Exame', 'szerkesztés vizsga', 'Modifier examen', 'Επεξεργασία Εξετάσεων', 'Prüfung bearbeiten', 'Modifica esame', 'แก้ไขการสอบ', 'امتحان میں ترمیم کریں', 'परीक्षा संपादित करें', 'Edit Exam', 'mengedit Ujian', '編集試験', '편집 시험', NULL),
(135, 'manage_grade', 'Manage Grade', 'গ্রেড পরিচালনা', 'Manejo de Grado', 'إدارة الصف', 'Beheer Grade', 'Управление Grade', '管理级', 'Sınıf Yönet', 'Gerenciar Grade', 'Kezelés Grade', 'Gérer année', 'διαχειριστείτε Βαθμός', 'verwalten Grade', 'gestire grado', 'จัดการเกรด', 'گریڈ انتظام کریں', 'ग्रेड प्रबंधित', 'Grade Manage', 'mengelola kelas', 'グレードを管理します', '등급 관리', NULL),
(136, 'grade_list', 'Grade List', 'গ্রেড তালিকা', 'Lista de calificaciones', 'قائمة الصف', 'Grade List', 'Список Оценка', '等级名单', 'sınıf listesi', 'Lista Grade', 'Grade listája', 'Liste de grade', 'Λίστα βαθμός', 'Notenliste', 'Lista grado', 'รายการเกรด', 'گریڈ کی فہرست', 'ग्रेड सूची', 'Grade List', 'Daftar kelas', 'グレード一覧', '학년 목록', NULL),
(137, 'add_grade', 'Add Grade', 'গ্রেড যোগ', 'Añadir Grado', 'إضافة العلمية', 'Voeg Grade', 'Добавить Grade', '新增成绩', 'Sınıf ekle', 'Adicionar Grade', 'Add Grade', 'Ajouter grade', 'Προσθέστε Βαθμός', 'In Grade', 'Aggiungere grado', 'เพิ่มเกรด', 'گریڈ کا اضافہ کریں', 'ग्रेड जोड़े', 'Add Grade', 'Tambahkan kelas', 'グレードを追加', '등급 추가', NULL),
(138, 'grade_name', 'Grade Name', 'গ্রেড নাম', 'Nombre grado', 'اسم الصف', 'Grade Naam', 'Имя Оценка', '牌号名称', 'Sınıf Adı', 'Nome grau', 'Grade neve', 'Nom de grade', 'Όνομα βαθμός', 'Grade-Name', 'Nome grado', 'ชื่อชั้นประถมศึกษา', 'گریڈ نام', 'ग्रेड नाम', 'Name Part', 'Nama kelas', 'グレード名', '학년 이름', NULL),
(139, 'grade_point', 'Grade Point', 'গ্রেড পয়েন্ট', 'Punto de grado', 'الصف نقطة', 'Grade Point', 'Оценка точки', '绩点', 'not', 'Ponto de classificação', 'Grade Point', 'grade point', 'Βαθμολογία Point', 'Noten', 'Grade Point', 'เกรด', 'گریڈ نقطہ', 'ग्रेड बिंदु', 'gradus punctum', 'Indeks Prestasi', 'グレードポイント', '학점', NULL),
(140, 'mark_from', 'Mark From', 'মার্ক থেকে', 'mark De', 'علامة من', 'Mark Van', 'Mark От', '马克', 'Gönderen Mark', 'Mark De', 'Mark', 'Mark De', 'Mark Από', 'Mark Von', 'Mark Da', 'Mark จาก', 'سے Mark', 'मार्क से', 'Mark ex', 'Mark Dari', 'からマーク', '에서 마크', NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`, `vietnamese`) VALUES
(141, 'mark_upto', 'Mark Upto', 'মার্ক পর্যন্ত', 'hasta mark', 'علامة لغاية', 'Mark Tot', 'Марк Upto', '马克高达', 'Mark Kadar', 'Mark Upto', 'Mark Akár', 'Mark Upto', 'Mark Μέχρι', 'Mark Bis', 'Mark Fino', 'มาร์คไม่เกิน', 'مارک تک', 'निशान तक', 'Mark Upto', 'Mark Upto', 'マーク点で最大', '마크 개까지', NULL),
(142, 'manage_exam_marks', 'Manage Exam Marks', 'পরীক্ষার মার্কস পরিচালনা', 'Manejo de Marcas del examen', 'إدارة علامات الامتحان', 'Beheer examencijfers', 'Управление экзаменационные Marks', '管理考试马克斯', 'Sınav Marks yönet', 'Gerenciar marcas de exame', 'Kezelése vizsga Marks', 'Gérer les marques d\'examen', 'Διαχειριστείτε τις εξετάσεις σήματα', 'Verwalten Exam Marks', 'Gestire Marks esame', 'จัดการ Marks สอบ', 'امتحان مارکس کو منظم کریں', 'परीक्षा मार्क्स प्रबंधित', 'IV Manage Marks', 'Mengelola Marks Ujian', '試験のマークを管理します', '시험 마크 관리', NULL),
(143, 'select_exam', 'Select Exam', 'পরীক্ষার নির্বাচন', 'Elija un examen', 'حدد الامتحان', 'Selecteer Examen', 'Выберите экзамен', '选择考试', 'seç Sınav', 'Select Exam', 'Select vizsga', 'Sélectionnez Exam', 'Επιλέξτε Εξετάσεων', 'Wählen Sie Prüfung', 'Selezionare esame', 'เลือกสอบ', 'امتحان منتخب', 'परीक्षा का चयन', 'Select Exam', 'Pilih Ujian', '試験を選択', '선택의 시험', NULL),
(144, 'send_marks', 'Send Marks', 'মার্কস পাঠান', 'Enviar marcas', 'إرسال ماركس', 'Stuur Marks', 'Отправить Marks', '发送标志', 'Marks gönder', 'Enviar Marcas', 'Küldj Marks', 'Envoyer Marks', 'Αποστολή σημάτων', 'senden Marks', 'Invia Marks', 'ส่งคะแนน', 'مارکس کا حساب', 'मार्क्स भेजें', 'Send Marks', 'Kirim Marks', 'マークスを送ります', '마크 보내기', NULL),
(145, 'select_receiver', 'Select Receiver', 'রিসিভার নির্বাচন', 'Seleccione receptor', 'اختر استقبال', 'Selecteer Receiver', 'Выберите приемник', '选择接收', 'Alıcı seçimini', 'Selecione Receiver', 'Válassza Receiver', 'Sélectionnez récepteur', 'Επιλέξτε δέκτης', 'Wählen Sie Receiver', 'selezionare Ricevitore', 'เลือกรับสัญญาณ', 'وصول کریں', 'रिसीवर का चयन करें', 'select receptorem', 'pilih Receiver', 'レシーバーを選択', '수신기를 선택', NULL),
(146, 'students', 'Students', 'শিক্ষার্থীরা', 'Los estudiantes', 'الطلاب', 'leerlingen', 'Студенты', '学生们', 'Öğrenciler', 'estudantes', 'diákok', 'Élèves', 'Φοιτητόκοσμος', 'Studenten', 'Alunni', 'นักเรียน', 'طلباء', 'छात्र', 'Students', 'siswa', '学生の', '재학생', NULL),
(147, 'select_a_class', 'Select A Class', 'একজন ক্লাস বেছে নিন', 'Seleccione una clase', 'اختر الفئة أ', 'Selecteer A Class', 'Выберите класс', '选择一个类', 'A Sınıfı seçin', 'Selecione uma classe', 'Válasszon egy osztály', 'Sélectionnez une classe', 'Επιλέξτε μια κατηγορία', 'Wählen Sie eine Klasse', 'Selezionare una classe', 'เลือกชั้น', 'A کلاس منتخب کریں', 'एक वर्ग का चयन', 'Class A Select', 'Pilih A Kelas', 'クラスを選択します', '클래스를 선택', NULL),
(148, 'select_an_exam', 'Select An Exam', 'একটি পরীক্ষার নির্বাচন', 'Seleccione un examen', 'حدد الامتحان', 'Selecteer een examen', 'Выберите экзамен', '选择考试', 'Bir Sınav seçin', 'Escolha um exame', 'Válasszon egy vizsga', 'Sélectionnez Un examen', 'Επιλέξτε μια εξέταση', 'Wählen Sie eine Prüfung', 'Selezionare un esame', 'เลือกสอบ', 'ایک امتحان کریں', 'एक परीक्षा का चयन करें', 'Select an nito', 'Pilih Sebuah Ujian', '試験を選択', '시험을 선택', NULL),
(149, 'view_tabulation_sheet', 'View Tabulation Sheet', 'দেখুন ট্যাবুলেশন শিট', 'Ver hoja de tabulación', 'عرض ورقة الجدولة', 'Bekijk Tabelleren Sheet', 'Просмотр Табуляционная Sheet', '查看制表表', 'Görünüm Tablolama Sayfası', 'Ver Folha de Tabulação', 'Részletek táblázatos Sheet', 'Voir Tabulation Sheet', 'Προβολή Φύλλο Υπολογισμού', 'Ansicht Tabulablatt', 'Vista Tabulazione Sheet', 'ดูแผ่นแจกแจง', 'ٹیبیولیشن شیٹ لنک', 'देखें सारणीकरण शीट', 'View tabularia Sheet', 'Lihat Tabulasi Lembar', 'ビュー集計シート', '보기 도표화 시트', NULL),
(150, 'subjects', 'Subjects', 'প্রজাদের', 'Asignaturas', 'المواضيع', 'vakken', 'Предметы', '主题', 'Konular', 'assuntos', 'Tantárgyak', 'Sujets', 'θέματα', 'Fächer', 'Soggetti', 'อาสาสมัคร', 'مضامین', 'विषयों', 'Subjects', 'subyek', '科目', '주제', NULL),
(151, 'total', 'Total', 'মোট', 'Total', 'مجموع', 'Totaal', 'Всего', '总', 'Toplam', 'Total', 'Teljes', 'Total', 'Σύνολο', 'Gesamt', 'Totale', 'ทั้งหมด', 'کل', 'कुल', 'summa', 'Total', '合計', '합계', NULL),
(152, 'create_single_invoice', 'Create Single Invoice', 'একক চালান তৈরি করুন', 'Crear sola factura', 'إنشاء واحدة الفاتورة', 'Maak één factuur', 'Создание одного счета', '创建单发票', 'Tek Fatura Oluşturma', 'Criar factura única', 'Készítsen egyetlen számla', 'Créer facture unique', 'Δημιουργία ενιαίο τιμολόγιο', 'Erstellen von Einzel Rechnung', 'Creare un\'unica fattura', 'สร้างเดี่ยวใบแจ้งหนี้', 'سنگل انوائس بنائیں', 'एकल चालान बनाएं', 'Cautionem singulas', 'Buat Satu Faktur', 'シングル請求書を作成します。', '단일 송장 만들기', NULL),
(153, 'create_mass_invoice', 'Create Mass Invoice', 'ভর চালান তৈরি করুন', 'Crear una masa de facturas', 'إنشاء كتلة الفاتورة', 'Maak Mass Factuur', 'Создание счета-фактуры Mass', '建立质量发票', 'Kitle Fatura Oluşturma', 'Criar Mass Invoice', 'Készítsen Mass számla', 'Créer Mass Invoice', 'Δημιουργία Μαζικής Τιμολόγιο', 'Erstellen Masse Rechnung', 'Creare la massa fattura', 'สร้างมวลใบแจ้งหนี้', 'ماس انوائس بنائیں', 'मास चालान बनाएं', 'Create Mass Invoice', 'Buat Massa Faktur', 'マス請求書を作成します。', '질량 송장 만들기', NULL),
(154, 'invoice_informations', 'Invoice Informations', 'চালান Informations', 'Informaciones de factura', 'معلومات الفاتورة', 'factuur Informations', 'Счет-фактура Информация', '发票信息', 'fatura Bilgileri', 'Informações factura', 'számla Információk', 'Informations de facturation', 'τιμολόγιο Πληροφορίες', 'Rechnungsdaten', 'Informazioni fattura', 'ข้อมูลใบแจ้งหนี้', 'انوائس کی معلومات', 'चालान जानकारी', 'cautionem Informations', 'Informasi faktur', '請求書情報', '송장 정보', NULL),
(155, 'title', 'Title', 'খেতাব', 'Título', 'عنوان', 'Titel', 'заглавие', '标题', 'başlık', 'Título', 'Cím', 'Titre', 'Τίτλος', 'Titel', 'Titolo', 'หัวข้อ', 'عنوان', 'शीर्षक', 'Title:', 'Judul', 'タイトル', '표제', NULL),
(156, 'description', 'Description', 'বিবরণ', 'Descripción', 'وصف', 'Beschrijving', 'Описание', '描述', 'tanım', 'Descrição', 'Leírás', 'La description', 'Περιγραφή', 'Beschreibung', 'Descrizione', 'ลักษณะ', 'تفصیل', 'विवरण', 'Description', 'Deskripsi', '説明', '기술', NULL),
(157, 'payment_informations', 'Payment Informations', 'পেমেন্ট Informations', 'Información sobre el pago', 'معلومات الدفع', 'Payment Informations', 'Информация оплаты', '付款信息', 'Ödeme Bilgileri', 'Informações de pagamento', 'fizetési Információk', 'Informations de paiement', 'Πληροφορίες πληρωμής', 'Bezahlung Informationen', 'Informazioni di pagamento', 'ข้อมูลการชำระเงิน', 'ادائیگی کی معلومات', 'भुगतान जानकारी', 'Payment Informations', 'Informasi Pembayaran', '支払情報', '결제 정보', NULL),
(158, 'enter_total_amount', 'Enter Total Amount', 'মোট পরিমাণ লিখুন', 'Ingrese monto total', 'أدخل المبلغ الكلي لل', 'Voer Totaal bedrag', 'Введите общую сумму', '输入总金额', 'Toplam Miktar giriniz', 'Digite Valor Total', 'Írja Teljes összeg', 'Entrez Montant total', 'Εισάγετε Συνολικό Ποσό', 'Geben Sie Gesamtbetrag', 'Inserire l\'importo totale', 'ใส่จำนวนเงินรวม', 'کل رقم درج', 'कुल राशि में प्रवेश', 'Enter Total size', 'Masukkan Jumlah Jumlah', '合計金額を入力してください', '전체 금액을 입력', NULL),
(159, 'payment', 'Payment', 'প্রদান', 'Pago', 'دفع', 'Betaling', 'Оплата', '付款', 'Ödeme', 'Pagamento', 'Fizetés', 'Paiement', 'Πληρωμή', 'Zahlung', 'Pagamento', 'การชำระเงิน', 'ادائیگی', 'भुगतान', 'Payment', 'Pembayaran', '支払い', '지불', NULL),
(160, 'enter_payment_amount', 'Enter Payment Amount', 'পেমেন্ট পরিমাণ লিখুন', 'Ingrese monto de pago', 'أدخل دفع المبلغ', 'Voer Betaling Bedrag', 'Введите Сумма платежа', '输入付款金额', 'Ödeme Miktar giriniz', 'Digite Valor do Pagamento', 'Írja Kifizetés összege', 'Entrez le montant du paiement', 'Εισάγετε Ποσό Πληρωμής', 'Geben Sie Zahlungsbetrag', 'Inserire l\'importo di pagamento', 'ป้อนจำนวนเงิน', 'ادائیگی کی رقم درج', 'भुगतान राशि दर्ज', 'Aliquam Payment Enter', 'Masukkan Jumlah Pembayaran', 'お支払い金額を入力します。', '결제 금액을 입력', NULL),
(161, 'status', 'Status', 'অবস্থা', 'Estado', 'الحالة', 'toestand', 'Положение дел', '状态', 'durum', 'estado', 'Állapot', 'statut', 'Κατάσταση', 'Status', 'Stato', 'สถานะ', 'سٹیٹس', 'स्थिति', 'Status', 'Status', '状態', '지위', NULL),
(162, 'paid', 'Paid', 'Paid', 'Pagado', 'دفع', 'Betaald', 'оплаченный', '付费', 'ücretli', 'Pago', 'Fizetett', 'Payé', 'Έμμισθος', 'Bezahlt', 'Pagato', 'ต้องจ่าย', 'ادا کی', 'भुगतान किया है', 'Paid', 'dibayar', '支払われました', '유료', NULL),
(163, 'unpaid', 'Unpaid', 'অবৈতনিক', 'No pagado', 'غير مدفوع', 'onbetaald', 'неоплаченный', '未付', 'ödenmemiş', 'não remunerado', 'Kifizetetlen', 'Non payé', 'Απλήρωτος', 'unbezahlt', 'non pagato', 'ยังไม่ได้ชำระ', 'بلا معاوضہ', 'अवैतनिक', 'unpaid', 'Tunggakan', '未払い', '지불하지 않은', NULL),
(164, 'method', 'Method', 'পদ্ধতি', 'Método', 'طريقة', 'Methode', 'метод', '方法', 'Yöntem', 'Método', 'Módszer', 'la méthode', 'Μέθοδος', 'Verfahren', 'metodo', 'วิธี', 'طریقہ', 'तरीका', 'ratio', 'Metode', '方法', '방법', NULL),
(165, 'cash', 'Cash', 'নগদ', 'Efectivo', 'السيولة النقدية', 'geld', 'Денежные средства', '现金', 'Nakit', 'Dinheiro', 'Készpénz', 'Argent liquide', 'Μετρητά', 'Kasse', 'Contanti', 'เงินสด', 'نقد', 'रोकड़', 'Cash', 'Kas', '現金', '현금', NULL),
(166, 'check', 'Check', 'চেক', 'Comprobar', 'الاختيار', 'check', 'Проверьте', '检查', 'Ara', 'Verifica', 'Jelölje be', 'Vérifier', 'Έλεγχος', 'Prüfen', 'Dai un\'occhiata', 'ตรวจสอบ', 'چیک کریں', 'चेक', 'reprehendo', 'Memeriksa', 'チェック', '검사', NULL),
(167, 'card', 'Card', 'কার্ড', 'Tarjeta', 'بطاقة', 'Kaart', 'Карта', '卡', 'kart', 'Cartão', 'Kártya', 'Carte', 'Κάρτα', 'Karte', 'Carta', 'บัตร', 'کارڈ', 'कार्ड', 'Card', 'Kartu', 'カード', '카드', NULL),
(168, 'add_invoice', 'Add Invoice', 'চালান যোগ', 'Añadir factura', 'إضافة الفاتورة', 'Voeg Invoice', 'Добавить счет-фактуру', '添加发票', 'Fatura ekle', 'Adicionar Invoice', 'Add számla', 'Ajouter facture', 'Προσθέστε Τιμολόγιο', 'In Rechnung', 'Aggiungere fattura', 'เพิ่มใบแจ้งหนี้', 'انوائس میں شامل کریں', 'चालान जोड़े', 'Add Invoice', 'Tambahkan Faktur', '請求書を追加', '송장 추가', NULL),
(169, 'unpaid_invoices', 'Unpaid Invoices', 'না মেটানো বিল', 'facturas impagadas', 'فواتير غير مدفوعة', 'Onbetaalde facturen', 'Неоплаченные счета', '未付发票', 'ödenmemiş Faturalar', 'As facturas não pagas', 'Kifizetetlen számlák', 'factures impayées', 'ανεξόφλητα τιμολόγια', 'Unbezahlte Rechnungen', 'Fatture non pagate', 'ใบแจ้งหนี้ที่ค้างชำระ', 'بلا معاوضہ رسید', 'अवैतनिक चालान', 'Invoices unpaid', 'Faktur yang belum dibayar', '未払いの請求書', '미지급 송장', NULL),
(170, 'payment_history', 'Payment History', 'অর্থ প্রদান ইতিহাস', 'historial de pagos', 'تاريخ الدفع', 'Betaalgeschiedenis', 'История платежей', '付款记录', 'ödeme geçmişi', 'Histórico de pagamento', 'fizetési előzmények', 'historique de paiement', 'Ιστορικό πληρωμών', 'Zahlungshistorie', 'Storico dei pagamenti', 'ประวัติการชำระเงิน', 'ادائیگی کی تاریخ', 'भुगतान इतिहास', 'Payment history', 'Riwayat Pembayaran', '支払歴', '지급 내역', NULL),
(171, 'amount', 'Amount', 'পরিমাণ', 'Cantidad', 'كمية', 'Bedrag', 'Количество', '量', 'miktar', 'Quantidade', 'Összeg', 'Montant', 'Ποσό', 'Menge', 'Quantità', 'จำนวน', 'رقم', 'रकम', 'Aliquam', 'Jumlah', '量', '양', NULL),
(172, 'expenses', 'Expenses', 'খরচ', 'Gastos', 'مصاريف', 'uitgaven', 'Затраты', '花费', 'giderler', 'despesas', 'Költségek', 'Dépenses', 'Έξοδα', 'Kosten', 'Spese', 'รายจ่าย', 'اخراجات', 'व्यय', 'expense', 'beban', '経費', '경비', NULL),
(173, 'add_new_expense', 'Add New Expense', 'নিউ ব্যায়ের যোগ', 'Añadir nuevo gasto', 'إضافة حساب جديد', 'Add New Expense', 'Добавить Expense', '新增费用', 'Yeni Harcama Ekle', 'Adicionar nova despesa', 'Új Költség', 'Ajouter New Expense', 'Προσθήκη νέου Εξόδων', 'New Expense', 'Aggiungi nuovo Expense', 'เพิ่มค่าใช้จ่ายใหม่', 'نئے اخراجات کا اضافہ کریں', 'नया खर्च जोड़े', 'Add Expense', 'Tambahkan Beban Baru', '新しい経費を追加', '새로운 비용 추가', NULL),
(174, 'category', 'Category', 'বিভাগ', 'Categoría', 'فئة', 'Categorie', 'категория', '类别', 'Kategori', 'Categoria', 'Kategória', 'Catégorie', 'Κατηγορία', 'Kategorie', 'Categoria', 'ประเภท', 'قسم', 'वर्ग', 'Category', 'Kategori', 'カテゴリー', '범주', NULL),
(175, 'add_expense', 'Add Expense', 'ব্যায়ের যোগ', 'Añadir Gasto', 'إضافة المصروفات', 'Expense toevoegen', 'Добавить Expense', '增加成本', 'Harcama ekle', 'Adicionar Despesa', 'Add költség', 'Ajouter Expense', 'Προσθέστε Εξόδων', 'In Expense', 'Aggiungere Expense', 'เพิ่มค่าใช้จ่าย', 'اخراجات میں شامل کریں', 'व्यय जोड़े', 'Add Expense', 'Tambahkan Beban', '経費を追加', '비용 추가', NULL),
(176, 'select_expense_category', 'Select Expense Category', 'নির্বাচন ব্যায়ের শ্রেণী', 'Seleccione una categoría de gastos', 'حدد نفقات الفئة', 'Selecteer Expense Categorie', 'Выберите Expense Категория', '选择费用类别', 'Seçiniz Gider Kategori', 'Selecione a categoria de despesa', 'Select Költség kategória', 'Sélectionnez Catégorie de dépenses', 'Επιλέξτε Κατηγορία Εξόδων', 'Wählen Sie Kostenkategorie', 'Selezionare Spese Categoria', 'เลือกประเภทค่าใช้จ่าย', 'منتخب اخراجات زمرہ', 'चयन व्यय श्रेणी', 'Select Expense Category', 'Pilih Beban Kategori', '経費カテゴリを選択', '선택 경비 카테고리', NULL),
(177, 'add_new_expense_category', 'Add New Expense Category', 'যোগ নতুন ব্যায়ের শ্রেণী', 'Añadir Nueva Categoría del gasto', 'إضافة جديد نفقة الفئة', 'Add New Expense Categorie', 'Добавить Expense Категория', '添加新的费用类别', 'Yeni Gider Kategori Ekle', 'Adicionar Nova Categoria de Despesa', 'Új Költség kategória', 'Ajouter une nouvelle catégorie de dépenses', 'Προσθήκη νέου Εξόδων Κατηγορία', 'New Kostenkategorie', 'Aggiungi nuovo Expense Categoria', 'เพิ่มใหม่ประเภทค่าใช้จ่าย', 'شامل کریں نئے اخراجات زمرہ', 'जोड़े नया खर्च श्रेणी', 'Add Expense Category', 'Tambahkan New Beban Kategori', '新しい経費カテゴリを追加', '새로운 비용 카테고리 추가하기', NULL),
(178, 'add_expense_category', 'Add Expense Category', 'যোগ ব্যায়ের শ্রেণী', 'Añadir Categoría del gasto', 'إضافة حساب الفئة', 'Voeg Expense Categorie', 'Добавить Expense Категория', '添加费用类别', 'Gider Kategori Ekle', 'Adicionar Categoria de Despesa', 'Add Költség kategória', 'Ajouter catégorie de dépenses', 'Προσθέστε Εξόδων Κατηγορία', 'In Kostenkategorie', 'Aggiungere Expense Categoria', 'เพิ่มค่าใช้จ่ายในหมวดหมู่', 'اخراجات زمرہ میں شامل کریں', 'जोड़े व्यय श्रेणी', 'Expense Add Category', 'Tambahkan Beban Kategori', '経費カテゴリを追加', '비용 카테고리 추가하기', NULL),
(179, 'edit_expense', 'Edit Expense', 'ব্যায়ের সম্পাদনা', 'Edición de gastos', 'تحرير المصاريف', 'Expense bewerken', 'Редактирование Expense', '编辑费用', 'Düzenleme Gider', 'Editar Despesa', 'Szerkesztés költség', 'Modifier Expense', 'Επεξεργασία Εξόδων', 'Bearbeiten Kosten', 'Modifica di spesa', 'ค่าใช้จ่ายในการแก้ไข', 'اخراجات میں ترمیم کریں', 'व्यय संपादित करें', 'Expense Edit', 'mengedit Beban', '編集経費', '편집 비용', NULL),
(180, 'manage_library_books', 'Manage Library Books', 'পরিচালনা লাইব্রেরী বই', 'Manejo de libros de la biblioteca', 'إدارة كتب المكتبة', 'Bibliotheek beheren Books', 'Управление библиотечными книгами', '管理图书', 'Kütüphane Kitapları Yönet', 'Gerenciar Biblioteca Livros', 'Kezelése Könyvtár Könyvek', 'Gérer des livres de bibliothèque', 'Διαχειριστείτε Βιβλιοθήκη Βιβλία', 'Verwalten Bibliothek Bücher', 'Il gestore di Library Books', 'จัดการหนั​​งสือห้องสมุด', 'کتب خانے کی کتابیں انتظام کریں', 'प्रबंधित लाइब्रेरी में किताबें', 'Manage Library Books', 'Kelola Perpustakaan Buku', '図書館書籍管理', '도서관 도서 관리', NULL),
(181, 'book_list', 'Book List', 'পাঠ্যতালিকা', 'Lista de libros', 'قائمة الكتب', 'Book List', 'Список книг', '图书清单', 'Kitap listesi', 'Lista de livros', 'könyvlistaQuery', 'Liste de livres', 'Λίστα βιβλίο', 'Bücherliste', 'Lista di libri', 'รายชื่อหนังสือ', 'کتاب کی فہرست', 'पुस्तक सूची', 'book', 'Daftar buku', 'ブックリスト', '도서 목록', NULL),
(182, 'add_book', 'Add Book', 'বুক যোগ', 'Añadir libro', 'إضافة كتاب', 'Voeg Book', 'Добавить книгу', '新增图书', 'Kitap ekle', 'Adicionar livro', 'Könyv hozzáadása', 'Description du livre', 'Προσθήκη βιβλίου', 'Add', 'Aggiungere', 'เพิ่มหนังสือ', 'کتاب شامل کریں', 'पुस्तिका में जोड़ें', 'Add book', 'Tambahkan Buku', 'ブックを追加します。', '도서 추가', NULL),
(183, 'book_name', 'Book Name', 'বইয়ের নাম', 'Nombre del libro', 'اسم الكتاب', 'boek Naam', 'Название книги', '书名', 'Kitap Adı', 'Nome do livro', 'Book neve', 'Nom du livre', 'Όνομα βιβλίου', 'Buch-Namens', 'Nome libro', 'ชื่อหนังสือ', 'کتاب کا نام', 'किताब का नाम', 'book Name', 'Nama buku', '書籍名', '책 이름', NULL),
(184, 'author', 'Author', 'লেখক', 'Autor', 'مؤلف', 'Auteur', 'автор', '作者', 'Yazar', 'Autor', 'Szerző', 'Auteur', 'Συγγραφέας', 'Autor', 'Autore', 'ผู้เขียน', 'مصنف', 'लेखक', 'Author:', 'Penulis', '著者', '저자', NULL),
(185, 'price', 'Price', 'মূল্য', 'Precio', 'السعر', 'Prijs', 'Цена', '价钱', 'Fiyat', 'Preço', 'Ár', 'Prix', 'Τιμή', 'Preis', 'Prezzo', 'ราคา', 'قیمت', 'मूल्य', 'Price:', 'Harga', '価格', '가격', NULL),
(186, 'available', 'Available', 'সহজলভ্য', 'Disponible', 'متاح', 'Beschikbaar', 'Доступный', '可用的', 'Mevcut', 'Disponível', 'Elérhető', 'Disponible', 'Διαθέσιμος', 'Erhältlich', 'A disposizione', 'ที่มีจำหน่าย', 'دستیاب', 'उपलब्ध', 'Available', 'Tersedia', '利用できます', '유효한', NULL),
(187, 'unavailable', 'Unavailable', 'অপ্রাপ্য', 'Indisponible', 'غير متوفره', 'Niet beschikbaar', 'Недоступен', '不可用', 'yok', 'Indisponível', 'Nem érhető el', 'Indisponible', 'Δυσεύρετος', 'Nicht verfügbar', 'non disponibile', 'ใช้งานไม่ได้', 'دستیاب نہیں', 'अनुपलब्ध', 'unavailable', 'tidak tersedia', '利用できません', '없는', NULL),
(188, 'manage_transport', 'Manage Transport', 'পরিবহন পরিচালনা', 'Manejo de Transporte', 'إدارة النقل', 'Beheer Transport', 'Управление транспортом', '运输管理', 'Taşıma Yönet', 'Gerenciar Transportes', 'Kezelés szállítás', 'Gérer Transport', 'διαχειριστείτε Μεταφορών', 'verwalten Transport', 'gestire Trasporti', 'การจัดการการขนส่ง', 'ٹرانسپورٹ کا انتظام', 'परिवहन की व्यवस्था करें', 'Manage Transport', 'mengelola Transportasi', '交通管理', '운송 관리', NULL),
(189, 'transport_list', 'Transport List', 'পরিবহন তালিকা', 'Lista de transporte', 'قائمة النقل', 'transport List', 'Транспорт Список', '交通运输清单', 'Taşıma listesi', 'Lista de transportes', 'szállítás listája', 'Liste des transports', 'Λίστα μεταφορές', 'Transportliste', 'Lista dei trasporti', 'รายการขนส่ง', 'ٹرانسپورٹ کی فہرست', 'परिवहन सूची', 'Transport List', 'Daftar transportasi', 'トランスポート一覧', '전송 목록', NULL),
(190, 'add_transport', 'Add Transport', 'পরিবহন যোগ', 'Añadir Transporte', 'إضافة النقل', 'Transport toevoegen', 'Добавить Транспорт', '添加运输', 'Transport ekle', 'Adicionar Transportes', 'Add szállítás', 'Ajouter Transport', 'Προσθέστε Μεταφορών', 'In Transport', 'Aggiungere Trasporti', 'เพิ่มการขนส่ง', 'ٹرانسپورٹ شامل کریں', 'परिवहन जोड़े', 'Add Transport', 'Tambahkan Transportasi', '交通を追加', '전송 추가', NULL),
(191, 'route_name', 'Route Name', 'রুট নাম', 'Nombre ruta', 'اسم الطريق', 'route Naam', 'Название маршрута', '路由名称', 'rota İsmi', 'Nome Route', 'útvonal neve', 'Nom de la route', 'Όνομα διαδρομής', 'Routenname', 'Nome percorso', 'ชื่อเส้นทาง', 'روٹ نام', 'रूट का नाम', 'nomen iter itineris', 'Nama Route', 'ルート名', '경로 이름', NULL),
(192, 'number_of_vehicle', 'Number Of Vehicle', 'গাড়ির সংখ্যা', 'Número de vehículos', 'عدد من المركبات', 'Aantal voertuigkilometers', 'Количество транспортных средств', '数车', 'Araç Sayısı', 'Número de Veículo', 'Számú gépjármű', 'Nombre de véhicules', 'Αριθμός των οχημάτων', 'Anzahl der Fahrzeug', 'Numero di veicoli', 'จำนวนของยานพาหนะ', 'گاڑی کا نمبر', 'वाहन की संख्या', 'Number of vehiculum', 'Jumlah Kendaraan', '車両のナンバー', '차량의 번호', NULL),
(193, 'route_fare', 'Route Fare', 'রুট ভাড়া', 'Fare ruta', 'الطريق أجرة', 'route Fare', 'Маршрут Стоимость проезда', '航线票价', 'rota Fare', 'Tarifa Route', 'útvonal Fare', 'Route Fare', 'Fare διαδρομή', 'Routen Fare', 'Fare percorso', 'ค่าโดยสารเส้นทาง', 'روٹ کرایہ', 'रूट किराया', 'Route agetis valete', 'Harga rute', 'ルート運賃', '경로 요금', NULL),
(194, 'edit_transport', 'Edit Transport', 'পরিবহন সম্পাদনা', 'Editar Transporte', 'تحرير النقل', 'Transport bewerken', 'Изменить Транспорт', '编辑传输', 'Düzenleme Ulaşım', 'Editar Transportes', 'Szerkesztés szállítás', 'Modifier Transport', 'Επεξεργασία Μεταφορών', 'Bearbeiten von Transport', 'Modifica Trasporti', 'แก้ไขขนส่ง', 'ٹرانسپورٹ میں ترمیم کریں', 'परिवहन संपादित करें', 'Edit Transport', 'mengedit Transportasi', '編集交通', '편집 전송', NULL),
(195, 'manage_dormitory', 'Manage Dormitory', 'ডরমিটরি পরিচালনা', 'administrar compartida', 'إدارة سكن', 'Beheer slaapzaal', 'Управление Общежитие', '宿舍管理', 'Yurt yönet', 'Gerenciar Dormitório', 'kezelése Kollégium', 'Gérer Dortoir', 'διαχειριστείτε κοιτώνα', 'verwalten Schlaf', 'gestire Dormitorio', 'จัดการหอพัก', 'شیناگار انتظام کریں', 'छात्रावास की व्यवस्था करें', 'Manage Dormitory', 'mengelola Asrama', '寮を管理します', '기숙사 관리', NULL),
(196, 'dormitory_list', 'Dormitory List', 'ডরমিটরি তালিকা', 'Lista dormitorio', 'قائمة سكن', 'slaapzaal List', 'Список Общий', '宿舍名单', 'yatakhane listesi', 'Lista dormitório', 'Kollégium listája', 'Liste Dortoir', 'Λίστα κοιτώνα', 'Schlafliste', 'Lista dormitorio', 'รายการหอพัก', 'شیناگار کی فہرست', 'छात्रावास सूची', 'dormitorio List', 'Daftar asrama', 'ドミトリー一覧', '기숙사 목록', NULL),
(197, 'add_dormitory', 'Add Dormitory', 'ডরমিটরি যোগ', 'Añadir compartida', 'إضافة سكن', 'slaapzaal toevoegen', 'Добавить Общежитие', '添加宿舍', 'Yurt ekle', 'Adicionar Dormitório', 'Add Kollégium', 'Ajouter Dortoir', 'Προσθέστε κοιτώνα', 'In Schlaf', 'Aggiungere Dormitorio', 'เพิ่มหอพัก', 'شیناگار میں شامل کریں', 'छात्रावास जोड़े', 'Add Dormitory', 'Tambahkan Asrama', '寮を追加', '기숙사 추가', NULL),
(198, 'dormitory_name', 'Dormitory Name', 'ডরমিটরি নাম', 'Nombre del dormitorio', 'اسم المهجع', 'slaapzaal Naam', 'Общий Имя', '宿舍名称', 'yatakhane Ad', 'Nome dormitório', 'Kollégium neve', 'Nom Dortoir', 'κοιτώνα Όνομα', 'Schlafnamens', 'Nome dormitorio', 'ชื่อหอพัก', 'شیناگار نام', 'छात्रावास नाम', 'dormitorio Name', 'Nama asrama', '寮の名前', '기숙사 이름', NULL),
(199, 'number_of_room', 'Number Of Room', 'রুম নম্বর', 'Número de habitación', 'عدد الغرف', 'Aantal kamers', 'Количество номеров', '数种客房', 'Oda Sayısı', 'Número de salas', 'Mennyiség szoba', 'Nombre de chambres', 'Αριθμός δωματίων', 'Anzahl der Zimmer', 'Il numero di stanze', 'จำนวนห้องพัก', 'کمرہ کی تعداد', 'कमरे की संख्या', 'Number of locus', 'Jumlah Kamar', '部屋の数', '룸의 수', NULL),
(200, 'edit_dormitory', 'Edit Dormitory', 'ডরমিটরি সম্পাদনা', 'Editar compartida', 'تحرير سكن', 'bewerken slaapzaal', 'Редактировать Общий', '编辑宿舍', 'Düzenleme Yurdu', 'Editar Dormitório', 'szerkesztés Kollégium', 'Modifier Dortoir', 'Επεξεργασία κοιτώνα', 'Bearbeiten Schlaf', 'Modifica Dormitorio', 'แก้ไขหอพัก', 'شیناگار میں ترمیم کریں', 'छात्रावास संपादित करें', 'Edit Dormitory', 'mengedit Asrama', '編集ドミトリー', '편집 기숙사', NULL),
(201, 'manage_noticeboard', 'Manage Noticeboard', 'নোটিশবোর্ড পরিচালনা', 'administrar tablón de anuncios', 'إدارة وحة إعلانات', 'Beheer Prikbord', 'Управление обьявлений', '管理布告栏', 'noticeboard Yönet', 'Gerenciar Noticeboard', 'Kezelés üzenőfalán', 'Gérer Noticeboard', 'διαχειριστείτε Ανακοινώσεων', 'verwalten Schwarzes Brett', 'gestire Bacheca', 'จัดการป้ายประกาศ', 'نوٹس بورڈ انتظام کریں', 'Noticeboard प्रबंधित', 'Manage Noticeboard', 'mengelola Noticeboard', 'Noticeboardを管理します', 'noticeboard에 관리', NULL),
(202, 'noticeboard_list', 'Noticeboard List', 'নোটিশবোর্ড তালিকা', 'Lista tablón de anuncios', 'قائمة وحة إعلانات', 'prikbord List', 'Список обьявлений', '布告名单', 'noticeboard listesi', 'Lista de avisos', 'üzenőfalán listája', 'Liste de Noticeboard', 'Λίστα ανακοινώσεων', 'Schwarzes Brett Liste', 'Lista bacheca', 'รายการป้ายประกาศ', 'نوٹس کی فہرست', 'noticeboard सूची', 'Noticeboard List', 'Daftar pengumuman', 'Noticeboard一覧', 'noticeboard에 목록', NULL),
(203, 'add_noticeboard', 'Add Noticeboard', 'নোটিশবোর্ড যোগ', 'Añadir tablón de anuncios', 'إضافة وحة إعلانات', 'Prikbord toevoegen', 'Добавить обьявлений', '添加告示栏', 'noticeboard ekle', 'Adicionar Noticeboard', 'Add üzenőfalán', 'Ajouter Noticeboard', 'Προσθέστε Ανακοινώσεων', 'In Schwarzes Brett', 'Aggiungere Bacheca', 'เพิ่มป้ายประกาศ', 'نوٹس بورڈ میں شامل', 'Noticeboard जोड़े', 'Add Noticeboard', 'Tambahkan Noticeboard', 'Noticeboardを追加', 'noticeboard에 추가', NULL),
(204, 'notice', 'Notice', 'বিজ্ঞপ্তি', 'darse cuenta', 'إشعار', 'kennisgeving', 'уведомление', '注意', 'ihbar', 'Aviso prévio', 'Értesítés', 'Avis', 'Ειδοποίηση', 'Beachten', 'Avviso', 'แจ้งให้ทราบ', 'نوٹس', 'नोटिस', 'Notice', 'Melihat', '通知', '주의', NULL),
(205, 'add_notice', 'Add Notice', 'নোটিশ যোগ', 'Añadir Aviso', 'إضافة إشعار', 'Voeg Kennisgeving', 'Добавить уведомление', '添加通知', 'Uyarı ekle', 'Adicionar Notice', 'Add közlemény', 'Ajouter l\'avis', 'Προσθήκη ανακοίνωσης', 'In Hinweis', 'Aggiungere Avviso', 'เพิ่มเวปไซด์', 'نوٹس کا اضافہ کریں', 'सूचना जोड़े', 'Add Notice', 'Tambahkan Pemberitahuan', 'お知らせを追加します。', '공지 사항 추가', NULL),
(206, 'send_sms_to_all', 'Send Sms To All', 'সকল এসএমএস পাঠাতে', 'Enviar SMS a todos', 'إرسال الرسائل القصيرة إلى جميع', 'Stuur sms\'en naar alle', 'Отправить Sms для всех', '发送短信到所有', 'All To Sms Gönder', 'Enviar SMS a todos os', 'SMS küldése Minden', 'Envoyer Sms Pour Tous', 'Αποστολή SMS προς όλους', 'Senden Sms To All', 'Invia SMS a tutti', 'ส่ง SMS ไปทั้งหมด', 'سب پر SMS بھیجیں', 'सभी के लिए एसएमएस भेजें', 'Omnes ad mittere SMS', 'Kirim Sms Untuk Semua', 'すべてにSMSを送信', '모든 SMS를 보내기', NULL),
(207, 'yes', 'Yes', 'হাঁ', 'Sí', 'نعم فعلا', 'Ja', 'да', '是', 'Evet', 'sim', 'Igen', 'Oui', 'Ναί', 'ja', 'sì', 'ใช่', 'جی ہاں', 'हाँ', 'Etiam', 'iya nih', 'はい', '예', NULL),
(208, 'no', 'No', 'না', 'No', 'لا', 'Nee', 'Нет', '没有', 'hayır', 'Não', 'Nem', 'Non', 'Όχι', 'Nein', 'No', 'ไม่', 'نہیں', 'नहीं', 'No', 'Tidak', 'いいえ', '아니', NULL),
(209, 'sms_service_not_activated', 'Sms Service Not Activated', 'এসএমএস পরিষেবা সক্রিয় করা', 'El servicio de SMS no activado', 'خدمة الرسائل القصيرة لم ينشط', 'SMS-dienst Niet Geactiveerd', 'Sms Сервис не активирован', '短信服务未激活', 'Sms Servisi Aktif Değil', 'Serviço de SMS Não Activado', 'SMS szolgáltatás nincs aktiválva', 'Service Sms non activé', 'Υπηρεσία SMS δεν Ενεργός', 'Sms Service nicht aktiviert', 'Servizio SMS non attivato', 'บริการ SMS ไม่เปิดใช้งาน', 'ایس ایم ایس سروس چالو نہیں', 'एसएमएस सेवा सक्रिय नहीं', 'Activated sms service', 'Sms Layanan Tidak Aktif', 'SMSサービスが活性化されません', 'SMS 서비스가 활성화되지 않음', NULL),
(210, 'private_messaging', 'Private Messaging', 'ব্যক্তিগত মেসেজিং', 'Mensajería privada', 'رسائل خاصة', 'private Messaging', 'Личные сообщения', '悄悄话', 'özel Mesajlaşma', 'Mensagens privadas', 'privát üzenet', 'Messagerie privée', 'Προσωπικά Μηνύματα', 'Private Nachrichten', 'messaggi privati', 'ข้อความส่วนตัว', 'ذاتی پیغام رسانی', 'निजी संदेश', 'Secretum Nuntius', 'swasta Messaging', 'プライベートメッセージ', '개인 메시징', NULL),
(211, 'messages', 'Messages', 'বার্তা', 'mensajes', 'رسائل', 'berichten', 'Сообщения', '消息', 'Mesajlar', 'mensagens', 'Üzenetek', 'messages', 'μηνύματα', 'Nachrichten', 'messaggi', 'ข้อความ', 'پیغامات', 'संदेश', 'nuntius', 'pesan', 'メッセージ', '메시지', NULL),
(212, 'new_message', 'New Message', 'নতুন বার্তা', 'Nuevo mensaje', 'رسالة جديدة', 'Nieuw bericht', 'Новое сообщение', '新消息', 'Yeni Mesaj', 'Nova mensagem', 'Új üzenet', 'Nouveau message', 'Νέο μήνυμα', 'Neue Nachricht', 'Nuovo messaggio', 'ข้อความใหม่', 'نیا پیغام', 'नया संदेश', 'Latin Vulgate New', 'Pesan baru', '新しいメッセージ', '새로운 메시지', NULL),
(213, 'write_new_message', 'Write New Message', 'নতুন বার্তা লিখতে', 'Escribir un nuevo mensaje', 'إرسال رسالة جديدة', 'Schrijf New Message', 'Написать новое сообщение', '我要留言', 'Yeni Mesaj Yaz', 'Escrever Nova Mensagem', 'Üzenet írása', 'Ecrire un nouveau message', 'Γράψτε Νέο Μήνυμα', 'Neue Nachricht schreiben', 'Scrivi nuovo messaggio', 'เขียนข้อความใหม่', 'نیا پیغام لکھیں', 'नया संदेश लिखें', 'Write New Nuntius', 'Tulis baru Pesan', '新しいメッセージを書きます', '새 메시지 쓰기', NULL),
(214, 'recipient', 'Recipient', 'প্রাপক', 'Recipiente', 'مستلم', 'Ontvanger', 'Получатель', '接受者', 'alıcı', 'beneficiário', 'Befogadó', 'Bénéficiaire', 'Παραλήπτης', 'Empfänger', 'Destinatario', 'ผู้รับ', 'وصول کنندہ', 'प्राप्तकर्ता', 'recipient', 'Penerima', '受信者', '받는 사람', NULL),
(215, 'select_a_user', 'Select A User', 'নির্বাচন একটি ব্যবহারকারী', 'Seleccione un usuario', 'تحديد مستخدم', 'Kies een gebruiker', 'Выберите пользователя', '选择一个用户', 'Bir kullanıcı seçin', 'Selecione um usuário', 'Válasszon egy felhasználói', 'Sélectionnez un utilisateur', 'Επιλέξτε ένα χρήστη', 'Wählen Sie einen Benutzer', 'Selezionare un utente', 'เลือกผู้ใช้', 'A یوزر کریں', 'चयन एक उपयोगकर्ता', 'Select a user', 'Pilih User', 'ユーザーを選択します', '사용자를 선택', NULL),
(216, 'write_your_message', 'Write Your Message', 'আপনার বার্তা লিখুন', 'Escribe tu mensaje', 'إرسال رسالتك', 'Schrijf uw bericht', 'Написать Ваше сообщение', '填写您的留言', 'Sizin Mesaj Yaz', 'Escreva sua mensagem', 'Írja meg az üzenetet', 'Rédigez votre message', 'Γράψτε το μήνυμά σας', 'Schreiben Sie Ihre Nachricht', 'Scrivi il tuo messaggio', 'เขียนข้อความของคุณ', 'اپنا پیغام لکھیں', 'अपना संदेश लिखें', 'Write Nuntius tuus', 'Tulis Pesan Anda', 'メッセージを書きます', '당신의 메시지를 작성', NULL),
(217, 'send', 'Send', 'পাঠান', 'Enviar', 'إرسال', 'sturen', 'послать', '发送', 'göndermek', 'Enviar', 'Elküld', 'Envoyer', 'Στέλνω', 'Senden', 'Inviare', 'ส่ง', 'حساب', 'भेजना', 'Send', 'Kirim', '送信', '보내다', NULL),
(218, 'system_settings', 'System Settings', 'পদ্ধতি নির্ধারণ', 'Ajustes del sistema', 'اعدادات النظام', 'Systeem instellingen', 'Настройки системы', '系统设置', 'Sistem ayarları', 'Configurações de sistema', 'Rendszerbeállítások', 'Les paramètres du système', 'Ρυθμίσεις συστήματος', 'Systemeinstellungen', 'Impostazioni di sistema', 'การตั้งค่าระบบ', 'نظام کی ترتیبات', 'प्रणाली व्यवस्था', 'ratio Occasus', 'Pengaturan sistem', 'システム設定', '시스템 설정', NULL),
(219, 'system_name', 'System Name', 'সিস্টেম নাম', 'Nombre del sistema', 'اسم النظام', 'System Name', 'Name System', '系统名称', 'sistem Adı', 'Name System', 'A rendszer neve', 'Name System', 'Name System', 'Systemname', 'Nome del sistema', 'ระบบชื่อ', 'سسٹم کا نام', 'सिस्टम का नाम', 'Name System', 'Nama sistem', 'システム名', '시스템 이름', NULL),
(220, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'sistema de Título', 'عنوان النظام', 'System Titel', 'система Название', '系统标题', 'sistem Başlığı', 'Título sistema', 'rendszer Cím', 'système Titre', 'σύστημα Τίτλος', 'System-Titel', 'sistema Titolo', 'ชื่อเรื่องระบบ', 'سسٹم کی سرخی', 'सिस्टम शीर्षक', 'Title: ratio', 'sistem Judul', 'システムタイトル', '시스템 제목', NULL),
(221, 'paypal_email', 'Paypal Email', 'পেপ্যাল ​​ইমেইল', 'paypal Email', 'باي بال البريد الإلكتروني', 'Paypal E-mail', 'Paypal Электронная почта', '贝宝电子邮件', 'Paypal E-posta', 'Paypal e-mail', 'Paypal E-mail', 'Paypal Email', 'Paypal Email', 'Paypal E-Mail', 'Paypal Email', 'Paypal อีเมล์', 'پے پال ای میل', 'पेपैल ईमेल', 'Email Paypal', 'Paypal Email', 'ペイパルのメール', '페이팔 이메일', NULL),
(222, 'currency', 'Currency', 'মুদ্রা', 'Moneda', 'عملة', 'Valuta', 'валюта', '货币', 'para', 'Moeda', 'Valuta', 'Devise', 'Νόμισμα', 'Währung', 'Moneta', 'เงินตรา', 'کرنسی', 'मुद्रा', 'Currency', 'Mata uang', '通貨', '통화', NULL),
(223, 'system_email', 'System Email', 'সিস্টেম ইমেইল', 'sistema de correo electrónico', 'نظام البريد الإلكتروني', 'System E-mail', 'система E-mail', '电子邮件系统', 'sistem E-posta', 'sistema de E-mail', 'A rendszer e-mailben', 'système Email', 'σύστημα Email', 'System-E-Mail', 'sistema di posta elettronica', 'ระบบอีเมล', 'سسٹم کی ای میل', 'प्रणाली ईमेल', 'Email System', 'sistem Email', 'システムメール', 'System 전자 메일', NULL),
(224, 'select_running_session', 'Select Running Session', 'সেশন চালনা নির্বাচন', 'Seleccione Ejecución de Sesión', 'اختر تشغيل الدورة', 'Selecteer Running Session', 'Выберите текущую сессию', '选择运行的会话', 'Oturumu Koşu seç', 'Selecione Executar Session', 'Válassza Futó Session', 'Sélectionnez Exécution Session', 'Επιλέξτε Τρέξιμο Συνεδρία', 'Session Wählen Sie Ausführen', 'Selezionare corsa della sessione', 'เลือกเล่นเซสชัน', 'سیشن چلانے کریں', 'सत्र चल रहा है का चयन करें', 'Select Sessio Cursor', 'Pilih Menjalankan Sesi', '実行中のセッションを選択します', '세션을 실행 선택', NULL),
(225, 'language', 'Language', 'ভাষা', 'Idioma', 'لغة', 'Taal', 'язык', '语言', 'Dil', 'Língua', 'Nyelv', 'La langue', 'Γλώσσα', 'Sprache', 'Lingua', 'ภาษา', 'زبان', 'भाषा', 'Language', 'Bahasa', '言語', '언어', NULL),
(226, 'text_align', 'Text Align', 'টেক্সট সারিবদ্ধ', 'Alinear texto', 'محاذاة النص', 'tekst uitlijnen', 'Text Align', '文本对齐', 'metin Hizala', 'Alinhar texto', 'szöveg igazítása', 'Text Align', 'Στοίχιση κειμένου', 'Text ausrichten', 'Testo Allinea', 'ข้อความตําแหน่ง', 'متن سیدھ کریں', 'पाठ संरेखित', 'Align Text', 'teks Align', 'テキストの整列', '텍스트 정렬', NULL),
(227, 'save', 'Save', 'সংরক্ষণ করুন', 'Salvar', 'حفظ', 'Save', 'Сохранить', '保存', 'Kaydet', 'Salvar', 'Mentés', 'sauvegarder', 'Αποθηκεύσετε', 'sparen', 'Salvare', 'บันทึก', 'محفوظ کریں', 'बचाना', 'nisi', 'Menyimpan', 'セーブ', '구하다', NULL),
(228, 'update_product', 'Update Product', 'হালনাগাদ পণ্য', 'actualización del producto', 'تحديث المنتج', 'bijwerken Product', 'Обновление продукта', '更新产品', 'güncelleme Ürün', 'atualização do produto', 'frissítés termék', 'Mise à jour du produit', 'Ενημέρωση Προϊόν', 'Update-Produkt', 'Aggiornamento del prodotto', 'การปรับปรุงผลิตภัณฑ์', 'اپ ڈیٹ کی مصنوعات', 'अद्यतन उत्पाद', 'Product Update', 'Update Produk', '更新製品', '업데이트 제품', NULL),
(229, 'file', 'File', 'ফাইল', 'Archivo', 'ملف', 'file', 'файл', '文件', 'Dosya', 'Arquivo', 'akta', 'Fichier', 'Αρχείο', 'Datei', 'File', 'ไฟล์', 'فائل', 'फ़ाइल', 'file:', 'Mengajukan', 'ファイル', '파일', NULL),
(230, 'install_update', 'Install Update', 'আপডেট ইনস্টল করুন', 'Instalar actualización', 'تثبيت التحديث', 'Installeer update', 'Установить обновление', '安装更新', 'Güncellemeyi yükle', 'Instalar atualização', 'frissítés telepítése', 'Installer la mise à jour', 'εγκαταστήστε την Ενημέρωση', 'Installiere Update', 'Installa aggiornamento', 'ติดตั้งโปรแกรมปรับปรุง', 'اپ ڈیٹ کو انسٹال', 'अद्यतन स्थापित करें', 'Install Update', 'Memasang pembaharuan', 'アップデートをインストール', '업데이트 설치', NULL),
(231, 'theme_settings', 'Theme Settings', 'থিম সেটিংস', 'Ajustes de tema', 'إعدادات موضوع', 'Thema instellingen', 'Настройки темы', '主题设置', 'Tema ayarları', 'Configurações de tema', 'Theme Settings', 'Réglage des thèmes', 'Ρυθμίσεις θέματος', 'Themen Einstellungen', 'Impostazioni tema', 'การตั้งค่าธีม', 'تھیم ترتیبات', 'विषय सेटिंग', 'Theme Occasus', 'Pengaturan tema', 'テーマ設定', '테마 설정', NULL),
(232, 'default', 'Default', 'ডিফল্ট', 'Defecto', 'افتراضي', 'Standaard', 'По умолчанию', '默认', 'Varsayılan', 'Padrão', 'Alapértelmezett', 'Défaut', 'Αθέτηση', 'Standard', 'Predefinito', 'ค่าเริ่มต้น', 'پہلے سے طے شدہ', 'चूक', 'Default', 'kegagalan', 'デフォルト', '태만', NULL),
(233, 'select_theme', 'Select Theme', 'থিম নির্বাচন কর', 'Seleccionar tema', 'اختر الموضوع', 'Selecteer thema', 'Выберите тему', '选择主题', 'seç Tema', 'Escolha um tema', 'Select Theme', 'Sélectionne un thème', 'Επιλέξτε Θέμα', 'Thema wählen', 'Seleziona il tema', 'เลือกธีม', 'تھیم منتخب کریں', 'विषय का चयन करें', 'Select Theme', 'Pilih tema', 'テーマを選択', '선택 테마', NULL),
(234, 'select_a_theme_to_make_changes', 'Select A Theme To Make Changes', 'পরিবর্তনগুলি করতে একটি থিম নির্বাচন করুন', 'Seleccione un tema para hacer cambios', 'اختر موضوعا لإجراء تغييرات', 'Selecteer een thema om wijzigingen aan te brengen', 'Выберите тему, чтобы внести изменения', '选择一个主题进行更改', 'Değişiklikleri yapmak Bir Tema seçin', 'Selecione um tema para fazer mudanças', 'Válasszon ki egy témát, hogy a változások', 'Sélectionnez un thème pour effectuer des modifications', 'Επιλέξτε ένα θέμα για να κάνετε αλλαγές', 'Wählen Sie ein Thema, um Änderungen vornehmen', 'Selezionare un tema di apportare modifiche', 'เลือกธีมที่จะทำการเปลี่ยนแปลง', 'تبدیلیاں کرنے کے لئے ایک تھیم منتخب کریں', 'परिवर्तन करने के लिए एक विषय का चयन', 'Select a faciat mutationes Theme', 'Pilih A Tema Untuk Membuat Perubahan', '変更を行うためにテーマを選択', '변경하려면 테마를 선택', NULL),
(235, 'upload_logo', 'Upload Logo', 'লোগো আপলোড করুন', 'Subir Logo', 'تحميل الشعار', 'Upload Logo', 'Загрузить логотип', '上传徽标', 'yükleme Logo', 'Carregar Logo', 'Feltöltés Logo', 'Télécharger Logo', 'Ανεβάστε Logo', 'Logo hochladen', 'Carica Logo', 'อัปโหลดโลโก้', 'اپ لوڈ کی علامت', 'अपलोड लोगो', 'Logo Upload', 'Upload Logo', 'ロゴをアップロード', '업로드 로고', NULL),
(236, 'upload', 'Upload', 'আপলোড', 'Subir', 'تحميل', 'Uploaden', 'Загрузить', '上传', 'yükleme', 'Envio', 'Feltöltés', 'Télécharger', 'Μεταφόρτωση', 'Hochladen', 'Caricare', 'อัปโหลด', 'اپ لوڈ کریں', 'अपलोड', 'Upload', 'Upload', 'アップロード', '업로드', NULL),
(237, 'select_a_service', 'Select A Service', 'একটি পরিষেবা নির্বাচন', 'Seleccione un servicio', 'أختر الخدمة', 'Kies een service', 'Выберите службу', '选择服务', 'Bir Hizmet Seçin', 'Seleccione um serviço', 'Válasszon egy szolgáltatást', 'Sélectionnez un service', 'Επιλέξτε μια υπηρεσία', 'Wählen Sie einen Dienst', 'Selezionare un servizio', 'เลือกบริการ', 'ایک خدمت کریں', 'एक सेवा का चयन', 'Select a Service', 'Pilih Sebuah Layanan', 'サービスを選択', '서비스를 선택', NULL),
(238, 'not_selected', 'Not Selected', 'অনির্বাচিত', 'No seleccionado', 'لم يتم اختياره', 'Niet geselecteerd', 'Не выбран', '未选择', 'Seçilmedi', 'Não selecionado', 'nincs kiválasztva', 'Non séléctionné', 'Χωρίς επιλογή', 'Nicht ausgewählt', 'Non selezionato', 'ไม่ได้เลือก', 'منتخب نہیں', 'नहीं चुने गए', 'Non Selected', 'Tidak terpilih', '選択されていません', '선택되지 않음', NULL),
(239, 'disabled', 'Disabled', 'অক্ষম', 'Discapacitado', 'معاق', 'invalide', 'Отключено', '残', 'engelli', 'Desativado', 'Tiltva', 'désactivé', 'Ανάπηρος', 'Behindert', 'Disabilitato', 'พิการ', 'معذور', 'विकलांग', 'disabled', 'Cacat', '使用禁止', '장애인', NULL),
(240, 'clickatell_username', 'Clickatell Username', 'Clickatell ব্যবহারকারীর নাম', 'Nombre de usuario Clickatell', 'Clickatell اسم المستخدم', 'Clickatell Gebruikersnaam', 'Clickatell Имя пользователя', '的Clickate用户名', 'Clickatell Adı', 'Clickatell usuário', 'Clickatell Felhasználónév', 'Clickatell Nom d\'utilisateur', 'Clickatell Όνομα Χρήστη', 'Clickatell Benutzername', 'Clickatell Nome utente', 'Clickatell ชื่อผู้ใช้', 'Clickatell رکنیت', 'Clickatell यूजर का नाम', 'Clickatell Username', 'Clickatell Nama', 'Clickatellユーザー名', '하는 Clickatell 아이디', NULL),
(241, 'clickatell_password', 'Clickatell Password', 'Clickatell পাসওয়ার্ড', 'clickatell contraseña', 'كلمة Clickatell', 'Clickatell Password', 'Clickatell Пароль', 'Clickatell的密码', 'Clickatell Şifre', 'Senha Clickatell', 'Clickatell jelszó', 'Clickatell Mot de passe', 'Clickatell Κωδικός', 'Clickatell Passwort', 'password Clickatell', 'รหัสผ่าน Clickatell', 'Clickatell پاس ورڈ', 'Clickatell पासवर्ड', 'Clickatell Password', 'Sandi Clickatell', 'Clickatellパスワード', '하는 Clickatell 비밀', NULL),
(242, 'clickatell_api_id', 'Clickatell Api Id', 'Clickatell API ID', 'Clickatell Api Id', 'Clickatell واجهة برمجة التطبيقات معرف', 'Clickatell Api Id', 'Clickatell Апи Id', 'Clickatell的API ID', 'Clickatell Api Kimliği', 'Clickatell Api Id', 'Clickatell Api Id', 'Clickatell Api Id', 'Clickatell Api Id', 'Clickatell Api Id', 'Clickatell Api Id', 'API รหัส Clickatell', 'Clickatell API ID', 'Clickatell एपीआई आईडी', 'Id Clickatell Api', 'Clickatell Api Id', 'Clickatellアピ同上', '하는 Clickatell API 광고 이드', NULL),
(243, 'twilio_account', 'Twilio Account', 'Twilio অ্যাকাউন্ট', 'cuenta Twilio', 'حساب Twilio', 'Twilio account', 'Счет Twilio', 'Twilio帐户', 'Twilio Hesabı', 'Conta Twilio', 'Twilio fiók', 'compte Twilio', 'Ο λογαριασμός Twilio', 'Twilio Konto', 'conto Twilio', 'บัญชี Twilio', 'Twilio اکاؤنٹ', 'Twilio अकाउंट', 'Twilio Account', 'Akun Twilio', 'Twilioアカウント', 'Twilio 계정', NULL),
(244, 'authentication_token', 'Authentication Token', 'অথেন্টিকেশন টোকেন', 'Token de autenticación', 'المصادقة رمز', 'Authentication Token', 'Аутентификация Токен', '身份验证令牌', 'Kimlik Doğrulama Jetonu', 'Autenticação de token', 'hitelesítésijelsor', 'authentification Token', 'Authentication Token', 'Authentication Token', 'autenticazione token', 'รับรองความถูกต้อง Token', 'توثیق ٹوکن', 'प्रमाणीकरण टोकन', 'authenticitate Thochen', 'otentikasi Token', '認証トークン', '인증 토큰', NULL),
(245, 'registered_phone_number', 'Registered Phone Number', 'নিবন্ধিত ফোন নম্বর', 'Número de teléfono registrado', 'سجلت رقم الهاتف', 'Geregistreerde telefoonnummer', 'Зарегистрированный номер телефона', '注册电话号码', 'Kayıtlı Telefon Numarası', 'Número de telefone registado', 'Bejegyzett telefonszám', 'Numéro de téléphone enregistré', 'Καταχωρημένο αριθμό τηλεφώνου', 'Registrierte Telefonnummer', 'Registrato Numero di telefono', 'หมายเลขโทรศัพท์ที่ลงทะเบียน', 'رجسٹرڈ فون نمبر', 'पंजीकृत फोन नंबर', 'Registered Phone', 'Nomor Telepon terdaftar', '登録された電話番号', '등록 된 전화 번호', NULL),
(246, 'manage_language', 'Manage Language', 'ভাষা পরিচালনা', 'Manejo de Lenguaje', 'إدارة اللغة', 'Beheer Taal', 'Управление Язык', '管理语言', 'Dil Yönet', 'Gerenciar Idioma', 'kezelése Nyelv', 'Gérer Langue', 'διαχειριστείτε Γλώσσα', 'verwalten von Sprach', 'gestire Lingua', 'จัดการภาษา', 'زبان انتظام کریں', 'भाषा प्रबंधित', 'Language Manage', 'mengelola Bahasa', '言語を管理します', '언어 관리', NULL),
(247, 'language_list', 'Language List', 'নতুন ভাষাটি তালিকায় আগে', 'Lista de idiomas', 'قائمة لغة', 'taal List', 'Список языков', '语言列表', 'Dil listesi', 'Lista idioma', 'Nyelvlista', 'Liste des langues', 'Λίστα γλώσσα', 'Sprachenliste', 'Elenco lingue', 'รายการภาษา', 'زبان کی فہرست', 'भाषा सूची', 'Language List', 'Daftar bahasa', '言語の一覧', '언어 목록', NULL),
(248, 'add_phrase', 'Add Phrase', 'শব্দবন্ধ যোগ', 'Añadir Frase', 'إضافة عبارة', 'uitdrukking toe te voegen', 'Добавить фразу', '添加词组', 'Cümle ekle', 'Adicionar Frase', 'kifejezés hozzáadása', 'Ajouter Phrase', 'Προσθέστε Φράση', 'In Phrase', 'Aggiungere Frase', 'เพิ่มวลี', 'جملہ شامل کریں', 'वाक्यांश जोड़े', 'Add Phrase', 'Tambahkan Frasa', 'フレーズを追加します。', '문구 추가', NULL),
(249, 'add_language', 'Add Language', 'ভাষা যোগ', 'Agregar idioma', 'إضافة اللغة', 'Voeg Taal', 'Добавить язык', '添加语言', 'Dil ekle', 'Adicionar idioma', 'Add Language', 'Ajouter une langue', 'Προσθέστε Γλώσσα', 'Sprache hinzufügen', 'Aggiungere Lingua', 'เพิ่มภาษา', 'زبان کا اضافہ', 'भाषा जोड़े', 'Add Language', 'Tambahkan Bahasa', '言語を追加します。', '언어 추가', NULL),
(250, 'option', 'Option', 'পছন্দ', 'Opción', 'خيار', 'Keuze', 'вариант', '选项', 'seçenek', 'Opção', 'választási lehetőség', 'Option', 'Επιλογή', 'Option', 'Opzione', 'ตัวเลือก', 'آپشن', 'देखिये', 'option', 'Pilihan', 'オプション', '선택권', NULL),
(251, 'edit_phrase', 'Edit Phrase', 'শব্দবন্ধ সম্পাদনা', 'Editar Frase', 'تحرير العبارة', 'Phrase bewerken', 'Редактировать Фраза', '编辑短语', 'Düzenleme Öbek', 'Editar Frase', 'szerkesztés kifejezés', 'Modifier Phrase', 'Επεξεργασία φράσης', 'Bearbeiten Phrase', 'Modifica Frase', 'แก้ไขวลี', 'جملہ ترمیم کریں', 'वाक्यांश संपादित करें', 'Edit Phrase', 'mengedit Frase', '編集フレーズ', '편집 구문', NULL),
(252, 'delete_language', 'Delete Language', 'ভাষা মুছুন', 'eliminar idioma', 'حذف اللغة', 'Taal verwijderen', 'Удалить язык', '删除语言', 'Dil Sil', 'excluir Idioma', 'Törlés Nyelv', 'Supprimer Langue', 'Διαγραφή Γλώσσας', 'Sprache löschen', 'cancellare Lingua', 'ลบภาษา', 'زبان چھپانا', 'भाषा को हटा', 'Language', 'Hapus Bahasa', '言語を削除します', '언어 삭제', NULL),
(253, 'phrase', 'Phrase', 'শব্দবন্ধ', 'Frase', 'العبارة', 'Uitdrukking', 'Фраза', '短语', 'İfade', 'Frase', 'Kifejezés', 'Phrase', 'Φράση', 'Phrase', 'Frase', 'วลี', 'جملہ', 'मुहावरा', 'Phrase', 'Frasa', 'フレーズ', '구', NULL),
(254, 'manage_profile', 'Manage Profile', 'অমিমাংসীত সংস্করণ লগ', 'administrar perfil', 'إدارة الملف الشخصي', 'Profiel beheren', 'Управление профилем', '管理配置文件', 'Profilinizi yönetin', 'Gerenciar perfil', 'Profil kezelése', 'Gérer le profil', 'Διαχείριση του προφίλ', 'Profil verwalten', 'Gestisci profilo', 'จัดการโปรไฟล์', 'پروفائل کا انتظام', 'प्रोफ़ाइल प्रबंधित', 'Manage Profile', 'mengelola Profil', 'プロファイル（個人情報）の管理', '프로필 (내 정보) 관리', NULL),
(255, 'update_profile', 'Update Profile', 'প্রফাইল হালনাগাদ', 'Actualización del perfil', 'تحديث الملف', 'Profiel bijwerken', 'Обновить профиль', '更新个人信息', 'Profili güncelle', 'Atualizar perfil', 'Profil frissítése', 'Mettre à jour le profil', 'Ανανέωση προφίλ', 'Profil aktualisieren', 'Aggiorna il profilo', 'ปรับปรุงรายละเอียดของ', 'اپ ڈیٹ پروفائل', 'प्रोफ़ाइल अपडेट करें', 'Update Profile', 'Memperbaharui profil', 'プロフィールを更新', '프로필 업데이트', NULL),
(256, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'contraseña actual', 'كلمة السر الحالية', 'huidig ​​wachtwoord', 'текущий пароль', '当前密码', 'Şimdiki Şifre', 'senha atual', 'jelenlegi jelszó', 'Mot de passe actuel', 'τρέχων κωδικός πρόσβασης', 'Aktuelles Passwort', 'Password attuale', 'รหัสผ่านปัจจุบัน', 'موجودہ خفیہ لفظ', 'वर्तमान पासवर्ड', 'Codex Secretus Currens', 'kata sandi saat ini', '現在のパスワード', '현재 비밀번호', NULL),
(257, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'nueva contraseña', 'كلمة السر الجديدة', 'nieuw paswoord', 'новый пароль', '新密码', 'Yeni Şifre', 'Nova senha', 'új jelszó', 'nouveau mot de passe', 'Νέος Κωδικός', 'Neues Kennwort', 'nuova password', 'รหัสผ่านใหม่', 'نیا پاس ورڈ', 'नया पासवर्ड', 'New Password', 'kata sandi baru', '新しいパスワード', '새 비밀번호', NULL),
(258, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'Confirmar nueva contraseña', 'تأكيد كلمة المرور الجديدة', 'Bevestig nieuw wachtwoord', 'Подтвердите новый пароль', '确认新密码', 'Yeni şifreyi onayla', 'Confirme a nova senha', 'Erősítse meg az új jelszót', 'Confirmer le nouveau mot de passe', 'Επιβεβαιώστε τον καινούριο σας κωδικό', 'Bestätige neues Passwort', 'Conferma la nuova password', 'ยืนยันรหัสผ่านใหม่', 'نئے پاس ورڈ کی توثیق کریں', 'नए पासवर्ड की पुष्टि करें', 'Confirmare New password', 'Konfirmasi password baru', '新しいパスワードを確認', '새 암호를 확인합니다', NULL),
(259, 'login', 'Login', 'লগইন', 'Iniciar sesión', 'تسجيل الدخول', 'Log in', 'Авторизоваться', '登录', 'Oturum aç', 'Entrar', 'Bejelentkezés', 'S\'identifier', 'Σύνδεση', 'Anmeldung', 'Accesso', 'เข้าสู่ระบบ', 'لاگ ان', 'लॉगिन', 'Login', 'Masuk', 'ログイン', '로그인', NULL),
(260, 'forgot_your_password', 'Forgot Your Password', 'আপনি কি পাসওয়ার্ড ভুলে গেছেন', 'Olvidaste tu contraseña', 'نسيت رقمك السري', 'Je wachtwoord vergeten', 'Забыли пароль', '忘记密码了吗', 'Şifrenizi mi unuttunuz', 'Esqueceu sua senha', 'Elfelejtetted a jelszavad', 'Mot de passe oublié', 'Ξέχασες τον κωδικό σου', 'Haben Sie Ihr Passwort vergessen', 'Hai dimenticato la password', 'ลืมรหัสผ่านหรือไม่', 'پاس ورڈ بھول گیا', 'क्या आप अपना पासवर्ड भूल गए', 'Forgot Your Password', 'Lupa kata sandi Anda', 'パスワードをお忘れですか', '비밀번호를 잊어 버렸습니까', NULL),
(261, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'Restablecer la contraseña', 'اعادة تعيين كلمة السر', 'Reset Password', 'Сброс пароля', '重设密码', 'Şifreyi yenile', 'Trocar a senha', 'Jelszó visszaállítása', 'réinitialiser le mot de passe', 'Επαναφέρετε τον κωδικό πρόσβασης', 'Passwort zurücksetzen', 'Resetta la password', 'รีเซ็ตรหัสผ่าน', 'پاس ورڈ ری سیٹ', 'पासवर्ड रीसेट', 'Reset password', 'Reset password', 'パスワードを再設定する', '암호를 재설정', NULL),
(262, 'return_to_login_page', 'Return To Login Page', 'ফিরুন লগইন পৃষ্ঠায়', 'Volver a inicio página', 'العودة إلى صفحة تسجيل الدخول', 'Terug naar Inlogpagina', 'Вернуться на страницу входа', '返回到登录页面', 'Sayfa Giriş Return To', 'Retornar à página de login', 'Vissza a bejelentkezéshez Oldal', 'Retour à la page de connexion', 'Επιστροφή για να συνδεθείτε Σελίδα', 'Zurück zur Login-Seite', 'Torna alla pagina di login', 'กลับไปที่หน้าเข้าสู่ระบบ', 'پیج لاگ ان واپس جائیں', 'लौटें लॉगिन करने के लिए पृष्ठ', 'Return To Login', 'Kembali ke halaman login', 'ログインページに戻ります', '로그인 페이지로 돌아 가기', NULL),
(263, 'service_is_disabled', 'Service Is Disabled', 'পরিষেবা অক্ষম করা হয়েছে', 'Servicio está deshabilitado', 'خدمة ذوي الاحتياجات الخاصة', 'Is een handicap', 'Служба отключена', '服务被禁用', 'Hizmet Devre Dışı mı', 'Serviço for desativado', 'Szolgáltatás le van tiltva', 'Service est désactivé', 'Η υπηρεσία είναι άτομα με ειδικές ανάγκες', 'Service deaktiviert', 'Servizio è disattivato', 'บริการสำหรับผู้พิการ', 'سروس غیر فعال ہے', 'सेवा अक्षम है', 'Servitium Disabled', 'Layanan Apakah Dinonaktifkan', 'サービスが無効になっています', '서비스를 사용할 수 없습니다', NULL),
(264, 'promote_to_selected_class', 'Promote To Selected Class', 'সিলেক্টেড শ্রেণিতে উন্নীত করা', 'Para promover la clase seleccionada', 'تعزيز لفئة مختارة', 'Bevorder aan geselecteerde Class', 'Содействие Для выбранного класса', '促进选课', 'Seçilen Sınıf için teşvik', 'Promover para a classe selecionada', 'Támogassák a kiválasztott osztály', 'Promouvoir Pour la classe sélectionnée', 'Προώθηση σε επιλεγμένα Class', 'Fördern, um ausgewählte Klasse', 'Promuovere Per classe selezionata', 'ส่งเสริมการเรียนที่เลือก', 'منتخب شدہ کلاس میں پروموٹ', 'चुने गए वर्ग को बढ़ावा देना', 'Class promovere Selected', 'Promosikan Untuk Dipilih Kelas', '選択したクラスに昇格', '선택한 클래스에 홍보', NULL),
(265, 'stay_in_present_class', 'Stay In Present Class', 'থাকুন বর্তমান ক্লাসে', 'Stay In Actual clase', 'البقاء في الدرجة الحالية', 'Stay In Huidige Klasse', 'Пребывание в современном классе', '留在当前阶级', 'Mevcut Class kalmak', 'Stay In Classe atual', 'Legyen a jelenlegi osztály', 'Stay In Class Present', 'Μείνετε σε Παρόν Class', 'Bleiben Sie in der heutigen Klasse', 'Stare in classe Presente', 'อยู่ในปัจจุบันชั้น', 'موجودہ کلاس میں رہو', 'रहो वर्तमान कक्षा में', 'Class manete in praesenti', 'Tetap Dalam Hadir Kelas', '現在のクラスでは滞在', '현재 클래스에서 그대로', NULL),
(266, 'data_updated', 'Data Updated', 'ডেটা আপডেট', 'datos actualizados', 'تم تحديث البيانات', 'gegevens bijgewerkt', 'Данные Обновлено', '数据更新', 'veriler Güncelleme', 'dados atualizados', 'Az adatok frissítve', 'Mise à jour des données', 'Ενημέρωση δεδομένων', 'Daten aktualisiert', 'I dati aggiornati', 'ปรับปรุงข้อมูล', 'ڈیٹا کو اپ ڈیٹ.', 'डेटा अपडेट', 'Data Updated', 'Data Diperbarui', 'データが更新されました', '데이터 업데이트', NULL),
(267, 'data_added_successfully', 'Data Added Successfully', 'তথ্য যোগ করা হয়েছে সফলভাবে', 'Datos añadido correctamente', 'واضاف البيانات بنجاح', 'Data succesvol toegevoegd', 'Данные Успешно добавлен', '新增的数据成功', 'Veri Eklendi Başarıyla', 'Dados adicionado com sucesso', 'Az adatok sikeresen hozzáadva', 'Données Ajouté avec succès', 'Δεδομένα προστέθηκε με επιτυχία', 'Daten erfolgreich hinzugefügt', 'Dati aggiunti con successo', 'ข้อมูลเพิ่มเรียบร้อยแล้ว', 'اعدادوشمار کا اضافہ کامیابی', 'डेटा जोड़ा सफलतापूर्वक', 'Data Feliciter Added', 'Data Ditambahkan Berhasil', 'データが正常に追加します', '데이터 추가 성공적으로', NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`, `vietnamese`) VALUES
(268, 'edit_grade', 'Edit Grade', 'গ্রেড সম্পাদনা', 'Editar Grado', 'تحرير العلمية', 'Cijfer bewerken', 'Редактировать Оценка', '编辑成绩', 'Düzenleme Sınıf', 'Editar Grade', 'szerkesztés Grade', 'Modifier année', 'Επεξεργασία Βαθμός', 'Bearbeiten Grad', 'Modifica grado', 'แก้ไขเกรด', 'گریڈ میں ترمیم کریں', 'ग्रेड संपादित करें', 'Edit Grade', 'mengedit kelas', '編集グレード', '편집 학년', NULL),
(269, 'manage_attendance_of_class', 'Manage Attendance Of Class', 'ক্লাস উপস্থিতি পরিচালনা', 'Gestionar asistencia de Clase', 'إدارة الحضور من فئة', 'Beheer Aanwezigheid van klasse', 'Управление посещаемости класса', '考勤管理类中', 'Class Of Katılım yönetin', 'Gerenciar presença de Classe', 'Kezelése Részvétel osztály', 'Gérer Participation de classe', 'Διαχειριστείτε προσέλευση Class', 'Verwalten Sie die Teilnahme an Klassen', 'Gestire partecipazione di Classe', 'จัดการการเข้าร่วมประชุมของการเรียน', 'کلاس کی حاضری انتظام کریں', 'कक्षा की उपस्थिति का प्रबंधन करें', 'Class ministrorum Manage', 'Mengelola Kehadiran Kelas', 'クラスの出席を管理します', '클래스의 출석 관리', NULL),
(270, 'present', 'Present', 'বর্তমান', 'Presente', 'حاضر', 'aanwezig', 'настоящее время', '当下', 'mevcut', 'Presente', 'Ajándék', 'Présent', 'Παρόν', 'Geschenk', 'Presente', 'นำเสนอ', 'پیش', 'वर्तमान', 'Present', 'Menyajikan', '現在', '선물', NULL),
(271, 'absent', 'Absent', 'অনুপস্থিত', 'Ausente', 'غائب', 'Afwezig', 'Нет на месте', '缺席', 'Yok', 'Ausente', 'Hiányzó', 'Absent', 'Απών', 'Abwesend', 'Assente', 'ไม่อยู่', 'غائب', 'अनुपस्थित', 'absent', 'Tidak hadir', 'ありません', '없는', NULL),
(272, 'update_attendance', 'Update Attendance', 'আপডেট এ্যাটেনডেন্স', 'actualización de Asistencia', 'تحديث الحضور', 'Attendance bijwerken', 'Обновление посещаемости', '更新考勤', 'güncelleme Seyirci', 'Presença atualização', 'frissítés Nézőszám', 'Mise à jour de présence', 'Ενημέρωση Συμμετοχή', 'Update-Teilnahme', 'Aggiornamento presenze', 'ปรับปรุงการเข้าร่วมประชุม', 'اپ ڈیٹ حاضری', 'अद्यतन उपस्थिति', 'Update frequentatio', 'Update Kehadiran', '出席を更新', '업데이트 출석', NULL),
(273, 'undefined', 'Undefined', 'অনির্দিষ্ট', 'Indefinido', 'غير محدد', 'onbepaald', 'Неопределенный', '未定义', 'tanımlanmamış', 'Indefinido', 'Határozatlan', 'Indéfini', 'Απροσδιόριστος', 'Undefiniert', 'Non definito', 'ไม่ได้กำหนด', 'جانچ', 'अपरिभाषित', 'Undefined', 'Tidak terdefinisi', '未定義', '정의되지 않은', NULL),
(274, 'back', 'Back', 'পিছনে', 'Espalda', 'الى الخلف', 'Terug', 'назад', '背部', 'Geri', 'Costas', 'Hát', 'Arrière', 'Πίσω', 'Zurück', 'Indietro', 'กลับ', 'واپس', 'वापस', 'Back', 'Kembali', 'バック', '뒤로', NULL),
(275, 'save_changes', 'Save Changes', 'পরিবর্তনগুলোর সংরক্ষন', 'Guardar cambios', 'حفظ التغيرات', 'Wijzigingen opslaan', 'Сохранить изменения', '保存更改', 'Değişiklikleri Kaydet', 'Salvar alterações', 'Változtatások mentése', 'Sauvegarder les modifications', 'Αποθήκευσε τις αλλαγές', 'Änderungen speichern', 'Salva I Cambiamenti', 'บันทึกการเปลี่ยนแปลง', 'تبدیلیاں محفوظ کرو', 'परिवर्तनों को सुरक्षित करें', 'Nuper mutata in Save', 'Simpan perubahan', '変更内容を保存', '변경 사항을 저장하다', NULL),
(276, 'data_deleted', 'Data Deleted', 'ডেটা মুছে', 'datos eliminados', 'محذوفة البيانات', 'gegevens worden gewist', 'Исключен данных', '数据删除', 'veri silinmiş', 'dados apagados', 'Az adatok törölve', 'données supprimées', 'διαγραμμένα δεδομένα', 'gelöschter Daten', 'dati cancellati', 'ข้อมูลที่ถูกลบ', 'ڈیٹا حذف', 'डेटा हटाया', 'Data Deleted', 'Data Dihapus', 'データ削除済み', '데이터 삭제', NULL),
(277, 'academic_syllabus', 'Academic Syllabus', 'একাডেমিক সিলেবাস', 'Plan de estudios académicos', 'منهج الأكاديمية', 'academische Syllabus', 'академический Силабус', '学术课程', 'akademik Müfredat', 'Programa acadêmico', 'akadémiai Tanmenet', 'Syllabus Academic', 'ακαδημαϊκό Πρόγραμμα Σπουδών', 'Akademische Syllabus', 'Programma accademico', 'หลักสูตรวิชาการ', 'تعلیمی نصاب', 'शैक्षणिक पाठ्यक्रम', 'Kessinger Syllabus', 'Silabus akademik', 'アカデミックシラバス', '대학 강의 계획서', NULL),
(278, 'add_academic_syllabus', 'Add Academic Syllabus', 'একাডেমিক সিলেবাস যোগ', 'Añadir programa académico', 'إضافة منهج الأكاديمية', 'Voeg Academic Syllabus', 'Добавить Academic Программа курса', '加入学术课程', 'Akademik Müfredat ekle', 'Adicionar Programa Acadêmico', 'Add Academic Tanmenet', 'Ajouter Syllabus Academic', 'Προσθέστε Ακαδημαϊκό Πρόγραμμα Σπουδών', 'In akademischen Lehrplan', 'Aggiungere Programma accademico', 'เพิ่มหลักสูตรวิชาการ', 'تعلیمی نصاب میں شامل', 'शिक्षा पाठ्यक्रम जोड़े', 'Add Academic Syllabus', 'Tambahkan Silabus Akademik', 'アカデミックシラバスを追加', '학술 강의 계획서를 추가', NULL),
(279, 'uploader', 'Uploader', 'আপলোডার', 'Uploader', 'رافع', 'Uploader', 'загрузчик', '上传', 'Yükleyici', 'Uploader', 'Feltöltő', 'Uploader', 'uploader', 'Uploader', 'Uploader', 'อัพโหลด', 'اپ لوڈر', 'अपलोडर', 'Uploader', 'pengunggah', 'アップローダー', '업 로더', NULL),
(280, 'upload_academic_syllabus', 'Upload Academic Syllabus', 'আপলোড একাডেমিক সিলেবাস', 'Cargar programa académico', 'تحميل الأكاديمية المنهج', 'Upload Academic Syllabus', 'Загрузить Академический Силабус', '上传学术课程', 'Yükleme Akademik Müfredat', 'Carregar Programa Acadêmico', 'Feltöltés Academic Tanmenet', 'Télécharger Academic Syllabus', 'Ανεβάστε Ακαδημαϊκό Πρόγραμμα Σπουδών', 'Hochladen von Academic Syllabus', 'Carica Programma accademico', 'อัปโหลดวิชาการหลักสูตร', 'اپ لوڈ کریں تعلیمی نصاب', 'अपलोड शिक्षा पाठ्यक्रम', 'Upload Academic Syllabus', 'Upload Silabus Akademik', 'アカデミックシラバスをアップロード', '업로드 학술 강의 계획서', NULL),
(281, 'upload_syllabus', 'Upload Syllabus', 'আপলোড সিলেবাস', 'Subir Syllabus', 'تحميل المنهج', 'Upload Syllabus', 'Загрузить Силабус', '上传教学大纲', 'yükleme Müfredat', 'Carregar Syllabus', 'Feltöltés Tanmenet', 'Télécharger Syllabus', 'Ανεβάστε Syllabus', 'hochladen Syllabus', 'Carica Syllabus', 'อัปโหลดหลักสูตร', 'اپ لوڈ کریں نصاب', 'अपलोड सिलेबस', 'Upload Syllabus', 'Upload Silabus', 'アップロードシラバス', '업로드 강의 계획서', NULL),
(282, 'syllabus_uploaded', 'Syllabus Uploaded', 'সিলেবাস আপলোড করা হয়েছে', 'Plan de estudios Subida', 'المنهج حملت', 'syllabus Uploaded', 'Силабус загруженное', '教学大纲上传', 'müfredat Yüklenen', 'Syllabus Uploaded', 'tanmenet Feltöltött', 'Syllabus Téléchargée', 'Syllabus Φορτωμένα', 'Syllabus Hochgeladen', 'programma Caricati', 'หลักสูตรที่อัปโหลด', 'نصاب اپ لوڈ کردہ', 'सिलेबस अपलोड', 'Syllabus Fasciculi', 'silabus diunggah', 'シラバスアップロード', '강의 계획서 업로드', NULL),
(283, 'download', 'Download', 'ডাউনলোড', 'Descargar', 'تحميل', 'Download', 'Скачать', '下载', 'indir', 'baixar', 'Letöltés', 'Télécharger', 'Λήψη', 'Herunterladen', 'Scaricare', 'ดาวน์โหลด', 'لوڈ', 'डाउनलोड', 'Download', 'Download', 'ダウンロード', '다운로드', NULL),
(284, 'remove', 'Remove', 'অপসারণ', 'retirar', 'إزالة', 'Verwijderen', 'Удалить', '去掉', 'Kaldır', 'Remover', 'eltávolít', 'Retirer', 'Αφαιρώ', 'Entfernen', 'Cancella', 'เอาออก', 'دور', 'हटाना', 'Remove', 'Menghapus', '削除します', '없애다', NULL),
(285, 'print', 'Print', 'ছাপানো', 'Impresión', 'طباعة', 'Afdrukken', 'Распечатать', '打印', 'baskı', 'Impressão', 'Nyomtatás', 'Impression', 'Αποτύπωμα', 'Drucken', 'Stampare', 'พิมพ์', 'پرنٹ', 'छाप', 'Print', 'Mencetak', '印刷', '인쇄', NULL),
(286, 'teacher_dashboard', 'Teacher Dashboard', 'গুরু ড্যাশবোর্ড', 'Tablero de instrumentos del profesor', 'المعلم لوحة', 'leraar Dashboard', 'Учитель Dashboard', '教师仪表板', 'Öğretmen Dashboard', 'professor do dashboard', 'tanár Portál', 'Tableau de bord des enseignants', 'ταμπλό δάσκαλος', 'Lehrer-Dashboard', 'Maestro Dashboard', 'ครูแดชบอร์ด', 'ٹیچر ڈیش بورڈ', 'शिक्षक डैशबोर्ड', 'magister Dashboard', 'guru Dashboard', '教師ダッシュボード', '교사 대시 보드', NULL),
(287, 'study_material', 'Study Material', 'গবেষণা উপাদান', 'Material de estudio', 'مادة الدراسة', 'studiemateriaal', 'учебного материала', '学习材料', 'Eğitim Malzemesi', 'Material de estudo', 'tananyag', 'Matériel d\'étude', 'μελέτη Υλικό', 'Studienmaterial', 'Materiale di studio', 'วัสดุการศึกษา', 'تربیتی مواد', 'अध्ययन सामग्री', 'Material Study', 'Bahan studi', '研究材料', '연구 자료', NULL),
(288, 'teacher_list', 'Teacher List', 'শিক্ষক তালিকা', 'Lista maestro', 'قائمة المعلم', 'Teacher List', 'Список учителей', '教师名单', 'Öğretmen listesi', 'Lista do professor', 'tanár listája', 'Liste des enseignants', 'Λίστα δάσκαλος', 'Lehrer-Liste', 'Lista Maestro', 'รายการครู', 'ٹیچر لسٹ', 'टीचर सूची', 'magister List', 'Daftar guru', '先生一覧', '교사 목록', NULL),
(289, 'manage_class_routine', 'Manage Class Routine', 'ক্লাস রুটিন পরিচালনা', 'Manejo de rutina de la clase', 'إدارة الدرجة الروتينية', 'Beheer Class Routine', 'Управление Routine Class', '管理类常规', 'Sınıf Rutin yönet', 'Gerenciar Classe Rotina', 'Kezelés Class Rutin', 'Gérer la classe Routine', 'Διαχειριστείτε Class ρουτίνας', 'Verwalten Klasse Routine', 'Gestire Classe Routine', 'การจัดการชั้นเรียนตามปกติ', 'کلاس ضابطہء انتظام کریں', 'कक्षा नियमित प्रबंधित', 'Class Manage DEFUNCTORIUS', 'Mengelola Kelas Rutin', 'クラスのルーチンを管理します', '클래스 일상적인 관리', NULL),
(290, 'class_routine_list', 'Class Routine List', 'ক্লাস রুটিন তালিকা', 'Lista de rutina de la clase', 'الطبقة قائمة الروتينية', 'Klasse Routine List', 'Класс Рутинное Список', '常规类名单', 'Sınıf Rutin Liste', 'Classe Lista de rotina', 'Class Rutin listája', 'Classe Liste de routine', 'Κλάση ρουτίνας Λίστα', 'Klasse Routine Liste', 'Lista routine Class', 'ชั้นรายชื่อประจำ', 'کلاس معمول کی فہرست', 'कक्षा नियमित सूची', 'Class List DEFUNCTORIUS', 'Kelas Daftar Rutin', 'クラスルーチン一覧', '클래스 정기 목록', NULL),
(291, 'add_study_material', 'Add Study Material', 'স্টাডি উপাদান যোগ করুন', 'Añadir Material de Estudio', 'إضافة المواد الدراسية', 'Voeg Studiemateriaal', 'Добавить учебный материал', '添加材料的研究', 'Eğitim Malzemesi ekle', 'Adicionar Material de Estudo', 'Add tananyag', 'Ajouter Matériel d\'étude', 'Προσθέστε Μελέτη Υλικό', 'In Study Material', 'Aggiungere Materiale di studio', 'เพิ่มวัสดุการศึกษา', 'تربیتی مواد شامل کریں', 'अध्ययन सामग्री जोड़े', 'Material Add Study', 'Tambahkan studi Bahan', '研究材料を追加', '연구 자료 추가', NULL),
(292, 'file_type', 'File Type', 'ফাইলের ধরন', 'Tipo de archivo', 'نوع الملف', 'Bestandstype', 'Тип файла', '文件类型', 'Dosya tipi', 'Tipo de arquivo', 'Fájltípus', 'Type de fichier', 'Τύπος αρχείου', 'Dateityp', 'Tipo di file', 'ชนิดของไฟล์', 'فائل کی قسم', 'फाइल का प्रकार', 'file Type', 'Jenis File', 'ファイルの種類', '파일 형식', NULL),
(293, 'select_file_type', 'Select File Type', 'নির্বাচন ফাইল টাইপ', 'Seleccione el tipo de archivo', 'حدد نوع الملف', 'Select File Type', 'Выберите тип файла', '选择文件类型', 'Seçin Dosya Türü', 'Selecionar Tipo de Arquivo', 'Select File Type', 'Sélectionner le type de fichier', 'Επιλογή τύπου αρχείου', 'Dateityp auswählen', 'Selezionare il tipo di file', 'เลือกประเภทไฟล์', 'منتخب فائل کی قسم', 'चुनें फ़ाइल प्रकार', 'File Selecta Type', 'Pilih File Type', 'ファイルタイプを選択します', '선택 파일 형식', NULL),
(294, 'image', 'Image', 'ভাবমূর্তি', 'Imagen', 'صورة', 'Beeld', 'Образ', '图片', 'görüntü', 'Imagem', 'Kép', 'image', 'Εικόνα', 'Image', 'Immagine', 'ภาพ', 'تصویر', 'छवि', 'Image', 'Gambar', '画像', '영상', NULL),
(295, 'doc', 'Doc', 'ডক', 'Doctor', 'وثيقة', 'dokter', 'доктор', '文件', 'doktor', 'doutor', 'doc', 'Doc', 'doc', 'Doc', 'Doc', 'คุณหมอ', 'ڈاکٹر', 'डॉक्टर', 'Doc', 'Dokter', 'ドク', '의사', NULL),
(296, 'pdf', 'Pdf', 'পিডিএফ', 'pdf', 'قوات الدفاع الشعبي', 'Pdf', 'Pdf', '全文', 'pdf', 'Pdf', 'pdf', 'Pdf', 'pdf', 'pdf', 'Pdf', 'รูปแบบไฟล์ PDF', 'پی ڈی ایف', 'पीडीएफ', 'Pdf', 'pdf', 'PDFファイル', 'PDF 파일', NULL),
(297, 'excel', 'Excel', 'সীমা অতিক্রম করা', 'Sobresalir', 'تفوق', 'uitmunten', 'превосходить', '高强', 'Excel', 'sobressair', 'Excel', 'Exceller', 'Προέχω', 'übertreffen', 'Eccellere', 'Excel', 'ایکسل', 'एक्सेल', 'Excel', 'Unggul', 'エクセル', '뛰어나다', NULL),
(298, 'other', 'Other', 'অন্যান্য', 'Otro', 'آخر', 'anders', 'Другие', '其他', 'Diğer', 'De outros', 'Más', 'Autre', 'Άλλα', 'Andere', 'Altro', 'อื่น ๆ', 'دیگر', 'अन्य', 'other', 'Lain', '他の', '다른', NULL),
(299, 'manage_promotion', 'Manage Promotion', 'প্রমোশন পরিচালনা', 'Manejo de Promoción', 'إدارة ترويج', 'Beheer Promotion', 'Управление Promotion', '促销管理', 'Promosyon Yönet', 'Gerenciar Promoção', 'kezelése Promotion', 'Gérer promotion', 'διαχειριστείτε Προώθηση', 'verwalten Promotion', 'gestire Promozione', 'จัดการโปรโมชั่น', 'پروموشن کا نظم کریں', 'प्रमोशन की व्यवस्था करें', 'Manage Promotion', 'mengelola Promosi', 'プロモーションを管理します', '프로모션 관리', NULL),
(300, 'select_class_for_promotion_to_and_from', 'Select Class For Promotion To And From', 'পদোন্নতির জন্য ক্লাস বেছে নিন এবং থেকে', 'Seleccione Clase para la promoción hacia y desde', 'حدد فئة للترقية إلى ومن', 'Selecteer klasse voor promotie van en naar', 'Выберите класс для продвижения и из', '选择类推广，并从', 'To Ve itibaren Promosyon için Sınıf Seçiniz', 'Selecione Classe de promoção a partir E', 'Válassza osztály Promotion és az onnan', 'Sélectionnez la classe pour la promotion à Et De', 'Επιλέξτε Τάξης για την προώθηση προς και από', 'Wählen Sie Klasse für Förderung zu und von', 'Selezionare Classe per la promozione da e per', 'เลือกชั้นเรียนสำหรับโปรโมชั่นไปและกลับจาก', 'اور سے پروموشن کے لئے کلاس کو منتخب کریں', 'संवर्धन के लिए कक्षा का चयन करने के लिए और से', 'Unde et ad promotionem ad Class Select', 'Pilih Kelas Untuk Promosi Untuk Dan Dari', 'し、より推進するためにクラスを選択します', '과에서 추진 클래스를 선택', NULL),
(301, 'students_of_class', 'Students Of Class', 'ক্লাস ছাত্রদের', 'Los estudiantes de la clase', 'طلبة الدرجة', 'Studenten van de klasse', 'Студенты класса', '学生类中', 'Sınıfının Öğrenciler', 'Os alunos da classe', 'A diákok osztály', 'Les élèves de la classe', 'Μαθητές της τάξης', 'Studierende der Klasse', 'Gli studenti della classe', 'นักเรียนชั้น', 'کلاس کے طالب علموں', 'कक्षा के छात्र', 'Alumni classium', 'Siswa Kelas', 'クラスの生徒', '클래스의 학생', NULL),
(302, 'enroll_to_class', 'Enroll To Class', 'তালিকাভুক্ত শ্রেণী', 'Para inscribirse Clase', 'تسجيل لفئة', 'Inschrijven voor Class', 'Запишитесь в класс', '注册，以类', 'To Sınıf kayıt', 'Se inscrever para a Classe', 'Iratkozz osztályba', 'Inscrivez-vous à la classe', 'Εγγραφούν στην κατηγορία', 'Enroll in Klasse', 'Iscriversi in classe', 'ลงทะเบียนเรียนในชั้นเรียน', 'کلاس اندراج کریں', 'नामांकन के लिए कक्षा', 'Ut profiteretur Class', 'Mendaftar Untuk Kelas', 'クラスへの入学', '로 클래스를 등록', NULL),
(303, 'add_a_row', 'Add A Row', 'একটি সারিতে যোগ', 'Añadir Fila', 'إضافة صف واحد', 'Voeg een rij', 'Добавление строки', '添加一行', 'Bir satır ekle', 'Adicionar Fila', 'Sor hozzáadása', 'Ajouter rang', 'Προσθέστε μια σειρά', 'Fügen Sie eine Zeile', 'Aggiungere fila', 'เพิ่มแถว', 'ایک قطار میں شامل کریں', 'एक पंक्ति जोड़ें', 'Add A row', 'Tambahkan A Row', '行の追加', '행을 추가', NULL),
(304, 'marks_obtained', 'Marks Obtained', 'প্রাপ্ত নম্বর', 'marcas obtenidas', 'العلامات التي يحصل', 'Marks verkregen', 'Marks Получено', '获得商标', 'Marks elde', 'notas obtidas', 'Szerzett érdemjegyek', 'Notes obtenues', 'βαθμών', 'Marks Erhalten', 'Voti Ottenuti', 'ที่ได้รับเครื่องหมาย', 'مارکس حاصل', 'प्राप्तांक', 'Consecutus marks', 'Marks Diperoleh', '得られたマークス', '마크 획득', NULL),
(305, 'marks_updated', 'Marks Updated', 'মার্কস Updated', 'Actualizado marcas', 'علامات التحديث', 'Marks Bijgewerkt', 'Marks Обновлено', '标志更新', 'Marks Güncelleme', 'marcas Atualizado', 'Marks Frissítve', 'Marks Mise à jour', 'Marks Ενημέρωση', 'Marks Aktualisiert', 'Marks Aggiornato', 'Updated เครื่องหมาย', 'مارکس تازہ کاری', 'मार्क्स Updated', 'Updated marks', 'Marks Diperbarui', 'マークス更新します', '마크 업데이트', NULL),
(306, 'marks_for', 'Marks For', 'জন্য মার্কস', 'Para las marcas', 'علامات ل', 'Marks Voor', 'Marks Для', '标志着', 'için işaretleri', 'marcas para', 'jelek', 'Marks Pour', 'Marks Για', 'Marks Für', 'marchi per', 'เครื่องหมายสำหรับ', 'کے لئے نشان', 'के लिए अंक', 'marcas', 'Marks Untuk', '用のマーク', '용 마크', NULL),
(307, 'attendance_for_class', 'Attendance For Class', 'এ্যাটেনডেন্স বর্গ জন্য', 'Para la asistencia a clase', 'الحضور لفئة', 'Attendance Voor klasse', 'Участники Для класса', '考勤类', 'Sınıfı Seyirci', 'Presença Para a Classe', 'Nézőszám osztályú', 'Participation Pour la classe', 'Συμμετοχή Για την Κλάση', 'Die Teilnahme für die Klasse', 'Partecipazione Per la Classe', 'การเข้าร่วมประชุมสำหรับ Class', 'کلاس کے لئے حاضری', 'उपस्थिति कक्षा के लिए', 'Class enim frequentatio', 'Kehadiran Untuk Kelas', 'クラスの出席', '클래스에 대한 출석', NULL),
(308, 'print_tabulation_sheet', 'Print Tabulation Sheet', 'প্রিন্ট ট্যাবুলেশন শিট', 'Imprimir hoja de tabulación', 'طباعة ورقة الجدولة', 'Print Tabelleren Sheet', 'Печать Табуляционная Sheet', '打印制表表', 'Baskı Tablolama Sayfası', 'Folha de Tabulação de impressão', 'Nyomtatás táblázatos Sheet', 'Imprimer Tabulation Sheet', 'Εκτύπωση Φύλλο Υπολογισμού', 'Drucken Tabulablatt', 'Stampa Tabulazione Foglio', 'แผ่นแจกแจงพิมพ์', 'پرنٹ ٹیبیولیشن شیٹ', 'प्रिंट सारणीकरण शीट', 'Print tabularia Sheet', 'Cetak Tabulasi Lembar', '印刷集計シート', '인쇄 집계 시트', NULL),
(309, 'receiver', 'Receiver', 'গ্রাহক', 'Receptor', 'المتلقي', 'Ontvanger', 'Получатель', '接收器', 'alıcı', 'recebedor', 'Receiver', 'Récepteur', 'Δέκτης', 'Empfänger', 'Ricevitore', 'ผู้รับ', 'وصول', 'रिसीवर', 'receptor', 'Penerima', '受信機', '리시버', NULL),
(310, 'please_select_receiver', 'Please Select Receiver', 'দয়া করে রিসিভার নির্বাচন', 'Por favor seleccione Receptor', 'الرجاء الإختيار استقبال', 'Selecteer Receiver', 'Выберите приемник', '请选择接收器', 'Alıcısı Seçiniz', 'Selecione Receiver', 'Kérjük, válasszon Receiver', 'S\'il vous plaît Sélectionnez Receiver', 'Επιλέξτε Δέκτης', 'Bitte wählen Receiver', 'Selezionare Ricevitore', 'กรุณาเลือกรับสัญญาณ', 'وصول براہ مہربانی منتخب کریں', 'कृपया रिसीवर का चयन करें', 'Select receptorem', 'Silakan Pilih Receiver', 'Receiverを選択してください', '수신기를 선택하세요', NULL),
(311, 'session_changed', 'Session Changed', 'সেশন পরিবর্তিত', 'sesión Changed', 'جلسة تغيير', 'Session Changed', 'сессия Изменено', '会议改', 'Oturum Değişti', 'sessão Changed', 'Session megváltozott', 'session Changed', 'συνεδρία Άλλαξε', 'Sitzung geändert', 'sessione cambiato', 'เซสชั่นเปลี่ยน', 'سیشن تبدیل کر دیا گیا', 'सत्र बदली गई', 'Sessio Uertit', 'sesi Berubah', 'セッションが変更します', '세션 변경', NULL),
(312, 'attendance_updated', 'Attendance Updated', 'এ্যাটেনডেন্স Updated', 'La asistencia Actualizado', 'الحضور التحديث', 'Attendance Bijgewerkt', 'Посещаемость Обновлено', '出席更新', 'Seyirci Güncelleme', 'Presença Atualizado', 'Nézőszám Frissítve', 'Participation Mise à jour', 'Συμμετοχή Ενημέρωση', 'Die Teilnahme Aktualisiert', 'La partecipazione Aggiornato', 'ผู้เข้าร่วม Updated', 'حاضری تازہ کاری', 'उपस्थिति Updated', 'Updated frequentatio', 'kehadiran Updated', '出席更新します', '출석 업데이트', NULL),
(313, 'study_material_info_saved_successfuly', 'Study Material Info Saved Successfuly', 'গবেষণা উপাদান তথ্য সংরক্ষিত successfuly', 'Material de Estudio información guardada exitosamente', 'دراسة المواد معلومات المحفوظة بنجاح', 'Studiemateriaal Info Saved Successfuly', 'Учебного материала Информация Сохраненные успешно', '研究材料信息保存Successfuly', 'Eğitim Malzemesi Bilgisi Kayıtlı başarıyla', 'Material de Estudo Informações com sucesso Salvo', 'Tananyag Info mentése sikerült', 'Matériel d\'étude Infos enregistrées successfuly', 'Μελέτη Υλικό Πληροφορίες Αποθηκευμένες επιτυχώς', 'Study Material Info Gespeichert Erfolgreicher', 'Materiale di studio Info salvata con successo', 'วัสดุการศึกษาข้อมูลที่บันทึกไว้เรียบร้อย', 'تربیتی مواد انفارمیشن محفوظ Successfuly', 'अध्ययन सामग्री जानकारी गयी सफलता से', 'Material Info Saved successfuly Study', 'Studi Bahan Info Disimpan successfuly', '研究材料情報の保存Successfuly', '연구 원재료 정보 저장 Successfuly', NULL),
(314, 'edit_study_material', 'Edit Study Material', 'সম্পাদনা স্টাডি উপাদান', 'Editar Material de Estudio', 'تحرير المواد الدراسية', 'Bewerken Studiemateriaal', 'Редактирование учебного материала', '编辑学习材料', 'Düzenleme Eğitim Malzemesi', 'Editar Material de Estudo', 'Szerkesztés tananyag', 'Modifier Matériel d\'étude', 'Επεξεργασία Μελέτη Υλικό', 'Bearbeiten Study Material', 'Modifica materiale di studio', 'แก้ไขวัสดุการศึกษา', 'تصیح تربیتی مواد', 'संपादित अध्ययन सामग्री', 'Latin Edit Material', 'Mengedit studi Bahan', '編集研究材料', '편집 연구 자료', NULL),
(315, 'parent_dashboard', 'Parent Dashboard', 'পেরেন্ট ড্যাশবোর্ড', 'Tablero de instrumentos de Padres', 'لوحة الأم', 'Parent Dashboard', 'родитель Dashboard', '家长仪表板', 'ebeveyn Kontrol Paneli', 'Painel pai', 'szülő Portál', 'Tableau de bord Parent', 'μητρική ταμπλό', 'Eltern-Dashboard', 'Dashboard Parent', 'แดชบอร์ดสำหรับผู้ปกครอง', 'والدین کا ڈیش بورڈ', 'जनक डैशबोर्ड', 'Parent Dashboard', 'Dashboard orang tua', '親ダッシュボード', '부모 대시 보드', NULL),
(316, 'exam_marks', 'Exam Marks', 'পরীক্ষার মার্কস', 'marcas de examen', 'علامات الامتحان', 'examen Marks', 'экзамен Marks', '考试马克斯', 'sınav Marks', 'Marcas de exame', 'vizsga Marks', 'Marques d\'examen', 'εξετάσεις σήματα', 'Exam Marks', 'Marks esame', 'Marks สอบ', 'امتحان مارکس', 'परीक्षा मार्क्स', 'IV Marks', 'Marks ujian', '試験マークス', '시험 마크', NULL),
(317, 'total_mark', 'Total Mark', 'মোট মার্ক', 'Puntuación total', 'عدد الأقسام', 'Totaal Mark', 'Общий балл', '积分', 'Toplam Mark', 'total de Mark', 'Összesen Mark', 'total Mark', 'Σύνολο Mark', 'insgesamt Mark', 'Mark totale', 'มาร์ครวม', 'کل مارک', 'कुल मार्क', 'Mark Total', 'total Mark', '合計マーク', '총 마크', NULL),
(318, 'mark_obtained', 'Mark Obtained', 'মার্ক প্রাপ্ত', 'Nota obtenida', 'علامة حصل', 'Mark verkregen', 'Марк Получено', '标记所获得', 'Mark elde', 'Mark Obtido', 'Mark kaptunk', 'Mark Obtenu', 'Mark Λαμβάνεται', 'Mark Erhalten', 'Mark Ottenuto', 'มาร์คได้รับ', 'مارک حاصل', 'चिह्न प्राप्त', 'Mark Adepta', 'Mark Diperoleh', 'マーク取得', '마크 획득', NULL),
(319, 'manage_invoice/payment', 'Manage Invoice/payment', 'ইনভয়েস / পেমেন্ট পরিচালনা', 'Manejo de la factura / pago', 'إدارة فاتورة / دفع', 'Beheer Factuur / betaling', 'Управление счета-фактуры / платежа', '管理发票/付款', 'Fatura / ödeme yönetme', 'Gerenciar fatura / pagamento', 'Kezelés A számla / fizetés', 'Gérer facture / paiement', 'Διαχειριστείτε Τιμολόγιο / πληρωμής', 'Verwalten Rechnung / Zahlung', 'Gestire fattura / pagamento', 'การจัดการใบแจ้งหนี้ / การชำระเงิน', 'انتظام کریں انوائس / ادائیگی', 'चालान / भुगतान का प्रबंधन', 'Cautionem Manage / pretium', 'Mengelola Faktur / pembayaran', '請求書/支払いを管理します', '인보이스 / 결제 관리', NULL),
(320, 'invoice/payment_list', 'Invoice/payment List', 'ইনভয়েস / পেমেন্ট তালিকা', 'Lista de factura / pago', 'فاتورة / قائمة دفع', 'Factuur / betaling List', 'Счет / Список оплаты', '发票/付款清单', 'Fatura / ödeme listesi', 'Invoice / Lista de pagamento', 'A számla / fizetés listája', 'Facture / Liste de paiement', 'Τιμολόγιο / Λίστα πληρωμής', 'Rechnung / Zahlung Liste', 'Fattura / Lista pagamento', 'ใบแจ้งหนี้ / รายการชำระเงิน', 'انوائس / ادائیگی کی فہرست', 'चालान / भुगतान सूची', 'Cautionem / list pretium', 'Faktur / Daftar pembayaran', '請求書/支払一覧', '송장 / 지불 목록', NULL),
(321, 'student_dashboard', 'Student Dashboard', 'ছাত্র ড্যাশবোর্ড', 'Tablero de instrumentos del estudiante', 'لوحة طالب', 'student Dashboard', 'Студент Dashboard', '学生仪表板', 'Öğrenci Paneli', 'Painel Student', 'Student Portál', 'Tableau de bord de l\'élève', 'ταμπλό φοιτητής', 'Studenten-Dashboard', 'Dashboard Student', 'แดชบอร์ดนักศึกษา', 'طالب علم کا ڈیش بورڈ', 'छात्र डैशबोर्ड', 'Discipulus Dashboard', 'Mahasiswa Dashboard', '学生ダッシュボード', '학생 대시 보드', NULL),
(322, 'obtained_marks', 'Obtained Marks', 'প্রাপ্ত মার্কস', 'calificaciones obtenidas', 'العلامات التي تم الحصول عليها', 'verkregen Marks', 'Полученные Marks', '获得商标', 'elde edilen Marks', 'notas obtidas', 'nyert Marks', 'Les notes obtenues', 'λαμβάνονται σήματα', 'erhalten Marks', 'punteggi ottenuti', 'เครื่องหมายที่ได้รับ', 'حاصل مارکس', 'प्राप्त अंकों', 'consecutus Marks', 'Marks diperoleh', '得られマークス', '획득 마크', NULL),
(323, 'highest_mark', 'Highest Mark', 'সর্বোচ্চ মার্ক', 'Marcos más alto', 'أعلى الأقسام', 'hoogste Mark', 'Самый высокий Марк', '最高分', 'En yüksek işaretle', 'maior Mark', 'legmagasabb Mark', 'le plus élevé Mark', 'υψηλότερη Mark', 'Höchste Mark', 'Massima Mark', 'มาร์คสูงสุด', 'سب سے زیادہ نشان', 'उच्चतम निशान', 'Mark Altissimi', 'Mark tertinggi', '最高点', '최고 마크', NULL),
(324, 'grade', 'Grade', 'শ্রেণী', 'Grado', 'درجة', 'Rang', 'класс', '年级', 'sınıf', 'Grau', 'Fokozat', 'Qualité', 'Βαθμός', 'Klasse', 'Grado', 'เกรด', 'گریڈ', 'ग्रेड', 'Grade', 'Kelas', 'グレード', '학년', NULL),
(325, 'take_payment', 'Take Payment', 'পেমেন্ট নিন', 'tome Pago', 'اتخاذ الدفع', 'Neem Betaling', 'Возьмите Оплата', '就拿付款', 'Ödeme alın', 'tome pagamento', 'vegye fizetés', 'Prenez paiement', 'Πάρτε πληρωμής', 'Nehmen Sie Zahlung', 'prendere il pagamento', 'ใช้เวลาการชำระเงิน', 'ادائیگی کے لے', 'भुगतान ले', 'fundetur', 'Ambil Pembayaran', 'お支払いを取ります', '지불을', NULL),
(326, 'view_invoice', 'View Invoice', 'দেখুন চালান', 'Ver factura', 'عرض الفاتورة', 'Bekijk Factuur', 'Посмотреть счет', '查看发票', 'Görünüm Fatura', 'Ver Invoice', 'Számla megtekintése', 'Voir la facture', 'Προβολή Τιμολόγιο', 'Rechnung anzeigen', 'Visualizza fattura', 'ดูใบแจ้งหนี้', 'لنک انوائس', 'चालान देखें', 'View Invoice', 'Lihat Faktur', '請求書を見ます', '보기 송장', NULL),
(327, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'Fecha de creación', 'تاريخ الإنشاء', 'Aanmaakdatum', 'Дата создания', '创建日期', 'Oluşturulma tarihi', 'Data de criação', 'Készítés ideje', 'Date de création', 'Ημερομηνία δημιουργίας', 'Erstellungsdatum', 'Data di creazione', 'วันที่สร้าง', 'بنانے کی تاریخ', 'रचना तिथि', 'Creation Date', 'Tanggal penciptaan', '作成日', '만든 날짜', NULL),
(328, 'payment_to', 'Payment To', 'পরিশোদ করা', 'Pago Para', 'دفع ل', 'Betaling aan', 'Оплата Для', '支付', 'Için ödeme', 'Pagamento para', 'Fizetés ... részére', 'Paiement à', 'πληρωμή Για την', 'Zahlung Um', 'pagamento a', 'การชำระเงิน', 'کرنے کے لئے ادائیگی', 'को भुगतान', 'pecunia', 'pembayaran untuk', 'への支払い', '로 지불', NULL),
(329, 'bill_to', 'Bill To', 'বিল করতে', 'Cobrar a', 'فاتورة الى', 'Rekening naar', 'Плательщик', '记账到', 'Ya fatura edilecek', 'Projeto de lei para', 'Bill To', 'Facturer', 'νομοσχέδιο για την', 'Gesetzesentwurf für', 'Fatturare a', 'ส่งเบิกไปที่', 'کا بل', 'बिल प्राप्तकर्ता', 'Bill', 'Pembayaran kepada', '請求書送付先', '빌로', NULL),
(330, 'total_amount', 'Total Amount', 'সর্বমোট পরিমাণ', 'Cantidad total', 'المبلغ الإجمالي', 'Totaalbedrag', 'Итого', '总金额', 'Toplam tutar', 'Valor total', 'Teljes összeg', 'Montant total', 'Συνολικό ποσό', 'Gesamtmenge', 'Importo totale', 'จำนวนเงินรวม', 'کل رقم', 'कुल रकम', 'Summa', 'Jumlah total', '合計金額', '총액', NULL),
(331, 'paid_amount', 'Paid Amount', 'দেওয়া পরিমাণ', 'Monto de pago', 'المبلغ المدفوع', 'Betaalde hoeveelheid', 'Выплаченная сумма', '已付金额', 'Ödenen miktar', 'Quantidade paga', 'Fizetett mennyiség', 'Montant payé', 'καταβληθέν ποσό', 'Bezahlte Menge', 'Importo pagato', 'จำนวนเงินที่ชำระ', 'ادا کی گئی رقم', 'भरी गई राशि', 'Aliquam Paid', 'Jumlah pembayaran', '支払金額', '지불 금액', NULL),
(332, 'due', 'Due', 'দরুন', 'Debido', 'بسبب', 'verschuldigd', 'В связи', '应有', 'gereken', 'Devido', 'Esedékes', 'Dû', 'Οφειλόμενος', 'Während', 'Dovuto', 'ครบกำหนด', 'وجہ', 'देय', 'debitum', 'karena', '原因', '정당한', NULL),
(333, 'amount_paid', 'Amount Paid', 'পরিমাণ অর্থ প্রদান করা', 'Cantidad pagada', 'المبلغ المدفوع', 'Betaald bedrag', 'выплачиваемая сумма', '支付的金额', 'Ödenen miktar', 'Quantia paga', 'Kifizetett összeg', 'Le montant payé', 'Ποσό που καταβάλλεται', 'Betrag bezahlt', 'Importo pagato', 'จำนวนเงินที่จ่าย', 'رقم ادا کر دی', 'राशि का भुगतान', 'Soluentibus', 'Jumlah yang dibayarkan', '払込金額', '금액 지급', NULL),
(334, 'payment_successfull', 'Payment Successfull', 'পেমেন্ট successfull', 'acertado pago', 'دفع النجاح', 'betaling Succesvolle', 'Компенсация К успеху', '支付全成', 'Ödeme Başarılı', 'Successfull pagamento', 'fizetési Sikeres', 'Paiement Successfull', 'Επιτυχεία πληρωμής', 'Zahlung Erfolgreichen', 'Successfull pagamento', 'ที่ประสบความสำเร็จการชำระเงิน', 'ادائیگی کامیاب', 'भुगतान सफल', 'Payment Successfull', 'Successfull pembayaran', '支払成功し', '결제 성공적인', NULL),
(335, 'add_invoice/payment', 'Add Invoice/payment', 'ইনভয়েস / পেমেন্ট যোগ', 'Añadir factura / pago', 'إضافة فاتورة / دفع', 'Voeg Factuur / betaling', 'Добавить счет-фактура / платеж', '添加发票/付款', 'Fatura / ödeme ekle', 'Adicionar fatura / pagamento', 'Add számla / fizetés', 'Ajouter Facture / paiement', 'Προσθέστε Τιμολόγιο / πληρωμής', 'In Rechnung / Zahlung', 'Aggiungere fattura / pagamento', 'เพิ่มใบแจ้งหนี้ / การชำระเงิน', 'شامل کریں انوائس / ادائیگی', 'चालान / भुगतान जोड़े', 'Cautionem Add / pretium', 'Tambahkan Faktur / pembayaran', '請求書/支払いを追加', '송장 / 지불 추가', NULL),
(336, 'invoices', 'Invoices', 'ইনভয়েস বা চালান', 'Facturas', 'الفواتير', 'facturen', 'Счета-фактуры', '发票', 'faturalar', 'facturas', 'számlák', 'factures', 'τιμολόγια', 'Rechnungen', 'Fatture', 'ใบแจ้งหนี้', 'انوائس', 'चालान', 'Invoices', 'faktur', '請求書', '송장', NULL),
(337, 'action', 'Action', 'কর্ম', 'Acción', 'عمل', 'Actie', 'действие', '行动', 'Aksiyon', 'Açao', 'Akció', 'action', 'Δράση', 'Aktion', 'Azione', 'การกระทำ', 'عمل', 'कार्य', 'actionis', 'Tindakan', 'アクション', '동작', NULL),
(338, 'required', 'Required', 'প্রয়োজনীয়', 'Necesario', 'مطلوب', 'nodig', 'необходимые', '需要', 'gereken', 'Requeridos', 'Kívánt', 'Obligatoire', 'Απαιτείται', 'Erforderlich', 'richiesto', 'จำเป็นต้องใช้', 'مطلوب', 'अपेक्षित', 'Suspendisse', 'Wajib', '必須', '필수', NULL),
(339, 'info', 'Info', 'তথ্য', 'información', 'معلومات', 'info', 'Информация', '信息', 'Bilgi', 'informações', 'Info', 'Info', 'πληροφορίες', 'Info', 'Informazioni', 'ข้อมูล', 'انفارمیشن', 'जानकारी', 'Info', 'Info', 'インフォ', '정보', NULL),
(340, 'view_academic_performance', 'View Academic Performance', 'একাডেমিক পারফরমেন্স দেখুন', 'Ver Rendimiento Académico', 'عرض الأداء الأكاديمي', 'Bekijk academische prestaties', 'Просмотр академической успеваемости', '查看学业成绩', 'Akademik Performans görüntüle', 'Ver Desempenho Acadêmico', 'Tekintse Academic Performance', 'Voir le rendement scolaire', 'Δείτε τις ακαδημαϊκές επιδόσεις', 'Sehen Sie Akademische Leistung', 'Visualizza rendimento scolastico', 'ดูการปฏิบัติงานวิชาการ', 'تعلیمی کارکردگی دیکھیں', 'अकादमिक प्रदर्शन देखें', 'View academicum perficientur', 'Lihat Kinerja Akademik', '学業成績を見ます', '학력보기', NULL),
(341, 'phrase_list', 'Phrase List', 'শব্দবন্ধ তালিকা', 'Lista frase', 'قائمة العبارة', 'Phrase List', 'Список фраз', '短语列表', 'Öbek listesi', 'Lista frase', 'kifejezés listával', 'Liste Phrase', 'Λίστα φράση', 'Phrasenliste', 'Lista frase', 'รายการวลี', 'جملہ لسٹ', 'वाक्यांश सूची', 'List Phrase', 'Daftar frase', 'フレーズ一覧', '구문 목록', NULL),
(342, 'update_phrase', 'Update Phrase', 'আপডেট শব্দবন্ধ', 'actualización Frase', 'تحديث العبارة', 'Phrase-update', 'Обновление Фраза', '更新短语', 'güncelleme Öbek', 'Frase atualização', 'frissítés kifejezés', 'Mise à jour Phrase', 'Ενημέρωση Φράση', 'Update-Phrase', 'Aggiornamento Frase', 'ปรับปรุงวลี', 'اپ ڈیٹ کے جملے سے', 'अद्यतन वाक्यांश', 'Update Phrase', 'Frase pembaruan', 'アップデートフレーズ', '업데이트 구문', NULL),
(343, 'edit_invoice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(344, 'students_added', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(345, 'student_already_enrolled', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(346, 'new_enrollment_successfull', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(347, 'reply_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(348, 'daily_atendance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(349, 'attendance_report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(350, 'study_material_info_updated_successfuly', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(351, 'running', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(352, 'archived', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(353, 'show_report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(354, 'attendance_report_of_class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(355, 'attendance_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(356, 'print_attendance_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(357, 'mark_archive', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(358, 'remove_from_archive', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(359, 'print/view_notice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(360, 'view_notice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(361, 'month', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(362, 'product_updated_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(363, 'question_paper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(364, 'admin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(365, 'add_question_paper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(366, 'submit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(367, 'data_created_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(368, 'edit_question_paper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(369, 'data_updated_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(370, 'data_deleted_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(371, 'view_question_paper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(372, 'question_paper_details', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(373, 'print_question_paper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(374, 'mark_all_present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(375, 'mark_all_absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(376, 'librarian_dashboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(377, 'book_requests', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(378, 'total_copies', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(379, 'issued_copies', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(380, 'edit_book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(381, 'my_book_requests', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(382, 'request_book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(383, 'request_new_book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(384, 'book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(385, 'select_a_book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(386, 'issue_starting_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(387, 'issue_ending_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(388, 'book_request', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(389, 'requested_book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(390, 'requested_by', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(391, 'request_status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(392, 'pending', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(393, 'issued', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(394, 'rejected', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(395, 'accept', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(396, 'reject', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(397, 'request_accepted_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(398, 'request_rejected_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(399, 'no_actions_available', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(400, 'total_books', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(401, 'pending_book_requests', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(402, 'librarian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(403, 'all_librarians', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(404, 'add_new_librarian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(405, 'add_librarian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(406, 'edit_librarian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(407, 'account_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(408, 'password_mismatch', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(409, 'password_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(410, 'message_sent!', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(411, 'please_select_a_class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(412, 'year', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(413, 'sessional_year', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(414, 'please_make_sure_class_and_sessional_year_are_selected', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(415, 'january', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(416, 'february', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(417, 'march', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(418, 'april', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(419, 'may', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(420, 'june', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(421, 'july', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(422, 'august', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(423, 'september', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(424, 'october', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(425, 'november', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(426, 'december', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(427, 'no_direct_script_access_allowed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(428, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(429, 'all_accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(430, 'add_new_accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(431, 'add_accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(432, 'edit_accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(433, 'accountant_dashboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(434, 'student_specific_payment_history', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(435, 'search', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(436, 'total_income', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(437, 'this_month', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(438, 'total_expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(439, 'active', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(440, 'activated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(441, 'student_deleted', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(442, 'all_students_added', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'this_email_id_is_not_available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'parent_phone_number_is_not_found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'payumoney_merchant_key', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'payumoney_salt_id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'pay_with_payumoney', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'mandatory_parameters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'first_name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'product_info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'Success_URI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'Failure_URI:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'payumoney_payment_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'optional_parameters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'last_name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'cancel_url', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'city', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'state', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'Zipcode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'UDF1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'UDF2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'UDF3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'UDF4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'UDF5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'PG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'Amount', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `librarian_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  `password` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`librarian_id`, `name`, `email`, `password`) VALUES
(1, 'lib', 'lib@lib.com', '9d062bafff17ba8b9a1215c4c51485134d509d91');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `mark_obtained` int(11) DEFAULT NULL,
  `mark_total` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `section_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`, `year`) VALUES
(1, 1, NULL, 1, 1, 1, NULL, NULL, NULL, '2021-2022'),
(2, 1, 2, 1, 1, 1, 10, NULL, '', '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sender` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`, `attached_file_name`) VALUES
(1, '277110095661a3d', 'hsadhsaj', 'teacher-1', '1649059322', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `reciever` longtext COLLATE utf8_unicode_ci,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `reciever`, `last_message_timestamp`) VALUES
(1, '277110095661a3d', 'teacher-1', 'student-1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci,
  `notice` longtext COLLATE utf8_unicode_ci,
  `create_timestamp` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '1',
  `show_on_website` int(11) DEFAULT '0',
  `image` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`, `status`, `show_on_website`, `image`) VALUES
(1, 'abdsa', 'dsads', '1649095200', 1, 1, 'logo-uit.png');

-- --------------------------------------------------------

--
-- Table structure for table `online_exam`
--

CREATE TABLE `online_exam` (
  `online_exam_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `title` text COLLATE utf8_unicode_ci,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `exam_date` int(11) DEFAULT NULL,
  `time_start` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_end` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` text COLLATE utf8_unicode_ci COMMENT 'duration in second',
  `minimum_percentage` text COLLATE utf8_unicode_ci,
  `instruction` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `running_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online_exam`
--

INSERT INTO `online_exam` (`online_exam_id`, `code`, `title`, `class_id`, `section_id`, `subject_id`, `exam_date`, `time_start`, `time_end`, `duration`, `minimum_percentage`, `instruction`, `status`, `running_year`) VALUES
(1, 'f0a6bd1', 'TEST EXAM', 1, 1, 2, 1649095200, '11:00:00', '11:30:00', '1800', '50', 'TESTTTTT', 'pending', '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_result`
--

CREATE TABLE `online_exam_result` (
  `online_exam_result_id` int(11) UNSIGNED NOT NULL,
  `online_exam_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `answer_script` longtext COLLATE utf8_unicode_ci,
  `obtained_mark` text COLLATE utf8_unicode_ci,
  `status` text COLLATE utf8_unicode_ci,
  `exam_started_timestamp` longtext COLLATE utf8_unicode_ci,
  `result` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  `password` longtext COLLATE utf8_unicode_ci,
  `phone` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci,
  `profession` longtext COLLATE utf8_unicode_ci,
  `authentication_key` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES
(1, 'parent', 'parent@parent.com', 'd8fd39d0bbdd2dcf322d8b11390a4c5825b11495', '123123123', 'test', 'test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `payment_type` longtext COLLATE utf8_unicode_ci,
  `invoice_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `method` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `amount` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

CREATE TABLE `question_bank` (
  `question_bank_id` int(11) UNSIGNED NOT NULL,
  `online_exam_id` int(11) DEFAULT NULL,
  `question_title` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `correct_answers` longtext COLLATE utf8_unicode_ci,
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`question_bank_id`, `online_exam_id`, `question_title`, `type`, `number_of_options`, `options`, `correct_answers`, `mark`) VALUES
(1, 1, 'TEST', 'true_false', NULL, NULL, 'true', '1'),
(2, 1, '111', 'multiple_choice', 4, '[\"32131\",\"123\",\"1333\",\"111\"]', '[\"\"]', '9');

-- --------------------------------------------------------

--
-- Table structure for table `question_paper`
--

CREATE TABLE `question_paper` (
  `question_paper_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `question_paper` longtext COLLATE utf8_unicode_ci,
  `class_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_paper`
--

INSERT INTO `question_paper` (`question_paper_id`, `title`, `question_paper`, `class_id`, `exam_id`, `teacher_id`) VALUES
(1, 'DOCS', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `nick_name` longtext COLLATE utf8_unicode_ci,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES
(1, 'A', NULL, 1, 1),
(2, 'TEST', 'TEST', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'University of Information Technology'),
(2, 'system_title', 'UIT School Management System'),
(3, 'address', 'Address'),
(4, 'phone', '0123456789'),
(5, 'paypal_email', NULL),
(6, 'currency', 'vnd'),
(7, 'system_email', 'uit@gm.uit.edu.vn'),
(20, 'active_sms_service', 'disabled'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(13, 'clickatell_user', ''),
(14, 'clickatell_password', ''),
(15, 'clickatell_api_id', ''),
(16, 'skin_colour', 'default'),
(17, 'twilio_account_sid', ''),
(18, 'twilio_auth_token', ''),
(19, 'twilio_sender_phone_number', ''),
(21, 'running_year', '2021-2022'),
(22, 'payumoney_merchant_key', 'sad'),
(23, 'payumoney_salt_id', 'asd'),
(24, 'msg91_authentication_key', NULL),
(25, 'msg91_sender_ID', NULL),
(26, 'msg91_route', NULL),
(27, 'msg91_country_code', NULL),
(28, 'purchase_code', NULL),
(29, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtj\",\"production_client_id\":\"SomeId\"}]'),
(30, 'stripe_keys', '[{\"active\":\"0\",\"testmode\":\"on\",\"public_key\":\"pk_test_c6VvBEbwHFdulFZ62q1IQrar\",\"secret_key\":\"sk_test_9IMkiM6Ykxr1LCe2dJ3PgaxS\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(31, 'disable_frontend', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_code` longtext COLLATE utf8_unicode_ci,
  `name` longtext COLLATE utf8_unicode_ci,
  `birthday` longtext COLLATE utf8_unicode_ci,
  `sex` longtext COLLATE utf8_unicode_ci,
  `religion` longtext COLLATE utf8_unicode_ci,
  `blood_group` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci,
  `phone` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  `password` longtext COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `dormitory_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci,
  `authentication_key` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_code`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `parent_id`, `dormitory_id`, `transport_id`, `dormitory_room_number`, `authentication_key`) VALUES
(1, '613fba3', 'test', '06/13/2000', 'male', NULL, NULL, 'thu duc', '+84969072234', 'student@student.com', '204036a1ef6e7360e536300ea78c6aeb4a9333dd', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`, `year`) VALUES
(1, 'Test Subject', 1, 1, '2018-2019'),
(2, 'TEST SUBJECT', 1, 1, '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `birthday` longtext COLLATE utf8_unicode_ci,
  `sex` longtext COLLATE utf8_unicode_ci,
  `religion` longtext COLLATE utf8_unicode_ci,
  `blood_group` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci,
  `phone` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  `password` longtext COLLATE utf8_unicode_ci,
  `authentication_key` longtext COLLATE utf8_unicode_ci,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` text COLLATE utf8_unicode_ci,
  `show_on_website` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`, `designation`, `social_links`, `show_on_website`) VALUES
(1, 'teacher', '06/13/2000', 'male', NULL, NULL, 'teacher', '123123111', 'teacher@teacher.com', '4a82cb6db537ef6c5b53d144854e146de79502e8', NULL, 'teacher', '[{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `route_fare` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`academic_syllabus_id`);

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`accountant_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_request`
--
ALTER TABLE `book_request`
  ADD PRIMARY KEY (`book_request_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`frontend_events_id`);

--
-- Indexes for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  ADD PRIMARY KEY (`frontend_gallery_id`);

--
-- Indexes for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  ADD PRIMARY KEY (`frontend_gallery_image_id`);

--
-- Indexes for table `frontend_general_settings`
--
ALTER TABLE `frontend_general_settings`
  ADD PRIMARY KEY (`frontend_general_settings_id`);

--
-- Indexes for table `frontend_news`
--
ALTER TABLE `frontend_news`
  ADD PRIMARY KEY (`frontend_news_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`group_message_id`);

--
-- Indexes for table `group_message_thread`
--
ALTER TABLE `group_message_thread`
  ADD PRIMARY KEY (`group_message_thread_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`librarian_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `online_exam`
--
ALTER TABLE `online_exam`
  ADD PRIMARY KEY (`online_exam_id`);

--
-- Indexes for table `online_exam_result`
--
ALTER TABLE `online_exam_result`
  ADD PRIMARY KEY (`online_exam_result_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`question_bank_id`);

--
-- Indexes for table `question_paper`
--
ALTER TABLE `question_paper`
  ADD PRIMARY KEY (`question_paper_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `academic_syllabus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `accountant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_request`
--
ALTER TABLE `book_request`
  MODIFY `book_request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `frontend_events_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  MODIFY `frontend_gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  MODIFY `frontend_gallery_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_general_settings`
--
ALTER TABLE `frontend_general_settings`
  MODIFY `frontend_general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `frontend_news`
--
ALTER TABLE `frontend_news`
  MODIFY `frontend_news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_message`
--
ALTER TABLE `group_message`
  MODIFY `group_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_message_thread`
--
ALTER TABLE `group_message_thread`
  MODIFY `group_message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5050;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `librarian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_exam`
--
ALTER TABLE `online_exam`
  MODIFY `online_exam_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_exam_result`
--
ALTER TABLE `online_exam_result`
  MODIFY `online_exam_result_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_bank`
--
ALTER TABLE `question_bank`
  MODIFY `question_bank_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question_paper`
--
ALTER TABLE `question_paper`
  MODIFY `question_paper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
