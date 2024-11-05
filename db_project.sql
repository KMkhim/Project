-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2024 at 05:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `course_id` int(11) NOT NULL,
  `inst_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`course_id`, `inst_id`, `title`, `description`, `category`, `file_name`, `uploaded_on`, `status`, `duration`, `price`, `created_at`, `updated_at`) VALUES
(12, 1, 'เศษส่วนประถม', 'เรขาคณิตเบื้องต้นและทฤษฎีบทสามเหลี่ยม', 'MA1', 'Screenshot 2567-11-01 at 00.22.34.png', '2024-09-06 20:37:59', '1', 120, 2000, '2024-09-06 13:37:59', '2024-11-05 12:18:26'),
(13, 1, 'ความน่าจะเป็น', 'สอน proof math ที่ทุกคนรัก', 'MA31', 'Screenshot 2567-11-01 at 00.19.38.png', '2024-09-06 22:01:38', '1', 120, 1200, '2024-09-06 15:01:38', '2024-10-31 17:20:28'),
(14, 1, 'พืชและการสังเคราะห์แสง', 'คอร์สเรียนออนไลน์ กลุ่มพืช เทคนิคช่วยจำ \"Bio Map\" จัดลำดับความคิดได้อย่างเป็นระบบสำหรับนักเรียน ม.ปลาย', 'SC33', 'Screenshot 2567-11-01 at 00.25.48.png', '2024-09-06 22:03:38', '1', 120, 1000, '2024-09-06 15:03:38', '2024-10-31 17:26:29'),
(15, 2, 'เศษส่วน มัธยมต้น', 'มาเรียนเศษส่วนกันเถอะ TT', 'MA2', 'Screenshot 2567-09-06 at 23.19.17.png', '2024-09-06 23:19:27', '1', 120, 1500, '2024-09-06 16:19:27', '2024-09-08 03:07:52'),
(16, 2, 'วิชาแคลคูลัส', 'สนุกนะครับวิชานี้ ', 'MA31', 'math_course.png', '2024-09-06 23:20:31', '1', 120, 1600, '2024-09-06 16:20:31', '2024-09-08 03:08:07'),
(17, 1, 'ระบบหายใจ', 'เรื่องระบบหายใจของมนุษย์ กลไกการลำเลียงแก๊ส CO2 และกลไกการลำเลียงแก๊ส CO', 'SC33', 'Screenshot 2567-11-01 at 00.30.30.png', '2024-11-01 00:30:41', '1', 120, 2000, '2024-10-31 17:30:41', '2024-10-31 17:30:41'),
(18, 1, 'ระบบหมุนเวียนเลือด', 'เนื้อหาครอบคลุมถึง หน้าที่ของระบบไหลเวียนเลือดภายในร่างกายได้ องค์ประกอบที่เกี่ยวข้องของระบบไหลเวียนเลือดภายในร่างกาย การทำงานและหน้าที่ ของเม็ดเลือดแดง เม็ดเลือดขาว และ เกล็ดเลือด ', 'SC33', 'Screenshot 2567-11-01 at 00.33.50.png', '2024-11-01 00:33:59', '1', 120, 2000, '2024-10-31 17:33:59', '2024-10-31 17:33:59'),
(19, 1, 'ธรณีวิทยา', 'โครงสร้างโลก, โลกและการเปลี่ยนแปลง, ธรณีพิบัติภัย', 'SC1', 'Screenshot 2567-11-01 at 00.36.56.png', '2024-11-01 00:38:17', '1', 120, 1500, '2024-10-31 17:38:17', '2024-10-31 17:38:17'),
(20, 2, 'English Speaking Mastery', 'Boost your confidence and fluency in English with English Speaking Mastery. This course covers essential techniques in pronunciation, vocabulary, and real-life conversations.', 'EN3', 'Screenshot 2567-11-05 at 08.12.56.png', '2024-11-05 08:13:09', '1', 120, 4800, '2024-11-05 01:13:09', '2024-11-05 01:27:32'),
(21, 2, 'English Writing Essentials', 'คอร์สนี้จะพาคุณไปเรียนรู้พื้นฐานการเขียนภาษาอังกฤษ ตั้งแต่การสร้างประโยคอย่างถูกต้อง การพัฒนาทักษะการเขียนแบบเป็นทางการ', 'EN3', 'Screenshot 2567-11-05 at 08.15.19.png', '2024-11-05 08:15:31', '1', 120, 4800, '2024-11-05 01:15:31', '2024-11-05 01:27:06'),
(22, 2, 'Mastering English Reading Skills', 'ปลดล็อกทักษะการอ่านภาษาอังกฤษอย่างมั่นใจ คอร์สนี้จะช่วยให้คุณเข้าใจบทความ บทสนทนา และเนื้อหาภาษาอังกฤษได้ง่ายขึ้น', 'EN3', 'Screenshot 2567-11-05 at 08.16.29.png', '2024-11-05 08:17:00', '1', 120, 4800, '2024-11-05 01:17:00', '2024-11-05 01:26:46'),
(23, 2, 'English Essentials: พื้นฐานภาษาอังกฤษ', 'รียนรู้ทักษะภาษาอังกฤษพื้นฐานที่จำเป็น ทั้งการพูด การฟัง การอ่าน และการเขียน เสริมความมั่นใจ', 'EN3', 'Screenshot 2567-11-05 at 08.18.36.png', '2024-11-05 08:19:10', '1', 120, 4800, '2024-11-05 01:19:10', '2024-11-05 01:26:27'),
(24, 2, 'ประวัติศาสตร์โลก: สร้างโลกที่เราอยู่', 'สำรวจเหตุการณ์และบุคคลสำคัญที่สร้างประวัติศาสตร์โลก จากยุคโบราณจนถึงยุคปัจจุบัน ', 'SO3', 'Screenshot 2567-11-05 at 08.25.55.png', '2024-11-05 08:26:04', '1', 100, 1600, '2024-11-05 01:26:04', '2024-11-05 01:26:04'),
(25, 2, 'ภูมิศาสตร์และวัฒนธรรม: รู้จักโลกในมุมมองใหม่', 'รียนรู้การกระจายตัวของพื้นที่ วัฒนธรรม และทรัพยากรของโลก พร้อมทั้งการสำรวจวัฒนธรรมและวิถีชีวิตในภูมิภาคต่างๆ ผ่านภาพและเรื่องราวน่าสนใจ', 'SO3', 'Screenshot 2567-11-05 at 08.29.03.png', '2024-11-05 08:29:37', '1', 120, 1600, '2024-11-05 01:29:37', '2024-11-05 01:29:37'),
(26, 2, ' เศรษฐศาสตร์เบื้องต้น: พื้นฐานของเศรษฐกิจ', 'ทำความเข้าใจหลักการพื้นฐานของเศรษฐศาสตร์ และความสัมพันธ์ระหว่างทรัพยากร สินค้า และบริการที่ส่งผลต่อสังคม เรียนรู้ความสำคัญของเศรษฐศาสตร์ในชีวิตประจำวัน', 'SO3', 'Screenshot 2567-11-05 at 08.30.58.png', '2024-11-05 08:31:31', '1', 120, 1600, '2024-11-05 01:31:31', '2024-11-05 01:31:31'),
(27, 2, 'สังคมและการเมือง: การทำงานของสังคมร่วมสมัย', ' เจาะลึกระบบการเมือง การทำงานของรัฐบาล และโครงสร้างทางสังคมที่ส่งผลต่อชีวิตเราในปัจจุบัน ', 'SO3', 'Screenshot 2567-11-05 at 08.32.37.png', '2024-11-05 08:32:50', '1', 120, 1600, '2024-11-05 01:32:50', '2024-11-05 01:32:50'),
(28, 1, 'ภาษาไทยพื้นฐาน', 'สำหรับผู้ที่ต้องการวางรากฐานภาษาไทย เรียนรู้พยัญชนะ สระ การออกเสียง และไวยากรณ์', 'TH2', 'Screenshot 2567-11-05 at 08.45.11.png', '2024-11-05 08:42:59', '1', 120, 1500, '2024-11-05 01:42:59', '2024-11-05 01:45:19'),
(29, 1, 'ทักษะการเขียนภาษาไทย', ' ฝึกฝนการเขียนภาษาไทยอย่างมืออาชีพ ตั้งแต่การเขียนประโยคที่สละสลวย ไปจนถึงเทคนิคการเรียบเรียงเนื้อหา ', 'TH2', 'Screenshot 2567-11-05 at 08.43.35.png', '2024-11-05 08:44:05', '1', 120, 1400, '2024-11-05 01:44:05', '2024-11-05 01:44:05'),
(30, 1, 'ภาษาไทยเชิงวรรณกรรม', 'สำรวจความงดงามของภาษาไทยในวรรณกรรม เรียนรู้การอ่านและตีความบทกวี', 'TH2', 'Screenshot 2567-11-05 at 08.45.35.png', '2024-11-05 08:46:07', '1', 120, 1300, '2024-11-05 01:46:07', '2024-11-05 01:46:07'),
(31, 1, 'ภาษาไทยเพื่อการสื่อสาร', 'เน้นการสนทนาในสถานการณ์ต่างๆ และเรียนรู้สำนวน คำพังเพย เพื่อใช้ภาษาไทยให้เป็นธรรมชาติ', 'TH2', 'Screenshot 2567-11-05 at 08.47.04.png', '2024-11-05 08:47:30', '1', 120, 1300, '2024-11-05 01:47:30', '2024-11-05 01:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `Course_Manager`
--

CREATE TABLE `Course_Manager` (
  `cm_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Course_Manager`
--

INSERT INTO `Course_Manager` (`cm_id`, `user_id`) VALUES
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Enrollment`
--

