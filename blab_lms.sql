-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: bridgelabz_lms
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `CandidateBankDetails`
--

DROP TABLE IF EXISTS `CandidateBankDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateBankDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `account_number` bigint(20) NOT NULL,
  `account_number_verified` tinyint(1) NOT NULL,
  `ifsc_code` varchar(10) NOT NULL,
  `is_ifsc_code_verified` tinyint(1) DEFAULT NULL,
  `pan_number` varchar(10) NOT NULL,
  `pan_number_verified` tinyint(1) NOT NULL,
  `addhaar_number` bigint(20) NOT NULL,
  `is_adhaar_number_verified` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `CandidateBankDetails_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `HiredCandidate` (`id`),
  CONSTRAINT `CandidateBankDetails_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidateBankDetails`
--

LOCK TABLES `CandidateBankDetails` WRITE;
/*!40000 ALTER TABLE `CandidateBankDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateBankDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidateDocuments`
--

DROP TABLE IF EXISTS `CandidateDocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateDocuments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `doc_type` varchar(10) NOT NULL,
  `doc_path` varchar(50) NOT NULL,
  `doc_status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `CandidateDocuments_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `HiredCandidate` (`id`),
  CONSTRAINT `CandidateDocuments_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidateDocuments`
--

LOCK TABLES `CandidateDocuments` WRITE;
/*!40000 ALTER TABLE `CandidateDocuments` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateDocuments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidateQualification`
--

DROP TABLE IF EXISTS `CandidateQualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateQualification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `diploma` varchar(20) NOT NULL,
  `degree_name` varchar(25) NOT NULL,
  `is_degree_name_verified` tinyint(1) NOT NULL,
  `employee_discipline` varchar(10) NOT NULL,
  `is_employee_discipline_verified` tinyint(1) NOT NULL,
  `passing_year` int(11) NOT NULL,
  `is_passing_year_verified` tinyint(1) NOT NULL,
  `aggregate_percentage` double(4,2) NOT NULL,
  `final_year_percentage` double(4,2) NOT NULL,
  `is_final_year_per_verified` tinyint(1) NOT NULL,
  `training_institute` varchar(50) NOT NULL,
  `is_training_institute_verified` tinyint(1) NOT NULL,
  `training_duration_month` int(11) NOT NULL,
  `is_training_duration_month_verified` tinyint(1) NOT NULL,
  `other_training` varchar(30) NOT NULL,
  `is_other_training_verified` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `CandidateQualification_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `HiredCandidate` (`id`),
  CONSTRAINT `CandidateQualification_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidateQualification`
--

LOCK TABLES `CandidateQualification` WRITE;
/*!40000 ALTER TABLE `CandidateQualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateQualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidateTechStackAssignment`
--

DROP TABLE IF EXISTS `CandidateTechStackAssignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateTechStackAssignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requirement_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `assign_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requirement_id` (`requirement_id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `CandidateTechStackAssignment_ibfk_1` FOREIGN KEY (`requirement_id`) REFERENCES `CompanyRequirement` (`id`),
  CONSTRAINT `CandidateTechStackAssignment_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `HiredCandidate` (`id`),
  CONSTRAINT `CandidateTechStackAssignment_ibfk_3` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidateTechStackAssignment`
--

LOCK TABLES `CandidateTechStackAssignment` WRITE;
/*!40000 ALTER TABLE `CandidateTechStackAssignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateTechStackAssignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(70) NOT NULL,
  `location` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Company_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CompanyRequirement`
--

DROP TABLE IF EXISTS `CompanyRequirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyRequirement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `requested_month` date NOT NULL,
  `city` varchar(15) NOT NULL,
  `is_doc_verification` tinyint(1) NOT NULL,
  `requirement_doc_path` varchar(50) NOT NULL,
  `number_of_engg` int(11) NOT NULL,
  `tech_stack_id` int(11) NOT NULL,
  `tech_type_id` int(11) NOT NULL,
  `maker_program_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `mentor_ideation_id` int(11) NOT NULL,
  `buddy_engg_id` int(11) NOT NULL,
  `special_remark` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `tech_stack_id` (`tech_stack_id`),
  KEY `tech_type_id` (`tech_type_id`),
  KEY `maker_program_id` (`maker_program_id`),
  KEY `mentor_ideation_id` (`mentor_ideation_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `CompanyRequirement_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `Company` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_2` FOREIGN KEY (`tech_stack_id`) REFERENCES `TechStack` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_3` FOREIGN KEY (`tech_type_id`) REFERENCES `TechType` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_4` FOREIGN KEY (`maker_program_id`) REFERENCES `MakerProgram` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_5` FOREIGN KEY (`mentor_ideation_id`) REFERENCES `MentorIdeationMap` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_6` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompanyRequirement`
--

LOCK TABLES `CompanyRequirement` WRITE;
/*!40000 ALTER TABLE `CompanyRequirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `CompanyRequirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FellowshipCandidate`
--

DROP TABLE IF EXISTS `FellowshipCandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FellowshipCandidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `hired_city` varchar(20) NOT NULL,
  `degree` varchar(20) NOT NULL,
  `hired_date` date DEFAULT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `permanent_pincode` bigint(20) NOT NULL,
  `hired_lab` varchar(15) NOT NULL,
  `communication_remark` varchar(20) NOT NULL,
  `knowledge_remark` varchar(20) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `is_birth_date_verified` tinyint(1) DEFAULT NULL,
  `parent_name` varchar(30) DEFAULT NULL,
  `parent_occupation` varchar(15) DEFAULT NULL,
  `parents_mobile_number` bigint(20) DEFAULT NULL,
  `parents_annual_salary` bigint(20) DEFAULT NULL,
  `local_address` varchar(70) DEFAULT NULL,
  `permanent_address` varchar(70) DEFAULT NULL,
  `photo_path` varchar(200) DEFAULT NULL,
  `joinig_date` date DEFAULT NULL,
  `candidate_status` varchar(10) DEFAULT NULL,
  `personal_information` varchar(70) DEFAULT NULL,
  `bank_information` varchar(70) DEFAULT NULL,
  `educational_information` varchar(70) DEFAULT NULL,
  `document_status` varchar(20) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `aggregate_percentage` double(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FellowshipCandidate`
--

LOCK TABLES `FellowshipCandidate` WRITE;
/*!40000 ALTER TABLE `FellowshipCandidate` DISABLE KEYS */;
INSERT INTO `FellowshipCandidate` VALUES (2,'Arun','Kumar','arunumar27@gmail.com','Bangalore','BE','2019-11-13',7859080840,834010,'Bangalore','Average','Good','2020-02-26 03:56:48',102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,73.10),(3,'amresh','kumar','amreshkr8521@gmail.com','Bangalore','BE','2019-11-13',7987668236,834010,'Bangalore','Good','Good','2020-02-24 06:36:32',102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64.44),(4,'bikash','Monhanty','bikashmohanty1212gmail.com','Bangalore','BE','2019-11-13',7008059547,265474,'Bangalore','Good','Good','2020-02-24 06:37:30',102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,79.45),(5,'Arvind','Kumar','amarvind16116@gmail.com','Bangalore','Btech','2019-11-25',9818104950,121004,'Bangalore','Good','Good','2020-02-26 04:13:32',102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60.45);
/*!40000 ALTER TABLE `FellowshipCandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HiredCandidate`
--

DROP TABLE IF EXISTS `HiredCandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HiredCandidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `email_id` varchar(60) DEFAULT NULL,
  `hired_city` varchar(20) NOT NULL,
  `degree` varchar(20) NOT NULL,
  `hired_date` date NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `permanent_pincode` bigint(20) NOT NULL,
  `hired_lab` varchar(20) NOT NULL,
  `communication_remark` varchar(20) NOT NULL,
  `knowledge_remark` varchar(20) NOT NULL,
  `aggregate_percentage` double(4,2) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HiredCandidate`
--

LOCK TABLES `HiredCandidate` WRITE;
/*!40000 ALTER TABLE `HiredCandidate` DISABLE KEYS */;
INSERT INTO `HiredCandidate` VALUES (2,'Arun','Kumar','arunumar27@gmail.com','Bangalore','BE','2019-11-13',7859080840,834010,'Bangalore','Average','Good',73.10,'2020-02-26 03:56:48',102),(3,'amresh','kumar','amreshkr8521@gmail.com','Bangalore','BE','2019-11-13',7987668236,834010,'Bangalore','Good','Good',64.44,'2020-02-24 06:36:32',102),(4,'bikash','Monhanty','bikashmohanty1212gmail.com','Bangalore','BE','2019-11-13',7008059547,265474,'Bangalore','Good','Good',79.45,'2020-02-24 06:37:30',102),(5,'Arvind','Kumar','amarvind16116@gmail.com','Bangalore','Btech','2019-11-25',9818104950,121004,'Bangalore','Good','Good',60.45,'2020-02-26 04:13:32',102);
/*!40000 ALTER TABLE `HiredCandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab`
--

DROP TABLE IF EXISTS `Lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `location` varchar(20) NOT NULL,
  `address` varchar(70) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Lab_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab`
--

LOCK TABLES `Lab` WRITE;
/*!40000 ALTER TABLE `Lab` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LabThreshold`
--

DROP TABLE IF EXISTS `LabThreshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LabThreshold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) NOT NULL,
  `lab_capacity` int(11) NOT NULL,
  `lead_threshold` varchar(25) NOT NULL,
  `ideation_engg_threshold` varchar(25) NOT NULL,
  `buddy_engg_threshold` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lab_id` (`lab_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `LabThreshold_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `Lab` (`id`),
  CONSTRAINT `LabThreshold_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LabThreshold`
--

LOCK TABLES `LabThreshold` WRITE;
/*!40000 ALTER TABLE `LabThreshold` DISABLE KEYS */;
/*!40000 ALTER TABLE `LabThreshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MakerProgram`
--

DROP TABLE IF EXISTS `MakerProgram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MakerProgram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(30) NOT NULL,
  `program_type` varchar(15) NOT NULL,
  `program_link` varchar(50) NOT NULL,
  `tech_stack_id` int(11) NOT NULL,
  `tech_type_id` int(11) NOT NULL,
  `program_approved` tinyint(1) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_user` (`creator_user`),
  KEY `tech_stack_id` (`tech_stack_id`),
  KEY `tech_type_id` (`tech_type_id`),
  CONSTRAINT `MakerProgram_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`),
  CONSTRAINT `MakerProgram_ibfk_2` FOREIGN KEY (`tech_stack_id`) REFERENCES `TechStack` (`id`),
  CONSTRAINT `MakerProgram_ibfk_3` FOREIGN KEY (`tech_type_id`) REFERENCES `TechType` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MakerProgram`
--

LOCK TABLES `MakerProgram` WRITE;
/*!40000 ALTER TABLE `MakerProgram` DISABLE KEYS */;
/*!40000 ALTER TABLE `MakerProgram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor`
--

DROP TABLE IF EXISTS `Mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `mentor_type` varchar(15) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lab_id` (`lab_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Mentor_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `Lab` (`id`),
  CONSTRAINT `Mentor_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor`
--

LOCK TABLES `Mentor` WRITE;
/*!40000 ALTER TABLE `Mentor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MentorIdeationMap`
--

DROP TABLE IF EXISTS `MentorIdeationMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MentorIdeationMap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mentor_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_user` (`creator_user`),
  KEY `mentor_id` (`mentor_id`),
  CONSTRAINT `MentorIdeationMap_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`),
  CONSTRAINT `MentorIdeationMap_ibfk_2` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MentorIdeationMap`
--

LOCK TABLES `MentorIdeationMap` WRITE;
/*!40000 ALTER TABLE `MentorIdeationMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `MentorIdeationMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MentorTechStack`
--

DROP TABLE IF EXISTS `MentorTechStack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MentorTechStack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mentor_id` int(11) NOT NULL,
  `tech_stack_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mentor_id` (`mentor_id`),
  KEY `tech_stack_id` (`tech_stack_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `MentorTechStack_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`id`),
  CONSTRAINT `MentorTechStack_ibfk_2` FOREIGN KEY (`tech_stack_id`) REFERENCES `TechStack` (`id`),
  CONSTRAINT `MentorTechStack_ibfk_3` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MentorTechStack`
--

LOCK TABLES `MentorTechStack` WRITE;
/*!40000 ALTER TABLE `MentorTechStack` DISABLE KEYS */;
/*!40000 ALTER TABLE `MentorTechStack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TechStack`
--

DROP TABLE IF EXISTS `TechStack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TechStack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(20) NOT NULL,
  `image_path` varchar(50) NOT NULL,
  `framework` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `TechStack_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TechStack`
--

LOCK TABLES `TechStack` WRITE;
/*!40000 ALTER TABLE `TechStack` DISABLE KEYS */;
/*!40000 ALTER TABLE `TechStack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TechType`
--

DROP TABLE IF EXISTS `TechType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TechType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `TechType_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TechType`
--

LOCK TABLES `TechType` WRITE;
/*!40000 ALTER TABLE `TechType` DISABLE KEYS */;
/*!40000 ALTER TABLE `TechType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDetails`
--

DROP TABLE IF EXISTS `UserDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `contact_number` bigint(20) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserDetails`
--

LOCK TABLES `UserDetails` WRITE;
/*!40000 ALTER TABLE `UserDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserRoles`
--

DROP TABLE IF EXISTS `UserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserRoles` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRoles`
--

LOCK TABLES `UserRoles` WRITE;
/*!40000 ALTER TABLE `UserRoles` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserRoles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-26  9:47:00
