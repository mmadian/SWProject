-- MySQL dump 10.13  Distrib 5.6.10, for osx10.7 (x86_64)
--
-- Host: localhost    Database: master_degree_system_development
-- ------------------------------------------------------
-- Server version	5.6.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course_classes`
--

DROP TABLE IF EXISTS `course_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseClassName` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_course_classes_on_creator_id` (`creator_id`),
  KEY `index_course_classes_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_classes`
--

LOCK TABLES `course_classes` WRITE;
/*!40000 ALTER TABLE `course_classes` DISABLE KEYS */;
INSERT INTO `course_classes` VALUES (1,'Hardware',NULL,NULL,'2015-12-18 18:47:46','2015-12-18 18:47:46'),(2,'Software',NULL,NULL,'2015-12-18 18:47:54','2015-12-18 18:47:54'),(3,'Control',NULL,NULL,'2015-12-18 18:48:02','2015-12-18 18:48:02'),(4,'Application',NULL,NULL,'2015-12-18 18:48:09','2015-12-18 18:48:09');
/*!40000 ALTER TABLE `course_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `CourseClass_id` int(11) DEFAULT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `credit_hours` int(11) DEFAULT NULL,
  `total_grade` float DEFAULT NULL,
  `min_number_of_student` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_courses_on_creator_id` (`creator_id`),
  KEY `index_courses_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Software Engineering',NULL,NULL,'2015-12-07 18:54:15','2016-01-16 20:09:38',NULL,'123412',3,100,5),(2,'Data Mining',NULL,NULL,'2016-01-09 18:35:17','2016-01-11 21:37:07',NULL,'1111',3,100,20),(3,'Security',NULL,NULL,'2016-01-16 20:10:03','2016-01-16 20:10:03',NULL,'1234567',3,100,10),(4,'Simulation',NULL,NULL,'2016-01-16 20:10:28','2016-01-16 20:10:28',NULL,'123456',3,100,20);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_departments_on_creator_id` (`creator_id`),
  KEY `index_departments_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Computer Software Engineering',NULL,NULL,'2016-01-10 20:31:55','2016-01-16 19:28:08');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_faculties_on_creator_id` (`creator_id`),
  KEY `index_faculties_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (1,'Faculty of Engineering',NULL,NULL,'2016-01-10 20:31:36','2016-01-10 21:09:20');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_classes`
--

DROP TABLE IF EXISTS `grade_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grade_classes_on_creator_id` (`creator_id`),
  KEY `index_grade_classes_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_classes`
--

LOCK TABLES `grade_classes` WRITE;
/*!40000 ALTER TABLE `grade_classes` DISABLE KEYS */;
INSERT INTO `grade_classes` VALUES (1,'A',NULL,NULL,NULL,NULL),(2,'A-',NULL,NULL,NULL,NULL),(3,'B+',NULL,NULL,NULL,NULL),(4,'B',NULL,NULL,NULL,NULL),(5,'B-',NULL,NULL,NULL,NULL),(6,'C',NULL,NULL,NULL,NULL),(7,'FW',NULL,NULL,NULL,NULL),(8,'I',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `grade_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege_group_roles`
--

DROP TABLE IF EXISTS `privilege_group_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege_group_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilegeGroup_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_privilege_group_roles_on_privilegeGroup_id` (`privilegeGroup_id`),
  KEY `index_privilege_group_roles_on_role_id` (`role_id`),
  KEY `index_privilege_group_roles_on_creator_id` (`creator_id`),
  KEY `index_privilege_group_roles_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege_group_roles`
--

LOCK TABLES `privilege_group_roles` WRITE;
/*!40000 ALTER TABLE `privilege_group_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilege_group_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege_groups`
--

DROP TABLE IF EXISTS `privilege_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_privilege_groups_on_creator_id` (`creator_id`),
  KEY `index_privilege_groups_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege_groups`
--

LOCK TABLES `privilege_groups` WRITE;
/*!40000 ALTER TABLE `privilege_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilege_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_program_class_courses`
--

DROP TABLE IF EXISTS `professor_program_class_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor_program_class_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `professor_id` int(11) DEFAULT NULL,
  `programClassSemesterCourse_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_professor_program_class_courses_on_professor_id` (`professor_id`),
  KEY `index_professor_program_class_courses_on_creator_id` (`creator_id`),
  KEY `index_professor_program_class_courses_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_program_class_courses`
--

LOCK TABLES `professor_program_class_courses` WRITE;
/*!40000 ALTER TABLE `professor_program_class_courses` DISABLE KEYS */;
INSERT INTO `professor_program_class_courses` VALUES (8,2,8,2,NULL,'2016-01-16 18:47:12','2016-01-16 18:47:12'),(9,3,8,2,NULL,'2016-01-16 18:47:12','2016-01-16 18:47:12');
/*!40000 ALTER TABLE `professor_program_class_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_titles`
--

DROP TABLE IF EXISTS `professor_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor_titles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_professor_titles_on_creator_id` (`creator_id`),
  KEY `index_professor_titles_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_titles`
--

LOCK TABLES `professor_titles` WRITE;
/*!40000 ALTER TABLE `professor_titles` DISABLE KEYS */;
INSERT INTO `professor_titles` VALUES (1,'Assistant Doctor',NULL,NULL,NULL,NULL),(2,'Doctor',NULL,NULL,NULL,NULL),(3,'Assistant Professor Doctor',NULL,NULL,NULL,NULL),(4,'Professor Doctor',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `professor_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `professorTitle_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_professors_on_user_id` (`user_id`),
  KEY `index_professors_on_professorTitle_id` (`professorTitle_id`),
  KEY `index_professors_on_creator_id` (`creator_id`),
  KEY `index_professors_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (2,3,NULL,2,NULL,'2016-01-09 19:50:57','2016-01-09 19:50:57'),(3,4,NULL,2,NULL,'2016-01-09 19:54:22','2016-01-09 19:54:22'),(4,9,NULL,6,NULL,'2016-01-16 20:16:03','2016-01-16 20:16:03');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_class_semester_courses`
--

DROP TABLE IF EXISTS `program_class_semester_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_class_semester_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specificCourseName` varchar(255) DEFAULT NULL,
  `minimamNumberOfStudent` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `CourseClass_id` int(11) DEFAULT NULL,
  `ProgramClass_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `directedReading` tinyint(1) DEFAULT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `credit_hours` int(11) DEFAULT NULL,
  `total_grade` float DEFAULT NULL,
  `min_number_of_student` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_program_class_semester_courses_on_course_id` (`course_id`),
  KEY `index_program_class_semester_courses_on_semester_id` (`semester_id`),
  KEY `index_program_class_semester_courses_on_CourseClass_id` (`CourseClass_id`),
  KEY `index_program_class_semester_courses_on_ProgramClass_id` (`ProgramClass_id`),
  KEY `index_program_class_semester_courses_on_creator_id` (`creator_id`),
  KEY `index_program_class_semester_courses_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_class_semester_courses`
--

LOCK TABLES `program_class_semester_courses` WRITE;
/*!40000 ALTER TABLE `program_class_semester_courses` DISABLE KEYS */;
INSERT INTO `program_class_semester_courses` VALUES (8,'Software Engineering',NULL,1,1,2,1,2016,0,'123412',NULL,NULL,'2016-01-16 18:47:12','2016-01-16 20:22:13',3,100,5),(9,'Simulation',NULL,4,1,3,1,2016,0,'123456',NULL,NULL,'2016-01-16 20:16:30','2016-01-16 20:16:30',3,100,20);
/*!40000 ALTER TABLE `program_class_semester_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_class_statuses`
--

DROP TABLE IF EXISTS `program_class_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_class_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programClass_id` int(11) DEFAULT NULL,
  `preProgramClass_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_program_class_statuses_on_programClass_id` (`programClass_id`),
  KEY `index_program_class_statuses_on_preProgramClass_id` (`preProgramClass_id`),
  KEY `index_program_class_statuses_on_creator_id` (`creator_id`),
  KEY `index_program_class_statuses_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_class_statuses`
--

LOCK TABLES `program_class_statuses` WRITE;
/*!40000 ALTER TABLE `program_class_statuses` DISABLE KEYS */;
INSERT INTO `program_class_statuses` VALUES (1,1,NULL,'Accepted',NULL,NULL,NULL,NULL),(2,1,NULL,'Rejected',NULL,NULL,NULL,NULL),(3,1,NULL,'FinishedSeminar',NULL,NULL,NULL,NULL),(4,1,NULL,'ExtensionAccepted',NULL,NULL,NULL,NULL),(5,1,NULL,'ExtensionRejected',NULL,NULL,NULL,NULL),(6,1,NULL,'FinishedDefense',NULL,NULL,NULL,NULL),(7,1,NULL,'ProgramCompleted',NULL,NULL,NULL,NULL),(8,1,NULL,'Deleted',NULL,NULL,NULL,NULL),(9,1,NULL,'FinishedQualifyingExam',NULL,NULL,NULL,NULL),(10,1,NULL,'RemovalAcceptance',NULL,NULL,NULL,NULL),(11,1,NULL,'ConvertingFromContinuingStudies',NULL,NULL,NULL,NULL),(12,1,NULL,'RefereeCommitteeIsMade',NULL,NULL,NULL,NULL),(13,1,NULL,'DeptAcceptanceOnMakingCommitte',NULL,NULL,NULL,NULL),(14,1,NULL,'CollegeAcceptanceOnMakingCommitte',NULL,NULL,NULL,NULL),(15,1,NULL,'UniversityAcceptanceOnMakingCommitte',NULL,NULL,NULL,NULL),(16,1,NULL,'MessageOfReservingLectureHall',NULL,NULL,NULL,NULL),(17,1,NULL,'DeptAcceptanceOnGivingGrade',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `program_class_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_classes`
--

DROP TABLE IF EXISTS `program_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `extensionPeriod` int(11) DEFAULT NULL,
  `numberOfCourses` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_program_classes_on_creator_id` (`creator_id`),
  KEY `index_program_classes_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_classes`
--

LOCK TABLES `program_classes` WRITE;
/*!40000 ALTER TABLE `program_classes` DISABLE KEYS */;
INSERT INTO `program_classes` VALUES (1,'Master',4,NULL,8,NULL,NULL,NULL,NULL),(2,'PhD',5,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Continuing Study',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Complementary Courses Phase',1,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Special Programs',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `program_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_creator_id` (`creator_id`),
  KEY `index_roles_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20151207182415'),('20151207182417'),('20151207182419'),('20151207182420'),('20151207182422'),('20151207182424'),('20151207182425'),('20151207182427'),('20151207182429'),('20151207182431'),('20151207182432'),('20151207182434'),('20151207182436'),('20151207182438'),('20151207182439'),('20151207182441'),('20151207182443'),('20151207182444'),('20151207182446'),('20151207182448'),('20151207182450'),('20151207182451'),('20151207182453'),('20151207182455'),('20151207182457'),('20151207182458'),('20151207182500'),('20151207182502'),('20151207182508'),('20151218181222'),('20160109183825'),('20160109202118'),('20160110211229'),('20160113183859'),('20160116160652'),('20160120200218');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sci_degree_classes`
--

DROP TABLE IF EXISTS `sci_degree_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sci_degree_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sci_degree_classes_on_creator_id` (`creator_id`),
  KEY `index_sci_degree_classes_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sci_degree_classes`
--

LOCK TABLES `sci_degree_classes` WRITE;
/*!40000 ALTER TABLE `sci_degree_classes` DISABLE KEYS */;
INSERT INTO `sci_degree_classes` VALUES (1,'Bachelor of Science',NULL,NULL,NULL,NULL),(2,'Master of Science',NULL,NULL,NULL,NULL),(3,'Diploma of graduate studies',NULL,NULL,NULL,NULL),(4,'PhD',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sci_degree_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semesters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semesterName` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_semesters_on_creator_id` (`creator_id`),
  KEY `index_semesters_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (1,'Fall',NULL,NULL,NULL,NULL),(2,'Summer',NULL,NULL,NULL,NULL),(3,'Spring',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_program_courses`
--

DROP TABLE IF EXISTS `student_program_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_program_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programClassSemesterCourse_id` int(11) DEFAULT NULL,
  `studentProgram_id` int(11) DEFAULT NULL,
  `gradeClass_id` int(11) DEFAULT NULL,
  `subscriptionDate` date DEFAULT NULL,
  `gradeValue` float DEFAULT NULL,
  `isComplementaryCourse` tinyint(1) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_program_courses_on_programClassSemesterCourse_id` (`programClassSemesterCourse_id`),
  KEY `index_student_program_courses_on_studentProgram_id` (`studentProgram_id`),
  KEY `index_student_program_courses_on_gradeClass_id` (`gradeClass_id`),
  KEY `index_student_program_courses_on_creator_id` (`creator_id`),
  KEY `index_student_program_courses_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_program_courses`
--

LOCK TABLES `student_program_courses` WRITE;
/*!40000 ALTER TABLE `student_program_courses` DISABLE KEYS */;
INSERT INTO `student_program_courses` VALUES (5,8,2,1,'2016-01-16',100,1,NULL,NULL,'2016-01-16 19:05:52','2016-01-16 19:05:52'),(7,8,1,1,'2016-01-22',NULL,0,NULL,NULL,'2016-01-22 16:47:33','2016-01-22 16:47:33');
/*!40000 ALTER TABLE `student_program_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_program_giving_grades`
--

DROP TABLE IF EXISTS `student_program_giving_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_program_giving_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentProgram_id` int(11) DEFAULT NULL,
  `seminarDate` date DEFAULT NULL,
  `hasThesisTitle` tinyint(1) DEFAULT NULL,
  `finalReportOnGoodnessOfThesis` tinyint(1) DEFAULT NULL,
  `refereeMakingSuggestion` tinyint(1) DEFAULT NULL,
  `refreeComitteeMade` tinyint(1) DEFAULT NULL,
  `thesisTitleArabic` varchar(255) DEFAULT NULL,
  `thiesisTitleEnglish` varchar(255) DEFAULT NULL,
  `thesisGeneralField` varchar(255) DEFAULT NULL,
  `thesisSpecificField` varchar(255) DEFAULT NULL,
  `thesisAbstract` tinyint(1) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_program_giving_grades_on_studentProgram_id` (`studentProgram_id`),
  KEY `index_student_program_giving_grades_on_creator_id` (`creator_id`),
  KEY `index_student_program_giving_grades_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_program_giving_grades`
--

LOCK TABLES `student_program_giving_grades` WRITE;
/*!40000 ALTER TABLE `student_program_giving_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_program_giving_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_program_professors`
--

DROP TABLE IF EXISTS `student_program_professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_program_professors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentProgram_id` int(11) DEFAULT NULL,
  `professor_id` int(11) DEFAULT NULL,
  `isPrimary` tinyint(1) DEFAULT NULL,
  `isDefenseCommitee` tinyint(1) DEFAULT NULL,
  `comment` text,
  `additionDate` date DEFAULT NULL,
  `isAccepted` tinyint(1) DEFAULT NULL,
  `acceptanceDate` date DEFAULT NULL,
  `isExternal` tinyint(1) DEFAULT NULL,
  `hasReceivedIndivdualReport` tinyint(1) DEFAULT NULL,
  `hasReceivedCollectiveReport` tinyint(1) DEFAULT NULL,
  `hasReceivedSatisfactionReport` tinyint(1) DEFAULT NULL,
  `isCommitteeHead` tinyint(1) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_program_professors_on_studentProgram_id` (`studentProgram_id`),
  KEY `index_student_program_professors_on_professor_id` (`professor_id`),
  KEY `index_student_program_professors_on_creator_id` (`creator_id`),
  KEY `index_student_program_professors_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_program_professors`
--

LOCK TABLES `student_program_professors` WRITE;
/*!40000 ALTER TABLE `student_program_professors` DISABLE KEYS */;
INSERT INTO `student_program_professors` VALUES (3,1,2,1,0,'','2016-01-16',0,'2016-01-16',0,0,0,0,0,NULL,NULL,'2016-01-16 19:45:48','2016-01-16 19:45:48'),(4,1,3,0,0,'','2016-01-16',0,'2016-01-16',0,0,0,0,0,NULL,NULL,'2016-01-16 19:46:11','2016-01-16 20:03:23'),(5,2,3,1,0,'','2016-01-19',0,'2016-01-19',0,0,0,0,0,NULL,NULL,'2016-01-19 19:11:35','2016-01-19 19:11:35');
/*!40000 ALTER TABLE `student_program_professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_program_status_histories`
--

DROP TABLE IF EXISTS `student_program_status_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_program_status_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentProgram_id` int(11) DEFAULT NULL,
  `programClassStatus_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comments` text,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_program_status_histories_on_studentProgram_id` (`studentProgram_id`),
  KEY `index_student_program_status_histories_on_programClassStatus_id` (`programClassStatus_id`),
  KEY `index_student_program_status_histories_on_creator_id` (`creator_id`),
  KEY `index_student_program_status_histories_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_program_status_histories`
--

LOCK TABLES `student_program_status_histories` WRITE;
/*!40000 ALTER TABLE `student_program_status_histories` DISABLE KEYS */;
INSERT INTO `student_program_status_histories` VALUES (1,1,1,'2016-01-16','',NULL,NULL,'2016-01-16 20:11:19','2016-01-16 20:11:19'),(2,3,2,'2016-01-20','',NULL,NULL,'2016-01-20 19:32:41','2016-01-20 19:32:41');
/*!40000 ALTER TABLE `student_program_status_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_program_warning_histories`
--

DROP TABLE IF EXISTS `student_program_warning_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_program_warning_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentProgram_id` int(11) DEFAULT NULL,
  `warning` text,
  `date` date DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_program_warning_histories_on_studentProgram_id` (`studentProgram_id`),
  KEY `index_student_program_warning_histories_on_creator_id` (`creator_id`),
  KEY `index_student_program_warning_histories_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_program_warning_histories`
--

LOCK TABLES `student_program_warning_histories` WRITE;
/*!40000 ALTER TABLE `student_program_warning_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_program_warning_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_programs`
--

DROP TABLE IF EXISTS `student_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `ProgramClass_id` int(11) DEFAULT NULL,
  `finishedToefl` tinyint(1) DEFAULT NULL,
  `toeflDate` date DEFAULT NULL,
  `hasResearchPoint` tinyint(1) DEFAULT NULL,
  `puplishedAPaper` tinyint(1) DEFAULT NULL,
  `programStartDate` date DEFAULT NULL,
  `isVTMENAprogram` tinyint(1) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_programs_on_student_id` (`student_id`),
  KEY `index_student_programs_on_ProgramClass_id` (`ProgramClass_id`),
  KEY `index_student_programs_on_creator_id` (`creator_id`),
  KEY `index_student_programs_on_modifier_id` (`modifier_id`),
  KEY `index_student_programs_on_semester_id` (`semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_programs`
--

LOCK TABLES `student_programs` WRITE;
/*!40000 ALTER TABLE `student_programs` DISABLE KEYS */;
INSERT INTO `student_programs` VALUES (1,1,1,1,'2016-01-02',0,0,'2015-10-10',1,NULL,NULL,'2016-01-10 20:35:48','2016-01-20 18:56:04',NULL),(2,2,1,0,'2016-01-16',1,0,'2016-01-16',0,NULL,NULL,'2016-01-16 17:18:38','2016-01-20 20:23:15',1),(3,4,1,1,'2016-01-20',0,0,'2016-01-20',0,NULL,NULL,'2016-01-20 19:32:28','2016-01-20 19:32:28',NULL);
/*!40000 ALTER TABLE `student_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_sci_degree_grades`
--

DROP TABLE IF EXISTS `student_sci_degree_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_sci_degree_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentSciDegree_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_sci_degree_grades_on_studentSciDegree_id` (`studentSciDegree_id`),
  KEY `index_student_sci_degree_grades_on_creator_id` (`creator_id`),
  KEY `index_student_sci_degree_grades_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_sci_degree_grades`
--

LOCK TABLES `student_sci_degree_grades` WRITE;
/*!40000 ALTER TABLE `student_sci_degree_grades` DISABLE KEYS */;
INSERT INTO `student_sci_degree_grades` VALUES (2,1,2015,100,NULL,NULL,'2016-01-10 21:26:43','2016-01-10 21:26:43','Prep'),(3,1,2005,100,NULL,NULL,'2016-01-10 21:27:01','2016-01-10 21:27:01','First year'),(4,3,2010,100,NULL,NULL,'2016-01-16 16:48:54','2016-01-16 17:13:23','Prep'),(5,3,2011,99,NULL,NULL,'2016-01-16 17:16:15','2016-01-16 17:16:15','First year');
/*!40000 ALTER TABLE `student_sci_degree_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_sci_degrees`
--

DROP TABLE IF EXISTS `student_sci_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_sci_degrees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SciDegreeClass_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `graduationYear` int(11) DEFAULT NULL,
  `fieldOfResearch` varchar(255) DEFAULT NULL,
  `gpa` float DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_sci_degrees_on_SciDegreeClass_id` (`SciDegreeClass_id`),
  KEY `index_student_sci_degrees_on_student_id` (`student_id`),
  KEY `index_student_sci_degrees_on_university_id` (`university_id`),
  KEY `index_student_sci_degrees_on_faculty_id` (`faculty_id`),
  KEY `index_student_sci_degrees_on_department_id` (`department_id`),
  KEY `index_student_sci_degrees_on_creator_id` (`creator_id`),
  KEY `index_student_sci_degrees_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_sci_degrees`
--

LOCK TABLES `student_sci_degrees` WRITE;
/*!40000 ALTER TABLE `student_sci_degrees` DISABLE KEYS */;
INSERT INTO `student_sci_degrees` VALUES (1,1,1,1,1,1,2015,'SW',3.5,NULL,NULL,'2016-01-10 20:34:04','2016-01-20 18:40:23'),(2,1,1,1,1,1,2006,'unknown',4,NULL,NULL,'2016-01-13 18:57:53','2016-01-20 18:41:27'),(3,1,2,1,1,1,2015,'',NULL,NULL,NULL,'2016-01-16 16:44:18','2016-01-20 18:42:04');
/*!40000 ALTER TABLE `student_sci_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_students_on_user_id` (`user_id`),
  KEY `index_students_on_creator_id` (`creator_id`),
  KEY `index_students_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,5,2,NULL,'2016-01-10 19:51:50','2016-01-10 19:51:50'),(2,8,5,NULL,'2016-01-13 18:24:40','2016-01-13 18:24:40'),(4,11,2,NULL,'2016-01-20 19:31:21','2016-01-20 19:31:21');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universities`
--

DROP TABLE IF EXISTS `universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_universities_on_creator_id` (`creator_id`),
  KEY `index_universities_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universities`
--

LOCK TABLES `universities` WRITE;
/*!40000 ALTER TABLE `universities` DISABLE KEYS */;
INSERT INTO `universities` VALUES (1,'Alexandria University',NULL,NULL,'2016-01-10 20:31:19','2016-01-10 21:08:53'),(2,'Cairo University',NULL,NULL,'2016-01-16 19:27:04','2016-01-16 19:27:04'),(3,'Helwan University',NULL,NULL,'2016-01-16 19:27:16','2016-01-16 19:27:16');
/*!40000 ALTER TABLE `universities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_privilege_group_roles`
--

DROP TABLE IF EXISTS `user_privilege_group_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_privilege_group_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `privilegeGroupRole_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_privilege_group_roles_on_user_id` (`user_id`),
  KEY `index_user_privilege_group_roles_on_privilegeGroupRole_id` (`privilegeGroupRole_id`),
  KEY `index_user_privilege_group_roles_on_role_id` (`role_id`),
  KEY `index_user_privilege_group_roles_on_creator_id` (`creator_id`),
  KEY `index_user_privilege_group_roles_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_privilege_group_roles`
--

LOCK TABLES `user_privilege_group_roles` WRITE;
/*!40000 ALTER TABLE `user_privilege_group_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_privilege_group_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_types_on_creator_id` (`creator_id`),
  KEY `index_user_types_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'Professor',NULL,NULL,'2015-12-18 18:45:27','2015-12-18 18:45:27'),(2,'Student',NULL,NULL,'2015-12-18 18:45:37','2015-12-18 18:45:37'),(3,'Employee',NULL,NULL,'2015-12-18 18:45:46','2015-12-18 18:45:46');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userType_id` int(11) DEFAULT NULL,
  `nationalID` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_userType_id` (`userType_id`),
  KEY `index_users_on_creator_id` (`creator_id`),
  KEY `index_users_on_modifier_id` (`modifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,NULL,'','','','','',NULL,NULL,'2015-12-19 08:51:19','2016-01-22 16:08:40','admin@gss.com','$2a$10$GwhCU90vSt4hTXRjo3ITTOoPGabYT6ZXa3zyN/xvjw/xp056fyOh.',NULL,NULL,'2016-01-13 18:01:17',14,'2016-01-22 16:08:40','2016-01-20 17:10:11','127.0.0.1','127.0.0.1'),(3,1,'123123','Prof Mohamed AbouGabal','','010','0344',NULL,NULL,'2016-01-09 19:50:57','2016-01-16 19:37:09','asd@asd.com','$2a$10$6QrCuhAhz4vXcdfj71FVOe83/IvEii.brkH.9qRKJdQ5/lgDJS5a.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(4,1,'123123123','Prof Ayman','','010','0344',NULL,NULL,'2016-01-09 19:54:22','2016-01-09 19:54:22','qwe@qwe.com','$2a$10$9S.1pUQGTkAmGzFJoVH7Lu666o9wbRIdZMndgK23yuV/twffDT.o2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(5,2,'123456789','Samar AboZeed','','123456','',NULL,NULL,'2016-01-13 18:02:38','2016-01-13 18:12:16','samar.abozeed@s.com','$2a$10$64AAZ69TXGqrzlrdQyoZG.YfEA0fJFJRzGYa0beXp4KRj7LPie3/y',NULL,NULL,NULL,3,'2016-01-13 18:12:16','2016-01-13 18:07:27','172.16.16.73','172.16.16.73'),(6,2,'1234567','Ahmed Badie','','+201125118018','+201125118018',NULL,NULL,'2016-01-10 21:02:24','2016-01-16 19:00:14','ahmedbadie2005@gmail.com','$2a$10$ZNTicMeTKKw8P/6fR8Thf.V5uFKyz9GZsGohCd9vN1YEkUG7fsWAm',NULL,NULL,'2016-01-10 21:03:19',4,'2016-01-16 19:00:14','2016-01-10 21:03:54','192.168.100.125','172.16.16.54'),(8,2,'12345678','Mohamed','','123','123',NULL,NULL,'2016-01-13 18:24:40','2016-01-13 18:24:40','mohamed@m.com','$2a$10$PLN7yXsNp1Rw6SboZ0F2Get.mTNfnsd.onXYuJZhyNeZ8VgfnSaaq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(9,1,'1234567','Prof Soheir','','113134','134134',NULL,NULL,'2016-01-16 20:16:03','2016-01-16 20:16:03','ad@adf.com','$2a$10$7IzaVf9jSLI775gIxuehu.U9x4ohb4Ewg5Oxo8Zi5Ee0FtMY1kuwa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(11,2,'123123','to_be_deleted','','010','0344',NULL,NULL,'2016-01-20 19:31:21','2016-01-20 19:31:21','a@s.d','$2a$10$6R/cR/BqGc1N3JO5t2vLrO6dProxPm9c.4UrcJWWwhiiiNDIsQBzq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-22 21:52:16