CREATE TABLE `Enrollment` (
  `enroll_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `payment_status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Enrollment`
--

INSERT INTO `Enrollment` (`enroll_id`, `stu_id`, `course_id`, `payment_status`) VALUES
(33, 3, 16, 3),
(41, 3, 13, 1),
(59, 3, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `INSTRUCTOR`
--

CREATE TABLE `INSTRUCTOR` (
  `inst_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tutorname` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `file_name` varchar(225) NOT NULL,
  `file_name2` varchar(225) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `INSTRUCTOR`
--

INSERT INTO `INSTRUCTOR` (`inst_id`, `user_id`, `tutorname`, `description`, `file_name`, `file_name2`, `uploaded_on`, `status`) VALUES
(1, 2, 'LLPP', 'มาเรียนกันเถอะ', 'kk.png', 'hh.png', '2024-09-04 16:27:20', '1'),
(2, 5, 'Singha tutor', 'สอนดี สอนสนุกมากๆ', 'Screenshot 2567-09-06 at 23.17.40.png', 'cover.png', '2024-09-06 23:17:54', '1'),
(6, 9, 'tutor3', 'เรียนกับเรา F ทุกตัว', 'tutor3.png', 'testpic2.png', '2024-11-05 11:57:41', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Lessons`
--

CREATE TABLE `Lessons` (
  `lesson_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lesson_name` varchar(225) NOT NULL,
  `content` text DEFAULT NULL,
  `video_url` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Lessons`
--

INSERT INTO `Lessons` (`lesson_id`, `course_id`, `lesson_name`, `content`, `video_url`, `created_at`, `updated_at`) VALUES
(4, 12, 'vbspy', 'Animagus (แอนิเมจัส) – ใช้เรียกพ่อมดหรือแม่มดที่สามารถแปลงร่างเป็นสัตว์ได้', 'https://youtu.be/hoMZ4FNTSGM?si=QmrOdH0h9bgMVUeU', '2024-09-06 14:04:46', '2024-09-11 06:16:30'),
(5, 16, 'ลิมิตของฟังก์ชัน', 'เป็นการพิจารณาลิมิตของฟังก์ชันทั้งทางซ้ายและลิมิตทางขวา ของจำนวนจริงจำนวนหนึ่ง', 'https://youtu.be/smWxejU7AjM?si=6kpRx80UceZtTGTp', '2024-09-07 06:16:43', '2024-09-07 06:16:43'),
(6, 16, 'ความต่อเนื่องของฟังก์ชัน', 'สู้ๆนะคะ', 'https://youtu.be/smWxejU7AjM?si=9nYpi1iG5g5LZzD_', '2024-09-07 06:20:18', '2024-09-07 06:20:18'),
(7, 16, 'อนุพันธ์ของฟังก์ชัน', 'ไม่ยากมั้ง', 'https://youtu.be/smWxejU7AjM?si=9nYpi1iG5g5LZzD_', '2024-09-07 07:00:32', '2024-09-07 07:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `Manage_check`
--

CREATE TABLE `Manage_check` (
  `check_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Manage_check`
--

INSERT INTO `Manage_check` (`check_id`, `payment_id`, `cm_id`) VALUES
(1, 62, 1),
(2, 68, 1),
(3, 69, 1),
(4, 62, 1),
(5, 68, 1),
(6, 69, 1),
(7, 62, 1),
(8, 68, 1),
(9, 69, 1),
(10, 62, 1),
(11, 68, 1),
(12, 69, 1),
(13, 62, 1),
(14, 68, 1),
(15, 69, 1),
(16, 62, 1),
(17, 68, 1),
(18, 69, 1),
(19, 62, 1),
(20, 68, 1),
(21, 69, 1),
(22, 62, 1),
(23, 68, 1),
(24, 69, 1),
(25, 62, 1),
(26, 68, 1),
(27, 69, 1),
(28, 62, 1),
(29, 68, 1),
(30, 69, 1),
(31, 62, 1),
(32, 68, 1),
(33, 69, 1),
(34, 62, 1),
(35, 68, 1),
(36, 69, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Manage_CoursesAndLesson`
--

CREATE TABLE `Manage_CoursesAndLesson` (
  `mc_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `Action` varchar(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Manage_CoursesAndLesson`
--

INSERT INTO `Manage_CoursesAndLesson` (`mc_id`, `manager_id`, `course_id`, `Action`, `time`) VALUES
(1, 1, 12, 'edit_title', '2024-09-08 17:17:24'),
(2, 1, 12, 'Change lesson Name', '2024-09-11 06:16:30'),
(3, 1, 12, 'edit_title', '2024-11-05 12:18:04'),
(4, 1, 12, 'edit_title', '2024-11-05 12:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `payment_id` int(100) NOT NULL,
  `enroll_id` int(100) NOT NULL,
  `Ddate` varchar(100) NOT NULL,
  `Ttime` varchar(100) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`payment_id`, `enroll_id`, `Ddate`, `Ttime`, `file_name`, `uploaded_on`) VALUES
(62, 33, '2024-09-09', '12:30', 'hh.png', '2024-09-08 20:39:43'),
(68, 41, '2024-09-11', '18:35', 'slip2.png', '2024-09-11 18:44:35'),
(69, 59, '2024-11-05', '12:30', '1730775407936.png', '2024-11-05 18:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `stu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(225) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`stu_id`, `user_id`, `filename`, `uploaded_on`, `status`) VALUES
(1, 6, 'tutor3.png', '2024-09-07 15:07:54', '1'),
(3, 7, 'kk.png', '2024-09-07 15:23:45', '1'),
(4, 9, 'unknow.png', '2024-11-05 11:30:33', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `user_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','instructor','course_manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`user_id`, `username`, `fname`, `lname`, `email`, `password`, `role`) VALUES
(2, 'khim', 'กอบุญ', 'ศุกระกาญจน์', '65050046@kmitl.ac.th', '$2y$10$mXyHI5PgTESgkJG7iMgGwOBef9THr7Sr/AHcSdcim.u.H5W.i9S5u', 'instructor'),
(3, '', 'ขิม', 'คนที่1', 'cosecggirl@gmail.com', '$2y$10$HjL3b8TvH6.tDN02BPZdBu1ExpBUmROAoLHHNPCLJFCfsxNezrUNa', 'student'),
(4, 'Prawta', '', '', '65050256@kmitl.ac.th', '$2y$10$u/hnIjse/wVAdi3maVaJJO1Lyc7Rpp9SeNu8m2vTjlLllK0VhKRyK', 'instructor'),
(5, 'Singha', 'สิงหา', 'แมวเองคับ', 'singhacat@gmail.com', '$2y$10$.3zd0dpOQd2abcGkIK12JeUFzlMSzyM0Sqh5HYudoDmraSZBR4MVS', 'instructor'),
(6, 'khimzaa', 'ชื่อนักเรียน1', 'นามสกุลนักเรียน1', 'cosecglearn@gmail.com', '$2y$10$.PgjfoHSxkPtsc8BG6NFBueIwausvpYT9DCSv3PYMHH6oA3VFIrdi', 'student'),
(7, 'new student', 'lk', '', 'ee@gmail.com', '$2y$10$F2MOqDGCiQjrCc4fgRqJ9.mCv3VivW4FVRcfeSPtuvVw3Lb.LLKb.', 'student'),
(8, 'course_manager1', 'khim', 'susu', 'cc@gmail.com', '$2y$10$MbWX1ZPMEzAtNZ.YXUscierGFInZNtBzOT3OBdI4XlbT.eSjsqsf.', 'course_manager'),
(9, 'tutor3', 'Korbun3', 'Sugragarn', 'tutor3@gmail.com', '$2y$10$Vn1wZtNzqQilswicu.lNCejbBuKOwu6C5L/uZHiNDF61sGAnpdTzW', 'instructor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `FK_Courses_INSTRUCTOR` (`inst_id`);

--
-- Indexes for table `Course_Manager`
--
ALTER TABLE `Course_Manager`
  ADD PRIMARY KEY (`cm_id`),
  ADD KEY `FK_CM_Users` (`user_id`);

--
-- Indexes for table `Enrollment`
--
ALTER TABLE `Enrollment`
  ADD PRIMARY KEY (`enroll_id`),
  ADD KEY `FK_Enrollment_STUDENT` (`stu_id`),
  ADD KEY `FK_Enrollment_Courses` (`course_id`) USING BTREE;

--
-- Indexes for table `INSTRUCTOR`
--
ALTER TABLE `INSTRUCTOR`
  ADD PRIMARY KEY (`inst_id`),
  ADD KEY `FK_INSTRUCTOR_Users` (`user_id`);

--
-- Indexes for table `Lessons`
--
ALTER TABLE `Lessons`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `FK_Lessons_Courses` (`course_id`);

--
-- Indexes for table `Manage_check`
--
ALTER TABLE `Manage_check`
  ADD PRIMARY KEY (`check_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `cm_id` (`cm_id`);

--
-- Indexes for table `Manage_CoursesAndLesson`
--
ALTER TABLE `Manage_CoursesAndLesson`
  ADD PRIMARY KEY (`mc_id`),
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `FK_MC_Course` (`course_id`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK_Payment_Enrollment` (`enroll_id`) USING BTREE;

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `FK_STUDENT_Users` (`user_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Courses`
--
ALTER TABLE `Courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Course_Manager`
--
ALTER TABLE `Course_Manager`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Enrollment`
--
ALTER TABLE `Enrollment`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `INSTRUCTOR`
--
ALTER TABLE `INSTRUCTOR`
  MODIFY `inst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Lessons`
--
ALTER TABLE `Lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Manage_check`
--
ALTER TABLE `Manage_check`
  MODIFY `check_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Manage_CoursesAndLesson`
--
ALTER TABLE `Manage_CoursesAndLesson`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `STUDENT`
--
ALTER TABLE `STUDENT`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Courses`
--
ALTER TABLE `Courses`
  ADD CONSTRAINT `FK_Courses_INSTRUCTOR` FOREIGN KEY (`inst_id`) REFERENCES `INSTRUCTOR` (`inst_id`);

--
-- Constraints for table `Course_Manager`
--
ALTER TABLE `Course_Manager`
  ADD CONSTRAINT `FK_CM_Users` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);

--
-- Constraints for table `Enrollment`
--
ALTER TABLE `Enrollment`
  ADD CONSTRAINT `FK_Enrollment_Courses` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`),
  ADD CONSTRAINT `FK_Enrollment_STUDENT` FOREIGN KEY (`stu_id`) REFERENCES `STUDENT` (`stu_id`);

--
-- Constraints for table `INSTRUCTOR`
--
ALTER TABLE `INSTRUCTOR`
  ADD CONSTRAINT `FK_INSTRUCTOR_Users` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);

--
-- Constraints for table `Lessons`
--
ALTER TABLE `Lessons`
  ADD CONSTRAINT `FK_Lessons_Courses` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`);

--
-- Constraints for table `Manage_check`
--
ALTER TABLE `Manage_check`
  ADD CONSTRAINT `FK_check_cm` FOREIGN KEY (`cm_id`) REFERENCES `Course_Manager` (`cm_id`),
  ADD CONSTRAINT `FK_check_payment` FOREIGN KEY (`payment_id`) REFERENCES `Payment` (`payment_id`);

--
-- Constraints for table `Manage_CoursesAndLesson`
--
ALTER TABLE `Manage_CoursesAndLesson`
  ADD CONSTRAINT `FK_MC_CM` FOREIGN KEY (`manager_id`) REFERENCES `Course_Manager` (`cm_id`),
  ADD CONSTRAINT `FK_MC_Course` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`);

--
-- Constraints for table `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `FK_Payment_Enroll` FOREIGN KEY (`enroll_id`) REFERENCES `Enrollment` (`enroll_id`);

--
-- Constraints for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD CONSTRAINT `FK_STUDENT_Users` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
