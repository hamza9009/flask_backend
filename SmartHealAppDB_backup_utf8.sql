-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 103.239.89.100    Database: SmartHealAppDB
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.23-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_analytics`
--

DROP TABLE IF EXISTS `api_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_analytics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `endpoint` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `call_count` int(11) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `db_timestamp` datetime DEFAULT NULL,
  `api_call_time` datetime DEFAULT NULL,
  `api_response_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_analytics`
--

LOCK TABLES `api_analytics` WRITE;
/*!40000 ALTER TABLE `api_analytics` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_list`
--

DROP TABLE IF EXISTS `api_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_list`
--

LOCK TABLES `api_list` WRITE;
/*!40000 ALTER TABLE `api_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Emergency ICU','2024-05-09 17:53:29','2024-05-09 17:53:29'),(2,'Wound Healing','2024-05-09 17:53:29','2024-05-09 17:53:29'),(3,'Oncology','2024-05-09 17:53:29','2024-05-09 17:53:29'),(4,'Cardiology','2024-05-09 17:53:29','2024-05-09 17:53:29'),(5,'Orthopedic','2024-05-09 17:53:29','2024-05-09 17:53:29'),(6,'Gastroenterology','2024-05-09 17:53:29','2024-05-09 17:53:29'),(7,'Pulmonology','2024-05-09 17:53:29','2024-05-09 17:53:29'),(8,'Neurology','2024-05-09 17:53:29','2024-05-09 17:53:29'),(9,'Urology','2024-05-09 17:53:29','2024-05-09 17:53:29'),(10,'Pediatrics','2024-05-09 17:53:29','2024-05-09 17:53:29');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exudates`
--

DROP TABLE IF EXISTS `exudates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exudates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exudates_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exudates`
--

LOCK TABLES `exudates` WRITE;
/*!40000 ALTER TABLE `exudates` DISABLE KEYS */;
/*!40000 ALTER TABLE `exudates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medications` (
  `MedID` int(11) NOT NULL AUTO_INCREMENT,
  `WoundType` varchar(50) DEFAULT NULL,
  `WoundDimensions` varchar(20) DEFAULT NULL,
  `Medication` varchar(50) DEFAULT NULL,
  `FrequencyIntake` varchar(50) DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  `Quantity` varchar(50) DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `patient_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`MedID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
INSERT INTO `medications` VALUES (1,'Abrasions','Small','Neosporin (Antibiotic Ointment)','1-3 times daily','Until healed','Small amount per application','Apply a thin layer on clean wound until it is healed',NULL),(2,'Abrasions','Small','Ibuprofen (Pain Relief)','Every 4-6 hours','As needed','200-400 mg per dose','Do not exceed 3200 mg per day',NULL),(3,'Lacerations','Small','Cephalexin (Antibiotic)','Every 6 hours','7-10 days','250-500 mg per dose','Complete the full course even if symptoms improve',NULL),(4,'Lacerations','Small','Acetaminophen (Pain Relief)','Every 6 hours','As needed','500-1000 mg per dose','Do not exceed 4000 mg per day',NULL),(5,'Lacerations','Medium','Cephalexin (Antibiotic)','Every 6 hours','7-10 days','500-1000 mg per dose','Complete the full course even if symptoms improve',NULL),(6,'Lacerations','Medium','Acetaminophen (Pain Relief)','Every 6 hours','As needed','1000 mg per dose','Do not exceed 4000 mg per day',NULL),(7,'Lacerations','Large','Cephalexin (Antibiotic)','Every 6 hours','7-10 days','500-1000 mg per dose','Complete the full course even if symptoms improve',NULL),(8,'Lacerations','Large','Acetaminophen (Pain Relief)','Every 6 hours','As needed','1000 mg per dose','Do not exceed 4000 mg per day',NULL),(9,'Puncture Wounds','Small','Tetanus Booster (Vaccine)','Single injection','Once','One dose','Ensure the patientΓÇÖs vaccination status is up-to-date',NULL),(10,'Puncture Wounds','Small','Amoxicillin-Clavulanate (Antibiotic)','Twice daily','7-10 days','875 mg/125 mg per dose','Take with food to avoid stomach upset',NULL),(11,'Burns (Minor)','Small','Silver Sulfadiazine Cream','1-2 times daily','Until healed','Thin layer per application','Apply with sterile gloves',NULL),(12,'Burns (Minor)','Small','Ibuprofen (Pain Relief)','Every 4-6 hours','As needed','200-400 mg per dose','Do not exceed 3200 mg per day',NULL),(13,'Burns (Minor)','Medium','Silver Sulfadiazine Cream','1-2 times daily','Until healed','Thin layer per application','Apply with sterile gloves',NULL),(14,'Burns (Minor)','Medium','Ibuprofen (Pain Relief)','Every 4-6 hours','As needed','200-400 mg per dose','Do not exceed 3200 mg per day',NULL),(15,'Burns (Severe)','Large','Morphine (Pain Relief)','Every 4 hours','As needed','2.5-15 mg per dose','Administer under medical supervision',NULL),(16,'Burns (Severe)','Large','Bacitracin (Antibiotic Ointment)','1-3 times daily','Until healed','Small amount per application','Use a small amount on affected area',NULL),(17,'Bites (Animal/Human)','Small','Augmentin (Antibiotic)','Twice daily','7-10 days','875 mg/125 mg per dose','Take with food to avoid stomach upset',NULL),(18,'Bites (Animal/Human)','Small','Tetanus Booster (Vaccine)','Single injection','Once','One dose','Ensure the patientΓÇÖs vaccination status is up-to-date',NULL),(19,'Bites (Animal/Human)','Medium','Augmentin (Antibiotic)','Twice daily','7-10 days','875 mg/125 mg per dose','Take with food to avoid stomach upset',NULL),(20,'Bites (Animal/Human)','Medium','Tetanus Booster (Vaccine)','Single injection','Once','One dose','Ensure the patientΓÇÖs vaccination status is up-to-date',NULL),(21,'Ulcers (Diabetic)','Small','Metronidazole (Antibiotic)','Twice daily','7-10 days','500 mg per dose','Avoid alcohol during treatment',NULL),(22,'Ulcers (Diabetic)','Small','Naproxen (Pain Relief)','Every 12 hours','As needed','250-500 mg per dose','Take with food or milk to prevent stomach upset',NULL),(23,'Post-Surgical Wounds','Small','Cefazolin (Antibiotic)','Every 8 hours','7-10 days','1-2 g per dose','Administer intravenously under medical supervision',NULL),(24,'Post-Surgical Wounds','Small','Oxycodone (Pain Relief)','Every 4-6 hours','As needed','5-10 mg per dose','Use cautiously to avoid addiction; follow prescription guidelines',NULL),(25,'Post-Surgical Wounds','Medium','Cefazolin (Antibiotic)','Every 8 hours','7-10 days','1-2 g per dose','Administer intravenously under medical supervision',NULL),(26,'Post-Surgical Wounds','Medium','Oxycodone (Pain Relief)','Every 4-6 hours','As needed','5-10 mg per dose','Use cautiously to avoid addiction; follow prescription guidelines',NULL),(27,'Post-Surgical Wounds','Large','Cefazolin (Antibiotic)','Every 8 hours','7-10 days','1-2 g per dose','Administer intravenously under medical supervision',NULL),(28,'Post-Surgical Wounds','Large','Oxycodone (Pain Relief)','Every 4-6 hours','As needed','5-10 mg per dose','Use cautiously to avoid addiction; follow prescription guidelines',NULL);
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_05_03_052849_create_sessions_table',1),(7,'2022_06_03_065838_create_organisations_table',1),(8,'2022_06_03_093756_create_patients_table',1),(9,'2022_06_07_101925_create_wound_images_table',1),(10,'2022_06_07_110804_create_wounds_table',1),(11,'2022_06_17_100947_create_notes_table',1),(12,'2022_06_28_053351_create_exudates_table',1),(13,'2022_07_06_113538_speciality',1),(14,'2022_07_07_111429_type',1),(15,'2022_07_12_073642_measure',1),(16,'2022_07_13_054040_due',1),(17,'2022_07_26_063908_assessment',1),(18,'2022_08_03_105638_last',1),(19,'2022_08_04_103620_changetype',1),(20,'2022_08_10_095000_fields',1),(21,'2022_08_12_132937_note',1),(22,'2022_10_11_100317_login',1),(23,'2024_05_09_133006_create_departments_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `wound_id` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notes_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisations`
--

DROP TABLE IF EXISTS `organisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organisations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 5,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `departments` varchar(255) DEFAULT NULL,
  `c_code` varchar(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `otp_expiry` varchar(255) DEFAULT NULL,
  `licence_key` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0=>inactive,1=>active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisations`
--

LOCK TABLES `organisations` WRITE;
/*!40000 ALTER TABLE `organisations` DISABLE KEYS */;
INSERT INTO `organisations` VALUES (67,'8b82feeb-1777-40e0-ad91-6cac5d7eb36b',5,'Dr Daniel Buchard','santosh@smartheal.org','582258','','+61','450930522',1234,'2024-07-11 05:32:03.148477','2MSDCWIIUDPQ','VIC',0,'2024-06-06 20:14:00','2024-06-06 20:59:00',0.00000000,0.00000000,'','https://api.smartheal.waysdatalabs.com/uploads/organisations/santosh@smartheal.org/image_picker_25722092-B25C-4812-838E-3F7B8CD46A74-12062-00000AA5440050C0.jpg'),(70,'309d19d5-de32-437a-bcd0-099213ec3af9',5,'tester','satindergill907@gmail.com','123456',NULL,'+61','434844802',1234,'2024-07-09 11:30:57.710867','TVV3U2FR98Y0',NULL,0,'2024-06-20 07:16:00','2024-06-20 07:16:00',NULL,NULL,NULL,NULL),(106,'bf7c2557-7bbc-4694-a104-fa4ee78d4899',5,'LifeKare Community Care','simkaur2287@gmail.com','5822','Wound Healing',NULL,'0450930522',NULL,NULL,'O1WA5GFEIQ5Z','Cooper Wing',0,'2024-06-26 07:16:00','2024-06-26 07:17:00',0.00000000,0.00000000,NULL,NULL),(129,'668747d9-0499-42ac-88c2-33564c6abbe8',5,'Sam','amitkr9113@gmail.com','1234','Wound Healing','+91','9818125803',1234,'2024-07-21 05:49:03.861522','6SW17G4C93O6','Australia',0,'2024-07-09 21:05:00','2024-07-21 00:14:03',0.00000000,0.00000000,NULL,NULL),(130,'ba7bf64d-f283-4749-9a80-4658c34357f3',5,'Waysahead Tester','adarsh.this.side@gmail.com','1111','Emergency ICU, Wound Healing, Oncology','+91','9711646018',1234,'2024-08-26 12:18:35.033650','AJ2JTMMA3Y2W','Noida',0,'2024-07-09 22:29:03','2024-08-26 06:43:35',0.00000000,0.00000000,'The Indian Institutes of Management (IIMs) are Centrally Funded Business Schools for management offering undergraduate, postgraduate, doctoral and executive ','https://api.smartheal.waysdatalabs.com/uploads/organisations/adarsh.this.side@gmail.com/scaled_1000097097.jpg'),(131,'6b44b8f9-0294-4db1-9a8a-c9d99477aae1',5,'Wounds India','ghoshrudrakshi@gmail.com','3218','Emergency ICU, Wound Healing','+91','9093109714',1234,'2024-08-11 07:38:52.018395','64I346P0I9XN','Gurgaon',0,'2024-07-10 05:16:26','2024-08-11 02:03:52',0.00000000,0.00000000,'We offer specialised services in cardiology, pulmonogy, emergency healing and wound management.\nWe are established in 2009 and have been awarded number 1 in the district','https://api.smartheal.waysdatalabs.com/uploads/organisations/ghoshrudrakshi@gmail.com/image_picker_47C3D063-1356-4C25-983A-4D586B8B646D-20355-0000033C4910CAD6.jpg'),(132,'9db3a51d-26f5-48c8-b9bb-9bd8e2645b3b',5,'TestOrg','testorg@gmail.com','971816',NULL,'+91','9711646017',NULL,NULL,'8DZ945KRGIGB',NULL,0,'2024-07-10 07:44:32','2024-07-10 07:44:32',NULL,NULL,NULL,NULL),(133,'711ca61b-2f56-408c-8417-8a49395250b8',5,'Internal Tester Org','testerorg@gmail.com','9718','Cardiology, Oncology, Gastroenterology, Orthopedic','+91','9711646012',NULL,NULL,'6GJQKV4OFARJ','Noida',0,'2024-07-10 23:36:43','2024-07-10 23:36:43',0.00000000,0.00000000,NULL,NULL),(134,'4b6bb6ff-9a31-45f6-86f3-7f9e995879c2',5,'Adarsh singh','adarsh.this.side1@gmail.com','9718','Orthopedic, Cardiology','+91','1234567890',1234,'2024-07-16 08:05:36.815483','4POQLFN76BJQ','Noida',0,'2024-07-11 00:09:02','2024-07-16 02:30:36',0.00000000,0.00000000,NULL,NULL),(135,'f1a74b25-fbc8-49fb-adb6-0dad4c6644a4',5,'Wounds Smartheal','ghoshrudrakshii@gmail.com','5678','Emergency ICU, Wound Healing','+91','9883180118',1234,'2024-07-18 05:18:44.211361','9DRVIPSUYGKY','Gurgaon, India',0,'2024-07-16 01:28:16','2024-07-17 23:43:44',0.00000000,0.00000000,'we are a specialised organisation with expertise in wound care healing and management.','https://api.smartheal.waysdatalabs.com/uploads/organisations/ghoshrudrakshii@gmail.com/image_picker_2673F82E-01D5-4876-A850-2FE8F4BDDD4B-19739-000003993DABC56D.jpg'),(136,'fdf4fc8e-b452-43f8-9640-39fdb2fa0bd8',5,'Chatterjee Wound Care','chatterjeeanirban888@gmail.com','1402','Wound Healing','+91','8777388229',NULL,NULL,'R3LN4MMSMX9N','kolkata',0,'2024-07-20 03:02:58','2024-07-20 03:02:58',0.00000000,0.00000000,NULL,NULL),(137,'d9c630f7-bdb8-4adc-a86c-0a2d78217dfa',5,'Subham Das','subhamdas4789@gmail.com','1234','Cardiology','+91','9883764789',1234,'2024-11-26 08:38:38.935767','VWUOIY4SME7V','Raipur',0,'2024-11-26 03:01:48','2024-11-26 03:03:38',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `organisations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `wound_type` varchar(255) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `antiCoagulant` varchar(255) DEFAULT NULL,
  `due_dt` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `allergy` varchar(255) DEFAULT NULL,
  `illness` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `org` varchar(255) DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `scheduled_date` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patients_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (270,'a432127b-d9a6-4d3c-a829-83b4710611f4','Dennis','rupamjee.in@gmail.com',NULL,'Male','2011-07-03',NULL,NULL,NULL,NULL,'AB000270',NULL,NULL,NULL,NULL,'Rupam',NULL,NULL,'2024-07-06 22:53:46','2024-07-06 22:53:46',13,168,65,'2024-07-07',NULL,NULL),(272,'adbcb216-27f8-42b6-9ee3-f4715f730745','Joan Garlick ','santosh@smartheal.org',NULL,'Female','1940-07-07',NULL,NULL,NULL,NULL,'AB000272',NULL,NULL,NULL,NULL,'SmartHeal',NULL,NULL,'2024-07-07 07:47:57','2024-07-07 07:47:57',84,170,65,'2024-07-07',NULL,NULL),(274,'1fe65693-8e67-45f3-aad3-dd390655c39e','Linda Smith','santosh@smartheal.org',NULL,'Male','1943-07-08',NULL,NULL,NULL,NULL,'AB000274',NULL,NULL,NULL,NULL,'SmartHeal',NULL,'https://api.smartheal.waysdatalabs.com/uploads/patients/AB000274/image_picker_E6CA185A-5C9A-453B-AE0F-F9A92B62F205-9422-00000833AA828096.jpg','2024-07-07 22:09:20','2024-07-07 22:09:20',81,164,86,'2024-07-08',NULL,NULL),(282,'2aaee401-8845-4ac7-8861-bb18f9636436','Noah','amitkr9113@gmail.com',NULL,'Male','2000-07-10',NULL,NULL,NULL,NULL,'AB000282',NULL,'test 02,test 3','hello',NULL,'Sam','',NULL,'2024-07-09 21:09:19','2024-07-09 21:09:19',24,173,72,'2024-07-31',NULL,NULL),(283,'56214412-83c3-42c2-8f78-10a6dfdde279','Kia','adarsh.this.side@gmail.com',NULL,'Female','1999-07-10',NULL,NULL,NULL,NULL,'AB000283',NULL,'adarsh','My name is adarsh','Test recommendation','Internal Tester Org','','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000283/1000098573.png','2024-07-09 22:31:19','2024-07-09 22:31:19',25,170,65,'2024-07-19','Test Remark',NULL),(284,'3ea2ed28-2e06-4ff7-a6dd-87cc22534944','Mavis Singleton','santosh@smartheal.org',NULL,'Female','1955-01-10',NULL,NULL,NULL,NULL,'AB000284',NULL,'','',NULL,'SmartHeal','','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000284/image_picker_0672EF15-A2FB-45E2-A917-D2279BFBCF33-11941-00000A8C684F1EC2.jpg','2024-07-10 03:11:24','2024-07-10 03:11:24',69,165,68,'2024-07-12',NULL,NULL),(285,'70e50fab-df36-48da-a575-b8f818d7651a','RS Kumar','drk150850@gmail.com',NULL,'Male','2024-07-10',NULL,NULL,NULL,NULL,'AB000285',NULL,NULL,NULL,NULL,'Dr RS Kumar',NULL,NULL,'2024-07-10 03:16:13','2024-07-10 03:16:13',0,170,65,'2024-07-10',NULL,NULL),(286,'a79a3e5b-48a4-4253-bb18-2fdb082bf3b7','John','ghoshrudrakshi@gmail.com',NULL,'Male','1992-07-10',NULL,NULL,NULL,NULL,'AB000286',NULL,NULL,NULL,NULL,'Wounds India',NULL,'https://api.smartheal.waysdatalabs.com/uploads/patients/AB000286/image_picker_D99383B7-7CF5-423E-A1F4-1F3A10CDFC6D-20355-0000033AB15C7176.jpg','2024-07-10 05:17:38','2024-07-10 05:17:38',32,161,65,'2024-07-16',NULL,NULL),(287,'6ad7151a-5d18-48bb-9869-0c7b2878cbd3','Johanna','ghoshrudrakshi@gmail.com',NULL,'Female','1985-07-10',NULL,NULL,NULL,NULL,'AB000287',NULL,'gluten ','Diabetes','use soframycin ','Wounds India','','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000287/image_picker_EAC25895-D34D-464C-B012-D80EDBF2E334-20355-0000033B3FC56289.jpg','2024-07-10 05:19:25','2024-07-10 05:19:25',39,147,65,'2024-07-17',NULL,NULL),(288,'a07d8e8b-78b1-4faa-834b-d9e9192a8b7c','Jackson','ghoshrudrakshi@gmail.com',NULL,'Male','1994-07-10',NULL,NULL,NULL,NULL,'AB000288',NULL,NULL,NULL,'use betadine','Wounds India',NULL,'https://api.smartheal.waysdatalabs.com/uploads/patients/AB000288/image_picker_668A627F-0F68-4FF2-AB15-1C652AD9DC72-20355-0000033BE560DE82.jpg','2024-07-10 05:21:17','2024-07-10 05:21:17',30,170,65,'2024-07-12',NULL,NULL),(289,'b306d258-89b7-4762-a7cd-5f228bc8cb9f','Tom Thumb','santosh@smartheal.org',NULL,'Male','2011-05-11',NULL,NULL,NULL,NULL,'AB000289',NULL,NULL,NULL,NULL,'Dr Daniel Buchard',NULL,'https://api.smartheal.waysdatalabs.com/uploads/patients/AB000289/image_picker_6DDA108C-C7F8-4905-8CBC-2FFD18149D0D-13382-00000BA8A4A4F7FA.jpg','2024-07-11 00:04:14','2024-07-11 00:04:14',13,170,60,'2024-07-11',NULL,NULL),(290,'8600f62f-0640-43dd-9476-a9d3e9424ebd','Tom Thumb','santosh@smartheal.org',NULL,'Male','1996-07-11',NULL,NULL,NULL,NULL,'AB000290',NULL,'','',NULL,'Dr Daniel Buchard','','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000290/image_picker_6CF4EC25-F7C8-4FBA-AEB3-8FDCC23CA52D-13382-00000BA8ED12252C.jpg','2024-07-11 00:05:02','2024-07-11 00:05:02',28,170,65,'2024-07-11',NULL,NULL),(291,'afc57060-e231-4deb-8954-298f2916539d','Jason','ghoshrudrakshi@gmail.com',NULL,'Male','2011-07-15',NULL,NULL,NULL,NULL,'AB000291',NULL,'','',NULL,'Wounds India','',NULL,'2024-07-15 00:35:50','2024-07-15 00:35:50',13,170,66,'2024-07-15',NULL,NULL),(292,'735b88b0-9232-4bbb-8317-a1a6e845785f','dove','ghoshrudrakshi@gmail.com',NULL,'Male','1989-07-15',NULL,NULL,NULL,NULL,'AB000292',NULL,NULL,NULL,NULL,'Wounds India',NULL,NULL,'2024-07-15 00:58:07','2024-07-15 00:58:07',35,170,69,'2024-07-15',NULL,NULL),(293,'9bd6f914-510d-4195-a2e5-ee241dccea18','joy','ghoshrudrakshi@gmail.com',NULL,'Male','1973-07-15',NULL,NULL,NULL,NULL,'AB000293',NULL,'','',NULL,'Wounds India','',NULL,'2024-07-15 03:03:31','2024-07-15 03:03:31',51,170,95,'2024-07-15',NULL,NULL),(294,'18cdd488-7411-4bba-a925-2e193044a710','John','ghoshrudrakshii@gmail.com',NULL,'Male','1976-07-16',NULL,NULL,NULL,NULL,'AB000294',NULL,'gluten ','diabetes ','use bandage','Wounds Smartheal','','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000294/image_picker_FE0FBA8F-711E-4B04-89DD-0527821716D9-19739-00000398660E14A0.jpg','2024-07-16 01:29:12','2024-07-16 01:29:12',48,170,65,'2024-07-19',NULL,NULL),(295,'04d03663-cc04-4479-810f-7da6991dba70','sam','ghoshrudrakshii@gmail.com',NULL,'Male','1990-10-06',NULL,NULL,NULL,NULL,'AB000295',NULL,NULL,NULL,NULL,NULL,'135',NULL,'2024-07-17 02:09:01','2024-07-17 02:09:01',34,175,70,'2024-07-17',NULL,NULL),(296,'c9fb4e8f-177d-4c72-a232-46bfc5e79a1d','samar','vishnuvipin295@gmail.com',NULL,'Male','1990-10-06',NULL,NULL,NULL,NULL,'AB000296',NULL,NULL,NULL,NULL,'62',NULL,NULL,'2024-07-17 02:11:11','2024-07-17 02:11:11',34,175,70,'2024-07-17',NULL,NULL),(297,'247f4c6b-82e3-4902-b1c4-54614fba9954','arun','adarsh.this.side1@gmail.com',NULL,'Male','1990-10-06',NULL,NULL,NULL,NULL,'AB000297',NULL,NULL,NULL,NULL,NULL,'134',NULL,'2024-07-17 02:31:01','2024-07-17 02:31:01',34,175,70,'2024-07-17',NULL,NULL),(298,'2f74775d-37a0-4ec6-bc01-8f7837bfc653','amal','adarsh.this.side1@gmail.com',NULL,'Male','1990-10-06',NULL,NULL,NULL,NULL,'AB000298',NULL,NULL,NULL,'Patient has shown improvement in wound healing.',NULL,'134',NULL,'2024-07-17 02:37:13','2024-07-17 02:37:13',34,175,70,'2024-07-17','Continue with the current treatment plan.',NULL),(299,'6dea902d-df40-4c7a-8dc5-2ba85ce740f6','Waysahead Tester','adarsh.this.side@gmail.com',NULL,'Male','2002-07-17',NULL,NULL,NULL,NULL,'AB000299',NULL,NULL,NULL,NULL,NULL,'130','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000299/1000098573.png','2024-07-17 03:23:57','2024-07-17 03:23:57',22,172,67,'2024-07-17',NULL,NULL),(300,'56c1498f-f879-433a-aa9a-e704d49da056','Diljit','adarsh.this.side@gmail.com',NULL,'Male','2002-07-17',NULL,NULL,NULL,NULL,'AB000300',NULL,'','',NULL,NULL,'130',NULL,'2024-07-17 03:25:33','2024-07-17 03:25:33',22,170,65,'2024-07-17',NULL,NULL),(301,'c3a61602-63c2-4f80-b011-65e8b4dc5a81','Sidhu','adarsh.this.side@gmail.com',NULL,'Male','1987-07-17',NULL,NULL,NULL,NULL,'AB000301',NULL,NULL,NULL,NULL,NULL,'130',NULL,'2024-07-17 03:29:59','2024-07-17 03:29:59',37,170,65,'2024-07-17',NULL,NULL),(302,'f6399922-cf1d-4057-8d9b-4e417f9b9672','sumit','adarsh.this.side1@gmail.com',NULL,'Male','1990-10-06',NULL,NULL,NULL,NULL,'AB000302',NULL,NULL,NULL,NULL,NULL,'134',NULL,'2024-07-17 04:21:02','2024-07-17 04:21:02',34,175,70,'2024-07-17',NULL,'Adarsh singh'),(303,'f8e28f8a-45f8-4fdf-9369-a19f29a81784','Tester','adarsh.this.side@gmail.com',NULL,'Male','2002-07-17',NULL,NULL,NULL,NULL,'AB000303',NULL,NULL,NULL,'test',NULL,'130',NULL,'2024-07-17 04:30:57','2024-07-17 04:30:57',22,170,65,'2024-07-19','tedt',NULL),(304,'d79ade07-689a-4b0d-8df6-8886dd4bf53a','sumitra','adarsh.this.side1@gmail.com',NULL,'Female','1990-10-06',NULL,NULL,NULL,NULL,'AB000304',NULL,NULL,NULL,NULL,NULL,'134',NULL,'2024-07-17 04:34:41','2024-07-17 04:34:41',34,175,70,'2024-07-17',NULL,'Adarsh singh'),(305,'47b94d48-48c6-47b3-a3af-26e5d6e85504','deol','vishnuvipin295@gmail.com',NULL,'Male','1990-10-06',NULL,NULL,NULL,NULL,'AB000305',NULL,NULL,NULL,NULL,'62',NULL,NULL,'2024-07-17 04:50:59','2024-07-17 04:50:59',34,175,70,'2024-07-17',NULL,'Dr Vishnu KV'),(306,'64e0c7f5-d835-4d6a-964e-de9c0da1a022','Vishnu WH','adarsh.this.side@gmail.com',NULL,'Male','2001-07-17',NULL,NULL,NULL,NULL,'AB000306',NULL,'tester','','',NULL,'130',NULL,'2024-07-17 05:12:51','2024-07-17 05:12:51',23,170,65,'2024-07-18','','Waysahead Tester'),(307,'ffb499cf-28b3-4316-aeac-013154ddbb13','Davis','ghoshrudrakshi@gmail.com',NULL,'Male','1971-07-17',NULL,NULL,NULL,NULL,'AB000307',NULL,NULL,NULL,'use semi permeable film\n',NULL,'131','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000307/1000188108.jpg','2024-07-17 06:00:53','2024-07-17 06:00:53',53,170,65,'2024-07-17','Get tetanus vaccine','Wounds India'),(308,'a21f3226-863d-446e-8bc4-3e0a3d5f6c37','Jasmine','ghoshrudrakshi@gmail.com',NULL,'Male','1972-07-18',NULL,NULL,NULL,NULL,'AB000308',NULL,NULL,NULL,NULL,NULL,'131',NULL,'2024-07-17 23:10:07','2024-07-17 23:10:07',52,170,80,'2024-07-18',NULL,'Wounds India'),(309,'5e226888-0680-41f8-8075-be15fefef7b2','jasmine','rudranighosh23@gmail.com',NULL,'Female','2012-07-18',NULL,NULL,NULL,NULL,'AB000309',NULL,NULL,NULL,'','70',NULL,'https://api.smartheal.waysdatalabs.com/uploads/patients/AB000309/1000191130.jpg','2024-07-17 23:16:03','2024-07-17 23:16:03',12,130,26,'2024-07-18','','Dr. Rudrani Ghosh'),(310,'f461f34b-bcfd-4018-a792-0e5606b0e443','jason','ghoshrudrakshi@gmail.com',NULL,'Male','1975-07-18',NULL,NULL,NULL,NULL,'AB000310',NULL,NULL,NULL,'use betadine\n',NULL,'131','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000310/1000021405.jpg','2024-07-18 01:06:05','2024-07-18 01:06:05',49,170,65,'2024-07-18','Do blood test','Wounds India'),(311,'5e8b7c67-6867-42d4-b3f6-761971a7eed8','time test','ghoshrudrakshi@gmail.com',NULL,'Male','2014-07-18',NULL,NULL,NULL,NULL,'AB000311',NULL,'gluten','diabetes','use betadine',NULL,'131',NULL,'2024-07-18 05:42:27','2024-07-18 05:42:27',10,170,65,'2024-07-22','get vaccinated','Wounds India'),(312,'0877e679-56d1-4813-9f74-e5097fea5657','vinod','vinodbenedict1977@gmail.com',NULL,'Male','2024-07-20',NULL,NULL,NULL,NULL,'AB000312',NULL,NULL,NULL,'','77',NULL,'https://api.smartheal.waysdatalabs.com/uploads/patients/AB000312/image_picker_01045675-4CF1-41F6-9C83-CE12CD1D682D-25267-000017FDC0F9C9A9.jpg','2024-07-20 01:41:26','2024-07-20 01:41:26',0,170,84,'2024-07-20','','Dr Vinod'),(313,'7a4d1bf4-732e-4fcf-a329-ca058cf351d9','Vishnu','chatterjeeanirban888@gmail.com',NULL,'Male','2005-07-20',NULL,NULL,NULL,NULL,'AB000313',NULL,NULL,NULL,'',NULL,'136',NULL,'2024-07-20 03:05:26','2024-07-20 03:05:26',19,170,67,'2024-07-20','','Chatterjee Wound Care'),(314,'35f83d3d-7027-44fb-8ccf-a73371a848c4','harry','amitkr9113@gmail.com',NULL,'Male','2023-04-04',NULL,NULL,NULL,NULL,'AB000314',NULL,'ddddc','','',NULL,'129','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000314/image_picker_18BF12A2-A402-4B6F-B7EE-40B0BF4C17B8-6698-000007E7619AFD98.png','2024-07-21 00:17:11','2024-07-21 00:17:11',1,170,64,'2024-07-31','','Sam'),(315,'9d34fc2a-5eb7-4777-aef3-b4f963a08d7a','Rudrakshi WH','adarsh.this.side@gmail.com',NULL,'Female','2005-07-22',NULL,NULL,NULL,NULL,'AB000315',NULL,NULL,NULL,'',NULL,'130',NULL,'2024-07-21 20:34:08','2024-07-21 20:34:08',19,156,72,'2024-08-01','','Waysahead Tester'),(316,'3874c9b8-2d7e-467c-998d-15de258a945c','rudrakshi','chatterjeeanirban888@gmail.com',NULL,'Female','2000-07-09',NULL,NULL,NULL,NULL,'AB000316',NULL,NULL,NULL,NULL,NULL,'136',NULL,'2024-07-21 21:49:06','2024-07-21 21:49:06',24,170,64,'2024-07-22',NULL,'Chatterjee Wound Care'),(317,'441efdba-b22d-4f65-9978-af8467cdf3c7','rudrakshi ','ghoshrudrakshi@gmail.com',NULL,'Female','2003-07-22',NULL,NULL,NULL,NULL,'AB000317',NULL,NULL,NULL,NULL,NULL,'131',NULL,'2024-07-21 21:50:23','2024-07-21 21:50:23',21,170,65,'2024-07-22',NULL,'Wounds India'),(318,'db1edcbe-0009-4f5c-886d-fa7cfaaf0c95','John','chatterjeeanirban888@gmail.com',NULL,'Male','1987-07-22',NULL,NULL,NULL,NULL,'AB000318',NULL,NULL,NULL,NULL,NULL,'136',NULL,'2024-07-21 22:22:01','2024-07-21 22:22:01',37,134,65,'2024-07-22',NULL,'Chatterjee Wound Care'),(319,'31fb1549-d20a-4c56-a30a-718a20d283b4','Vicky','ghoshrudrakshi@gmail.com',NULL,'Male','1996-07-22',NULL,NULL,NULL,NULL,'AB000319',NULL,'Gluten,Dairy','Hypertension,Diabetes','',NULL,'131','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000319/image_picker_41AFDE29-C483-4FEC-BF71-1D06B085D8D3-65771-00000A806185FDE3.jpg','2024-07-22 01:25:56','2024-07-22 01:25:56',28,170,65,'2024-07-22','','Wounds India'),(320,'b4444cb8-0b5e-42fa-98cc-675bb0656324','Jason','ghoshrudrakshi@gmail.com',NULL,'Male','1987-07-22',NULL,NULL,NULL,NULL,'AB000320',NULL,NULL,NULL,'Use semi permeable film',NULL,'131','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000320/image_picker_75A0A99F-82EB-4C88-A23D-E45172F50863-65771-00000AAD233E0B38.jpg','2024-07-22 04:05:20','2024-07-22 04:05:20',37,170,65,'2024-07-22','Do not wet the wound','Wounds India'),(321,'198513d7-4321-4018-aaed-58b01ccc03e5','Jessica','ghoshrudrakshi@gmail.com',NULL,'Male','2002-07-22',NULL,NULL,NULL,NULL,'AB000321',NULL,'gluten,dairy ','hypertension,diabetes ','',NULL,'131','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000321/image_picker_C68F771D-10C5-44C7-9C84-1EAA8368D72F-65771-00000AADE03A1466.jpg','2024-07-22 04:07:33','2024-07-22 04:07:33',22,170,65,'2024-08-31','','Wounds India'),(322,'39e0ae5c-b603-4926-bae9-7df6f4b23a1c','jamie','ghoshrudrakshi@gmail.com',NULL,'Male','2014-07-25',NULL,NULL,NULL,NULL,'AB000322',NULL,NULL,NULL,'',NULL,'131','https://api.smartheal.waysdatalabs.com/uploads/patients/AB000322/image_picker_D0C4F1A6-EDB2-4621-9D51-A91329E7166D-80696-00000D77F4589AC2.jpg','2024-07-25 03:17:59','2024-07-25 03:17:59',10,170,69,'2024-07-25','','Wounds India'),(323,'cd026c30-eadc-4f6f-9cac-449abc37e0a7','Aaryan Raj','sharmasakshi96803@gmail.com',NULL,'Male','2002-07-09',NULL,NULL,NULL,NULL,'AB000323',NULL,NULL,NULL,'','81',NULL,NULL,'2024-07-27 04:18:33','2024-07-27 04:18:33',22,168,64,'2024-07-27','','Sakshi Sharma'),(324,'2aa337e4-0722-442a-a117-3f9f603c0247','Rahul Singh','adarsh.this.side@gmail.com',NULL,'Male','2001-01-25',NULL,NULL,NULL,NULL,'AB000324',NULL,NULL,NULL,NULL,NULL,'130',NULL,'2024-08-26 06:44:12','2024-08-26 06:44:12',23,170,67,'2024-08-26',NULL,'Waysahead Tester'),(325,'61e4862a-aeed-4e56-bdc5-fb7875b56e7e','Jennie ','raishivang573@gmail.com',NULL,'Female','1988-01-12',NULL,NULL,NULL,NULL,'AB000325',NULL,'','',NULL,'85',NULL,'https://api.smartheal.waysdatalabs.com/uploads/patients/AB000325/1000278141.jpg','2024-11-26 01:52:40','2024-11-26 01:52:40',36,170,67,'2024-11-26',NULL,'Harvey'),(326,'e5cd10ba-1ba3-4e9d-97aa-aa7ca8f91fdd','Dona','raishivang573@gmail.com',NULL,'Female','1977-11-26',NULL,NULL,NULL,NULL,'AB000326',NULL,'','','Pain killer ','85',NULL,'https://api.smartheal.waysdatalabs.com/uploads/patients/AB000326/1000278141.jpg','2024-11-26 01:55:43','2024-11-26 01:55:43',47,170,70,'2024-11-29','','Harvey'),(327,'039d7b85-e871-447d-bc9b-15a5b8dfbdff','Jack','subhamdas4789@gmail.com',NULL,'Male','2001-11-26',NULL,NULL,NULL,NULL,'AB000327',NULL,'Azithromycin ','Diabetes ',NULL,NULL,'137',NULL,'2024-11-26 03:05:52','2024-11-26 03:05:52',23,170,69,'2024-11-26',NULL,'Subham Das');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('12YiQ9p63UQs5tYt6dbSzSv8ZdxhFtqB8f9az6mD',NULL,'172.68.34.49','Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWJkZU5SUlE0Y1lQZU9ucmh6ekIwYjZpTnBXSVpMYzJTUlliWnFuRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc21hcnRoZWFsLndheXNkYXRhbGFicy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1740544427),('3VVvXYPFPlUKCCwC3GbVcPiixVqP25oas156qV08',NULL,'162.158.172.83','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkJFeG5ubG9QeGlST0hIbG1OcHlVRzVvdkNJWVNOTlJqVVRuRGFPaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc21hcnRoZWFsLndheXNkYXRhbGFicy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1740499659),('7rDx11FsgMclq2ikluZ517d1NWK1XoZckTg3EqG3',NULL,'172.70.248.84','Mozilla/5.0 (compatible)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiemc4V1k5Y2k1NGpJMXQwYnQ5WTZ3YkNUU0FCWUhoSFdzeVhERTZoSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc21hcnRoZWFsLndheXNkYXRhbGFicy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1740618012),('GFPYx5Y0XjmXmYdGONjPKmUtHg940JgYMQj8zLgZ',NULL,'172.71.222.242','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkVWMjBxWHRGRXQ2MFAzOVlpbks0cDRid0FZeFk3SjN1MFl6ZWhjeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc21hcnRoZWFsLndheXNkYXRhbGFicy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1740625384),('VtQ9yrlqClur0aMdnFTX61CfcxFAUQHHXuTdAZxz',NULL,'172.71.222.242','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.6943.53 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','YTozOntzOjY6Il90b2tlbiI7czo0MDoibXNBUE5UMHdJNndzYjRZNXRYSFE1dUdQcTFuMHY1bXZlN1JkeUdlTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc21hcnRoZWFsLndheXNkYXRhbGFicy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1740625385);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT '3',
  `pin` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `c_code` varchar(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `otp` int(4) DEFAULT NULL,
  `otp_expiry` varchar(255) DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `org` varchar(255) DEFAULT NULL,
  `departments` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `licence_key` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'SuperAdmin','superadmin@smartheal.com',NULL,'2',NULL,'$2a$12$LCujtFzWaeMXcf0i6XEU8egduX0ETjJtHLB0.cS1Gd1iH5Z8q7iae','+91','9831570489',1234,'2024-07-04 12:40:55.774440',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-07 12:32:09'),(2,'Admin','admin@smartheal.com',NULL,'1','','$2a$12$LCujtFzWaeMXcf0i6XEU8egduX0ETjJtHLB0.cS1Gd1iH5Z8q7iae','+91','9999999999',NULL,NULL,'1715169604.png',NULL,NULL,NULL,NULL,'',1,NULL,NULL,NULL,NULL,NULL,'2024-05-08 06:30:04','2024-07-16 23:54:53'),(34,'Rupam','rupamjee.in@gmail.com',NULL,'3','1904',NULL,'+91','8861858800',NULL,NULL,NULL,NULL,NULL,NULL,'febf9469-30b1-4226-a116-2a1cec5f32bf','USUZQ5QZ38ZR',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-06 22:52:28','2024-07-06 22:52:28'),(49,'Dr RS Kumar','drk150850@gmail.com',NULL,'3','1234',NULL,'+61','192109727',NULL,NULL,NULL,NULL,NULL,'','7d40c554-43a9-412b-b2a2-1ec8d1799858','ICRUOCEBZW47',NULL,0.00000000,0.00000000,NULL,'Gombak','Diabetic ','2024-07-10 03:14:54','2024-07-10 03:14:54'),(50,'Adarsh Singh','adarsh.this.side@gmail.com',NULL,'3','9718',NULL,'+91','9711646018',1234,'2024-07-19 05:12:44.849555',NULL,NULL,NULL,NULL,'dfcb606c-9ffd-41c2-b9de-3c02b6cd8269','QZ8KY4B0DCLY',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-10 07:03:46','2024-07-18 23:37:44'),(60,'Adarsh Singh','lejomob635@cartep.com',NULL,'3','5698',NULL,'+91','7838606907',1234,'2024-07-16 06:44:31.835449',NULL,NULL,NULL,NULL,'f4398923-8d65-47ec-b4d4-bbe293cd109a','YSU72MYAREEA',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-10 07:43:13','2024-07-10 07:43:13'),(61,'Internal Tester','internaltest@gmail.com',NULL,'3','9718',NULL,'+91','9711646011',NULL,NULL,NULL,NULL,NULL,NULL,'8d633228-2bbc-404a-a991-f4cc8d201205','XXUVGBH637XB',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-10 23:35:43','2024-07-10 23:35:43'),(62,'Dr Vishnu KV','vishnuvipin295@gmail.com',NULL,'3','8561',NULL,'+91','9883180118',1234,'2024-07-16 12:22:15.379572',NULL,NULL,'131',NULL,'69a37a36-d08b-45dc-b47b-eaf7044bd67b','BXH0ZD7MT4R4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-16 06:47:15'),(63,'Rudrakshi','rudrakshiig@gmail.com',NULL,'3','3218',NULL,'+91','8388806495',1234,'2024-07-16 08:04:36.372712',NULL,NULL,NULL,NULL,'805d25c4-7c8c-468a-8db4-cf9bfde5622e','1G0YUFNR7B4S',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-12 06:05:43','2024-07-16 02:29:36'),(64,'Sam','sam@test.com',NULL,'3',NULL,NULL,'+91','9999999999',NULL,NULL,NULL,NULL,'129',NULL,'99469a1d-0698-4712-b4f3-18804244e995','ZK8FHFF2MRCF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'John Doe','john@gmail.com',NULL,'3',NULL,NULL,'+91','9818125802',1234,'2024-07-18 11:39:05.614769',NULL,NULL,'129',NULL,'716e3a12-2461-43da-b5ad-962412a42fde','ERLNFDCEKA26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-18 06:04:05'),(66,'Sameera','sameera@gmail.com',NULL,'3',NULL,NULL,'+91','9434050595',NULL,NULL,NULL,NULL,'131',NULL,'a1a5fd55-227b-4d6f-9913-86b678db9c09','FSORRKW3QK94',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'Admin','admin2@mail.com',NULL,'1',NULL,'$2y$10$aobV9i14j1PYZ1gG7PU8iuBVsEBsOxhHDfncqNVFFPI3LQtun.gSe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 01:17:35','2024-11-25 23:12:13'),(70,'Dr. Rudrani Ghosh','rudranighosh23@gmail.com',NULL,'3','2303',NULL,'+91','8348796307',1234,'2024-07-18 06:43:32.462710',NULL,NULL,'131',NULL,'bb0ff60d-3806-4e94-92a9-88c6689fc4d9','873HAWOC6Z00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-18 01:08:32'),(71,'vishal','vishal258@gmail.com',NULL,'3',NULL,NULL,'+91','9883180569',NULL,NULL,NULL,NULL,'131',NULL,'b11fafbc-6aad-47c2-9750-75e2c4561c86','3RMMEWN2RUOR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'Rudrakshi','ghoshrudrakshii@gmail.com',NULL,'3','032108',NULL,'+91','9093109714',NULL,NULL,NULL,NULL,'0',NULL,'b42569eb-2be9-4893-9237-d33b78eda542','SUL2L3YFRB4V',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-18 03:19:21','2024-07-18 03:19:21'),(73,'Rima','ghoshrima72@gmail.com',NULL,'3',NULL,NULL,'+91','9749412475',NULL,NULL,NULL,NULL,'131',NULL,'1b561972-e4cd-4c0c-8ba8-60bb5b64758b','8WPWMQ269ZMQ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'Tester','tester@gmail.com',NULL,'3',NULL,NULL,'+91','9711646111',NULL,NULL,NULL,NULL,'130',NULL,'2d732c97-8a80-44c1-a415-e29ce92d7c71','AQXLRQ5Q80UE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'Sanjay kumar','sg_66@rediffmail.com',NULL,'3',NULL,NULL,'+91','9609740184',NULL,NULL,NULL,NULL,'131',NULL,'69e2e251-8486-4066-ad99-18b22ebce08b','NWUTY3N6M9WT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'hansel','hansel@mail.com',NULL,'3',NULL,NULL,'+91','9432304830',NULL,NULL,NULL,NULL,'131',NULL,'c2627a74-5525-4a17-8d97-7aebe0a2ebbb','771Z3TVSVF0C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'Dr Vinod','vinodbenedict1977@gmail.com',NULL,'3','1234',NULL,'+60','126028668',NULL,NULL,NULL,NULL,'0',NULL,'f311344c-c391-4784-9240-d36bde68c745','UAM25VBYOWFY',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-20 01:21:16','2024-07-20 01:21:16'),(78,'anni','anni@gmail.com',NULL,'3',NULL,NULL,'+91','9563214878',NULL,NULL,NULL,NULL,'135',NULL,'3be1468f-98c3-4953-9d61-cd3476e66f3b','AYCNL78TIFKR',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-22 01:50:52','2024-07-22 01:50:52'),(79,'Dr Sam Johnson','samj@gmail.com',NULL,'3',NULL,NULL,'+91','9832304830',NULL,NULL,NULL,NULL,'131',NULL,'81a9ab77-7f64-41b8-9255-185a1d5ea925','PGHWWB8S83GV',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-22 04:10:50','2024-07-22 04:10:50'),(80,'Aaryan Raj','itssaaryan@gmail.com',NULL,'3','2569',NULL,'+91','9911390972',NULL,NULL,NULL,NULL,'0',NULL,'e84d364e-285a-4233-885e-0d7797f2d952','O2ZHU0QRFZ98',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-27 04:14:48','2024-07-27 04:14:48'),(81,'Sakshi Sharma','sharmasakshi96803@gmail.com',NULL,'3','2569',NULL,'+91','6205592711',NULL,NULL,NULL,NULL,'0',NULL,'5f21f866-3089-4db6-940f-d9ac06c93d66','2KU7N1CZ8CPT',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-27 04:18:03','2024-07-27 04:18:03'),(84,'Alex','adminops@gmail.com',NULL,'1',NULL,'$2y$10$3nUraK8iR1vbejYFcJwp/uKLGgulfDgybhUp8SBMJnlvgOIteSU1e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 00:31:37','2024-11-26 00:31:37'),(85,'Harvey','raishivang573@gmail.com',NULL,'3','1234',NULL,'+91','8000385863',1234,'2024-12-03 14:28:46.612342',NULL,NULL,'0',NULL,'64ed6f47-378b-476b-a9b2-c0c337c00f28','4QD44HCDS3ID',NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 01:50:52','2024-12-03 08:53:46'),(86,'Harvey ','raiayush7391@gmail.com',NULL,'3','1234',NULL,'+91','9450545420',NULL,NULL,NULL,NULL,'0',NULL,'6cf738a2-411f-4ea7-b89d-72d742a92059','QDTKSQPHVOFG',NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 05:03:20','2024-11-26 05:03:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wound_images`
--

DROP TABLE IF EXISTS `wound_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wound_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `wound_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `depth` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `last_dressing` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `dressing_recommend` varchar(255) DEFAULT NULL,
  `size_variation` varchar(255) DEFAULT NULL,
  `photo_assessment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wound_images_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wound_images`
--

LOCK TABLES `wound_images` WRITE;
/*!40000 ALTER TABLE `wound_images` DISABLE KEYS */;
INSERT INTO `wound_images` VALUES (1,'d5874ad0-ab43-4b73-a9de-a55fab34c95f','AB000266','251','http://127.0.0.1:5000/uploads/wounds/AB000266/t.jpg','0.9','4','2',NULL,NULL,NULL,'wound area reduced',NULL,NULL,'2024-07-11 04:21:49',NULL),(2,'6c3cb7e3-d3f9-4cb0-b2a4-08ba1df4cd29','AB000266','251','http://127.0.0.1:5000/uploads/wounds/AB000266/t.jpg','0.9','4','2',NULL,NULL,NULL,'wound area same',NULL,'2024-07-05 06:21:59','2024-07-11 04:29:32',NULL),(3,'382a7a08-f8c9-4462-b68e-a6f892ccb265','AB000266','251','http://127.0.0.1:5000/uploads/wounds/AB000266/t.jpg','0.9','4','2',NULL,NULL,NULL,'wound area same',NULL,'2024-07-05 06:21:59','2024-07-11 04:31:18','7.5'),(4,'14736ce5-db4f-437d-a548-ca40ce11758f','AB000266','251','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000266/t.jpg','0.9','4','2',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-05 06:21:59','2024-07-11 05:02:11','6.5'),(5,'c3848def-0cf5-42a3-9d81-5062bea44db1','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240711_182659.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-11 07:27:56','0.72'),(6,'c701f46f-ac4e-4304-a2c4-4d17249a1bb3','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240711_184726.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-11 07:47:34','0.72'),(7,'afc243da-4ed4-4a67-b173-1bdb64869e49','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240712_114740.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-12 00:47:48','0.72'),(8,'dfdfb4ad-1459-4227-80a5-9e3ee9a7baf7','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240712_122623.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-12 01:26:27','0.72'),(9,'fa20284a-710b-4d27-a4cd-f1391ce6f2e4','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240712_123217.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-12 01:32:22','0.72'),(10,'7c75d100-a289-4e55-8c2d-3984a6060a00','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240712_124056.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-12 01:41:00','0.72'),(11,'df631089-6a07-4fa8-96d6-5ea2133d1b59','AB000288','273','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000288/woundImage_20240712_165409.png','0.07','0.10','0.00',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-10 05:21:17','2024-07-12 05:54:28','0.00'),(12,'562c0201-fa8f-4892-be11-1f0627411d29','AB000288','273','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000288/woundImage_20240712_165656.png','0.09','2.80','2.90',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-10 05:21:17','2024-07-12 05:57:14','8.12'),(13,'94b54bb0-168a-4911-bed8-909ddfafa93b','AB000287','272','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000287/woundImage_20240712_165841.png','0.08','2.30','2.20',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-10 05:19:25','2024-07-12 05:59:13','5.06'),(14,'dc63f66c-114a-4d8a-913e-a1e40407a549','AB000287','272','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000287/woundImage_20240712_165952.png','0.07','0.70','0.40',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-10 05:19:25','2024-07-12 06:00:27','0.28'),(15,'5429c032-cbf0-4bee-921d-195558ce977f','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240712_174853.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-09 22:31:19','2024-07-12 06:48:57','0.00'),(16,'90bb195d-7316-4e4a-bdae-eaf1a88df145','AB000286','271','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000286/woundImage_20240712_183349.png','0.09','2.60','2.90',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-10 05:17:38','2024-07-12 07:34:16','7.54'),(17,'a04db920-99fb-43b8-ab3a-0c081bccfbce','AB000286','271','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000286/woundImage_20240712_183457.png','0.07','1.60','1.10',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-10 05:17:38','2024-07-12 07:35:22','1.76'),(18,'dd08d442-08fe-4798-946d-0d1f2432c196','AB000286','271','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000286/woundImage_20240712_224356.png','0.08','2.50','1.30',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-10 05:17:38','2024-07-12 11:44:04','3.25'),(19,'7ab7fd75-b60c-4a1b-a01d-1eeacbf487ef','AB000288','273','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000288/woundImage_20240715_113503.png','0.08','2.50','1.30',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-10 05:21:17','2024-07-15 00:35:10','3.25'),(20,'fe3d9aed-1bcb-4a17-b7c9-676806c8fa57','AB000282','267','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000282/woundImage_20240715_113503.png','0.08','1.50','1.40',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-09 21:09:19','2024-07-15 00:35:40','2.10'),(21,'28630989-0ab7-4032-9889-6b913076e265','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240715_114526.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-09 22:31:19','2024-07-15 00:45:36','0.72'),(22,'42b830f6-0c42-43d2-af0d-04ade35adeea','AB000282','267','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000282/woundImage_20240715_115123.png','0.08','0.80','0.80',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-09 21:09:19','2024-07-15 00:51:49','0.64'),(23,'b8f36b52-bd7b-4a69-bfc2-53638004a692','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240715_135314.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-15 02:53:18','0.72'),(24,'877dd68e-d0d2-4a48-a44f-c8e8beaf4c8b','AB000292','277','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000292/t.jpg','0.9','4','2',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-15 00:58:07','2024-07-15 03:14:51','6.5'),(25,'4c99c67c-79e3-416e-a104-06c0fefa777b','AB000291','276','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000291/woundImage_20240715_141549.png','0.08','2.30','0.90',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-15 00:35:50','2024-07-15 03:15:54','2.07'),(26,'86bafd63-1a8e-4bb0-a5ed-35f1beef4e9f','AB000293','278','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000293/woundImage_20240715_170647.png','0.08','2.50','1.30',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-15 03:03:31','2024-07-15 06:06:52','3.25'),(27,'a6954d9a-6c90-4782-bf2c-5fff080f7fe0','AB000294','279','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000294/woundImage_20240716_122933.png','0.07','0.70','0.30',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-16 01:29:12','2024-07-16 01:29:43','0.21'),(28,'4ab0edc3-998b-4489-a72f-e08f9e1a1dcf','AB000294','279','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000294/woundImage_20240716_123017.png','0.08','2.50','1.30',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-16 01:29:12','2024-07-16 01:30:30','3.25'),(29,'99fc1a3d-1a68-49b5-ae44-678f7e49b5ce','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_142440.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-16 03:24:48','0.72'),(30,'0b6b4f9d-ebe2-4ef7-9ac3-cf7001a60db9','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_150908.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-16 04:09:11','0.72'),(31,'9d4f4819-63ac-40bd-9c7c-5eb65482934f','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_151012.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-16 04:10:15','0.72'),(32,'f15f6f90-2aea-42c2-a005-0bcd0d3cd16c','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_151838.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-16 04:18:41','0.72'),(33,'4e5bd569-e42b-4f2c-bc7e-ccc83f2fd464','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_152816.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-16 04:28:19','0.72'),(34,'532777c6-1a56-4ccb-adda-aac563c7e266','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_155251.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-16 04:52:54','0.72'),(35,'e5f030b9-43a8-48df-a5a5-603c88aed697','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_162611.png','0.07','0.80','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-16 05:26:15','0.72'),(36,'42a2c61b-8cb5-43f2-87b2-1c86a771706b','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_164234.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-09 22:31:19','2024-07-16 05:42:40','0.00'),(37,'9a924cec-c25f-4140-93e0-e45a49a3456a','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240716_173356.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-16 06:34:00','0.00'),(38,'7a98d702-08cf-4d92-ac63-f9a68eedf000','AB000283','268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240717_142156.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-09 22:31:19','2024-07-17 03:22:05','0.00'),(39,'abf2dea1-c644-4f2a-9644-49f2df0500e0','AB000303','288','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000303/woundImage_20240717_153112.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 04:30:57','2024-07-17 04:31:16','0.00'),(40,'02e68a6a-a0e1-4b5e-a87d-17f7d4b90949','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240717_161319.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-17 05:13:24','0.00'),(41,'4167b22d-cd3d-463d-94f6-d7cf1453a52f','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240717_162926.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-17 05:29:35','0.00'),(42,'d04f25f7-19da-40fa-a62a-e311a1b0b784','AB000307','292','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000307/woundImage_20240717_170141.png','0.07','1.30','0.70',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-17 06:00:53','2024-07-17 06:02:17','0.91'),(43,'bd2d3d6b-d2fb-4c45-aa99-1b53c27b0a0d','AB000307','292','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000307/woundImage_20240717_170403.png','0.08','2.30','0.90',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-17 06:00:53','2024-07-17 06:04:31','2.07'),(44,'a9de988d-6383-4023-8a41-5af643a76089','AB000307','292','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000307/woundImage_20240717_170628.png','0.08','2.30','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 06:00:53','2024-07-17 06:06:42','2.07'),(45,'ba1e5f75-24c3-4813-abe4-37c204dde370','AB000307','292','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000307/woundImage_20240717_171108.png','0.08','2.40','2.60',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-17 06:00:53','2024-07-17 06:11:26','6.24'),(46,'9c736e21-8459-4bf6-93b6-8c2a664ce768','AB000309','294','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000309/woundImage_20240718_101638.png','0.08','2.30','0.90',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-17 23:16:03','2024-07-17 23:17:18','2.07'),(47,'51b17b39-57c3-4efa-8710-086bf0cbb080','AB000309','294','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000309/woundImage_20240718_102143.png','0.08','2.30','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 23:16:03','2024-07-17 23:22:16','2.07'),(48,'7712a72d-6b66-479f-9448-88cb80af9b76','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_103131.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-17 23:31:35','0.00'),(49,'840dcb83-a488-4ccb-9601-cfd29365c356','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_103248.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-17 23:32:52','0.00'),(50,'8876039f-0694-415d-873b-2b6fc5fbf73e','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_104717.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-17 23:47:23','0.00'),(51,'555ccb57-3f01-4497-b847-c803b9d4cae8','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_105215.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-17 23:52:26','0.00'),(52,'a85ffcf0-376a-4cd2-a8b6-16482579ad51','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_111233.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-18 00:12:52','0.00'),(53,'45b7463e-9984-48b5-9665-25d3e5ba000d','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_112831.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-18 00:28:43','0.00'),(54,'e8105885-91ea-46da-bd7a-b88aae97efd7','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_114816.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-18 00:48:22','0.00'),(55,'a12e8edc-8b77-48c0-a38c-1ec96d16e5e6','AB000310','295','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000310/woundImage_20240718_120623.png','0.09','0.70','0.80',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-18 01:06:05','2024-07-18 01:06:33','0.56'),(56,'3f351e03-4161-4c66-a15a-84235b15b197','AB000310','295','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000310/woundImage_20240718_120709.png','0.09','0.70','0.80',NULL,NULL,NULL,'wound area same',NULL,'2024-07-18 01:06:05','2024-07-18 01:07:13','0.56'),(57,'fb2da95d-d00f-432b-9c32-10b634449481','AB000309','294','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000309/woundImage_20240718_120911.png','0.09','0.70','0.80',NULL,NULL,NULL,'wound area reduced',NULL,'2024-07-17 23:16:03','2024-07-18 01:09:14','0.56'),(58,'ff0dff5f-485c-4bce-a273-de005185367b','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_121533.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-18 01:15:42','0.00'),(59,'0c770db8-43d2-4b30-ae17-a8e6ec51d675','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_122213.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-18 01:22:21','0.00'),(60,'72c06dbf-0f0a-48da-9122-ec49fceec588','AB000310','295','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000310/woundImage_20240718_144850.png','0.08','1.30','0.90',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-18 01:06:05','2024-07-18 03:48:53','1.17'),(61,'75706f58-a7be-4d4c-a29d-9aea9b47be39','AB000310','295','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000310/woundImage_20240718_151336.png','0.08','1.30','0.90',NULL,NULL,NULL,'wound area same',NULL,'2024-07-18 01:06:05','2024-07-18 04:13:41','1.17'),(62,'0c3c822e-d2bd-494f-89c2-bb8045f7a145','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240718_162800.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-18 05:28:03','0.00'),(63,'95fb8210-35e8-4e65-ba46-3f31c3e9b4a9','AB000311','296','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000311/woundImage_20240718_233036.png','0.08','2.50','1.30',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-18 05:42:27','2024-07-18 12:30:41','3.25'),(64,'83354aae-774f-4e48-a0c3-aca960221709','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/woundImage_20240719_104653.png','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-18 23:47:09','0.00'),(65,'93d66bf3-6c32-4dfa-945f-1867c487943c','AB000311','296','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000311/woundImage_20240719_200551.png','0.08','2.50','1.30',NULL,NULL,NULL,'wound area same',NULL,'2024-07-18 05:42:27','2024-07-19 09:06:01','3.25'),(66,'9eef1a29-96fc-4aec-a753-337fd603d5b9','AB000292','277','http://127.0.0.1:5000/uploads/wounds/AB000292/Screenshot_2024-07-19_200816.png','0.8','1','1.5',NULL,NULL,NULL,'wound area reduced','http://127.0.0.1:5000/uploads/assessed_wounds/AB000292/Screenshot_2024-07-19_200838.png','2024-07-15 00:58:07','2024-07-19 09:18:11','2.4'),(67,'ceccc7bf-048f-44fc-abbe-214bab4ae368','AB000311','296','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000311/Screenshot_2024-07-19_200816.png','0.8','1','1.5',NULL,NULL,NULL,'wound area reduced','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000311/Screenshot_2024-07-19_200838.png','2024-07-18 05:42:27','2024-07-19 09:29:31','2.4'),(68,'d7fb1f20-105a-4c72-ac6d-db88ae370de9','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/1000099039.jpg','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same',NULL,'2024-07-17 05:12:51','2024-07-19 11:11:14','0.00'),(69,'006ecc88-3ae0-475d-a156-30c331d325f4','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/1000099039.jpg','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000306/woundImage_20240719_221148.png','2024-07-17 05:12:51','2024-07-19 11:11:49','0.00'),(70,'105599bd-8c0c-47fa-8fa6-32016c1be153','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/1000099039.jpg','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000306/woundImage_20240719_222842.png','2024-07-17 05:12:51','2024-07-19 11:44:51','0.00'),(71,'34ae5f0a-e260-4607-bc1e-6067e643833b','AB000306','291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/1000099039.jpg','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000306/woundImage_20240719_224523.png','2024-07-17 05:12:51','2024-07-19 11:45:32','0.00'),(72,'00542e45-c45a-48de-aa84-a29a5a68495b','AB000312','297','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000312/woundImage_20240720_151247.png','0.08','1.30','1.40',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-20 01:41:26','2024-07-20 01:43:32','1.82'),(73,'c83c400a-62fb-45d9-ac6e-1171652683ca','AB000313','298','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000313/1000191146.jpg','0.08','0.60','1.10',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000313/woundImage_20240720_140548.png','2024-07-20 03:05:26','2024-07-20 03:06:35','0.66'),(74,'079e9036-2778-47bc-ad96-54005d1a2faf','AB000313','298','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000313/1000191142.jpg','0.08','1.10','0.80',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000313/woundImage_20240720_140936.png','2024-07-20 03:05:26','2024-07-20 03:09:54','0.88'),(75,'90dc2b15-dd1e-4ccc-b795-17c3da5d5f21','AB000314','299','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000314/woundImage_20240721_111816.png','0.07','0.60','0.40',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-21 00:17:11','2024-07-21 00:18:48','0.24'),(76,'c8cb559a-9a2c-4f68-9bca-401319575fe6','AB000317','302','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000317/woundImage_20240722_090104.png','0.08','2.30','0.90',NULL,NULL,NULL,'wound area increased',NULL,'2024-07-21 21:50:23','2024-07-21 22:01:11','2.07'),(77,'91ab520b-44b7-4a28-a8b6-9dba7060fa8d','AB000319','304','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000319/CAP_55B63303-98B1-491E-96F9-9A3C86AC6344.jpg','0.08','2.90','2.70',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000319/woundImage_20240722_122638.png','2024-07-22 01:25:56','2024-07-22 01:28:14','7.83'),(78,'98929016-deb2-43f3-be0e-fa4d111b951d','AB000319','304','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000319/image_picker_24A07C5C-CD71-473D-9366-1CAC3207132F-65771-00000A82FA4F6802.jpg','0.08','2.50','1.30',NULL,NULL,NULL,'wound area reduced','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000319/woundImage_20240722_123336.png','2024-07-22 01:33:54','2024-07-22 01:33:54','3.25'),(79,'385e9ea0-d608-46ab-83e2-5d67b23d8785','AB000319','304','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000319/image_picker_EED3AA0B-5392-4736-AC0B-2938F4AD572C-65771-00000AA807E15BF4.jpg','0.08','2.50','1.30',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000319/woundImage_20240722_145007.png','2024-07-22 01:25:56','2024-07-22 03:53:14','3.25'),(80,'73e9cece-83a6-409d-a39b-7459c1ce0f4f','AB000320','305','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000320/CAP_CFA1B9C5-3E64-428B-987B-625C2948B04D.jpg','0.07','0.20','0.40',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000320/woundImage_20240722_150541.png','2024-07-22 04:05:20','2024-07-22 04:06:10','0.08'),(81,'272aabd4-a429-4eb0-9c0f-c6a02436c58a','AB000321','306','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000321/image_picker_0FA56ADE-04AD-426C-866F-8AAA0EF437D6-65771-00000AADF6076EAB.jpg','0.07','2.00','1.20',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000321/woundImage_20240722_150747.png','2024-07-22 04:07:33','2024-07-22 04:08:13','2.40'),(82,'0dd85c36-fe46-41ce-b266-0f847a5b92b2','AB000321','306','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000321/1000189769.jpg','0.08','2.30','0.90',NULL,NULL,NULL,'wound area reduced','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000321/woundImage_20240722_174031.png','2024-07-22 04:07:33','2024-07-22 06:41:01','2.07'),(83,'e85ad8c1-d3cc-4133-8032-f177f32a926f','AB000320','305','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000320/1000188110.jpg','0.09','5.10','2.10',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000320/woundImage_20240722_174144.png','2024-07-22 04:05:20','2024-07-22 06:41:51','10.71'),(84,'865d9c8b-a6c1-43e3-a522-a6b77d2118d4','AB000319','304','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000319/1000188110.jpg','0.09','5.10','2.10',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000319/woundImage_20240722_174250.png','2024-07-22 01:25:56','2024-07-22 06:42:58','10.71'),(85,'63433dc4-989e-4577-8d13-42c921af2c8e','AB000321','306','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000321/image_picker_1A118A83-893F-4A79-8766-C8DFF2FF16DD-69011-00000B9A705E5DED.jpg','0.07','2.00','1.20',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000321/woundImage_20240723_111946.png','2024-07-22 04:07:33','2024-07-23 00:23:43','2.40'),(86,'23fb4f1e-4221-4a32-86af-48ac9b8bed54','AB000323','308','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000323/1000119540.jpg','0.07','1.00','2.00',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000323/woundImage_20240727_152322.png','2024-07-27 04:18:33','2024-07-27 04:24:05','2.00'),(87,'d9d1775b-f978-4af9-9fb3-22a8f0b4b469','AB000315','300','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000315/1000099039.jpg','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000315/woundImage_20240729_110930.png','2024-07-21 20:34:08','2024-07-29 00:09:37','0.00'),(88,'637a4897-908d-44c3-9ba9-85e360b20f85','AB000315','300','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000315/1000099039.jpg','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000315/woundImage_20240729_161300.png','2024-07-21 20:34:08','2024-07-29 05:13:05','0.00'),(89,'8186e261-a6e5-4dbe-a154-efb784daf7bb','AB000315','300','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000315/1000105783.jpg','0.06','0.60','0.30',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000315/woundImage_20240801_182531.png','2024-07-21 20:34:08','2024-08-01 07:25:38','0.18'),(90,'668096dd-dfdd-453f-8332-10c24122f52d','AB000315','300','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000315/1000105783.jpg','0.06','0.60','0.30',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000315/woundImage_20240801_183020.png','2024-07-21 20:34:08','2024-08-01 07:30:33','0.18'),(91,'0f3d18b4-0611-4a34-b484-8e59a9e95d9f','AB000322','307','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000322/CAP1508416131980237186.jpg','0.08','4.20','2.80',NULL,NULL,NULL,'wound area increased','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000322/woundImage_20240809_170307.png','2024-07-25 03:17:59','2024-08-09 06:03:22','11.76'),(92,'9119f5d4-9616-4dd2-aa1e-a030fd44f979','AB000321','306','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000321/CAP6165268618099930138.jpg','0.08','0.90','0.80',NULL,NULL,NULL,'wound area reduced','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000321/woundImage_20240809_170435.png','2024-07-22 04:07:33','2024-08-09 06:04:44','0.72'),(93,'a9b108db-9530-4e8a-9c5a-0541c06717db','AB000322','307','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000322/image_picker_C2916AC0-BE64-44F9-B827-5BE86439A988-2156-000000AA046CC018.jpg','0.05','0.00','0.00',NULL,NULL,NULL,'wound area reduced','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000322/woundImage_20240811_130258.png','2024-07-25 03:17:59','2024-08-11 02:03:03','0.00'),(94,'9211c8e0-3eb4-4b64-84db-0ee9e9e6d2da','AB000322','307','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000322/image_picker_E36342E7-67AB-45F6-B2F1-55AC54241810-2156-000000AA89E213A3.jpg','0.05','0.00','0.00',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000322/woundImage_20240811_130416.png','2024-07-25 03:17:59','2024-08-11 02:04:19','0.00'),(95,'a6a40916-8a5d-4831-bc90-9848f69e4085','AB000326','311','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000326/1000278142.jpg','0.06','0.00','0.10',NULL,NULL,NULL,'wound area same','https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000326/woundImage_20241126_125908.png','2024-11-26 01:55:43','2024-11-26 01:59:25','0.00');
/*!40000 ALTER TABLE `wound_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wounds`
--

DROP TABLE IF EXISTS `wounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wounds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `depth` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `tissue` varchar(255) DEFAULT NULL,
  `edges` varchar(255) DEFAULT NULL,
  `exudate` varchar(255) DEFAULT NULL,
  `due_dt` varchar(255) DEFAULT NULL,
  `exutype` varchar(255) DEFAULT NULL,
  `odour` varchar(255) DEFAULT NULL,
  `periwound` varchar(255) DEFAULT NULL,
  `periwound_type` varchar(255) DEFAULT NULL,
  `infection` varchar(255) DEFAULT NULL,
  `moisture` varchar(255) DEFAULT NULL,
  `last_dressing` varchar(255) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `dressing_recommend` varchar(255) DEFAULT NULL,
  `size_variation` varchar(255) DEFAULT NULL,
  `photo_assessment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wounds_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wounds`
--

LOCK TABLES `wounds` WRITE;
/*!40000 ALTER TABLE `wounds` DISABLE KEYS */;
INSERT INTO `wounds` VALUES (237,'3c8ba729-8b5d-4654-986a-ca580c971106','AB0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 03:18:24','2024-07-05 03:18:24',NULL,NULL),(238,'6d4ac3a4-8d99-4c1a-9980-b7658ed522c8','AB000253',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 03:35:00','2024-07-05 03:35:00',NULL,NULL),(239,'42d70db9-b69f-47e8-9ff8-1a9d5fddd181','AB000254',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 03:35:28','2024-07-05 03:35:28',NULL,NULL),(240,'06edbdb2-b1b1-4a85-90b1-816bc1d045e9','AB000255',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 03:35:45','2024-07-05 03:35:45',NULL,NULL),(241,'dabf999b-8183-48cb-9a6e-1dad170b3f28','AB000256',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 03:39:41','2024-07-05 03:39:41',NULL,NULL),(242,'bd932051-940b-4303-a124-f20caec2e83c','AB000257','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000257/woundImage_20240707_132838.png','unknown','2.4','4.4','0.074',NULL,'Necrotic',NULL,'Heavy',NULL,NULL,NULL,'Healthy','Erythema',NULL,'153.25698754697547',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 03:40:18','2024-07-05 03:40:18','10.56',NULL),(243,'54f4ef33-e6f7-4a12-b026-4a4c8e75cbad','AB000258','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000258/woundImage_20240705_153353.png','unknown','0.9','2','0.075',NULL,'Necrotic',NULL,'Heavy',NULL,NULL,NULL,'Healthy','Erythema',NULL,'176.0855888919793',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 04:32:56','2024-07-05 04:32:56','1.8',NULL),(244,'35f115f5-d192-482e-af99-73b881631bc0','AB000259','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000259/woundImage_20240705_155028.png','unknown','0.7','1.5','0.077',NULL,'Necrotic',NULL,'Heavy',NULL,NULL,NULL,'Healthy','Erythema',NULL,'177.28468969611635',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 04:36:17','2024-07-05 04:36:17','1.0499999999999998',NULL),(245,'64f631f4-42e4-4dcd-962d-f5e4c75a6866','AB000260','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000260/woundImage_20240705_161209.png','unknown','0.7','0.5','0.073',NULL,'Necrotic',NULL,'Heavy',NULL,NULL,NULL,'Healthy','Erythema',NULL,'177.13576137214892',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 04:49:43','2024-07-05 04:49:43','0.35',NULL),(246,'6f9ec84a-0ebc-4754-aeb1-fe8a1dddf885','AB000261','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000261/woundImage_20240709_145225.png','null','0.90','0.80','0.07','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-09 14:52',NULL,NULL,NULL,NULL,NULL,'2024-07-05 04:59:16','2024-07-05 04:59:16','0.72','Pressure Ulcer'),(247,'c5847f16-8d1e-4311-a972-3d6896efbd9c','AB000262','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000262/woundImage_20240709_140019.png','null','0.90','0.80','0.07','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-09 14:00',NULL,NULL,NULL,NULL,NULL,'2024-07-05 05:36:51','2024-07-05 05:36:51','0.72','Pressure Ulcer'),(248,'559f7459-e33f-4b97-a10e-b867d1170a3a','AB000263','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000263/woundImage_20240705_170500.png','Right Leg','0.9','2.4','0.079',NULL,'Necrotic',NULL,'Heavy',NULL,NULL,NULL,'Healthy','Erythema',NULL,'159.5651255912102',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 06:04:43','2024-07-05 06:04:43','2.16',NULL),(249,'b67a8bfb-68a8-4592-98fe-c2c38c984899','AB000264','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000264/woundImage_20240705_191256.png','Left Leg','3.1','3.4','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-05 19:12',NULL,NULL,NULL,NULL,NULL,'2024-07-05 06:08:23','2024-07-05 06:08:23','10.54','Puncture Wounds'),(250,'9bb45708-43f2-4fc6-9064-1daa467b2ebf','AB000265','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000265/woundImage_20240705_172017.png','Left Leg','3.1','3.4','0.08',NULL,'Necrotic',NULL,'Heavy',NULL,NULL,NULL,'Healthy','Erythema',NULL,'161.34485264550483',NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-05 06:19:40','2024-07-05 06:19:40','10.54',NULL),(251,'15576d46-eb36-420f-9643-c8800945cf6f','AB000266','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000266/t.jpg','Left Leg','2','4','0.9','minor','granulation','Clean','serous',NULL,NULL,NULL,'intact','healthy','Viral','moist','2024-07-10 ',NULL,NULL,NULL,NULL,NULL,'2024-07-05 06:21:59','2024-07-11 05:02:11','6.5','abrasion'),(252,'4161556b-4d07-4a5c-ac96-84850ef51cce','AB000267','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000267/woundImage_20240705_202332.png','Left Leg','2.1','5.1','0.088','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-05 20:23',NULL,NULL,NULL,NULL,NULL,'2024-07-05 08:35:07','2024-07-05 08:35:07','10.709999999999999','Pressure Ulcer'),(253,'f09cef7f-d3dc-4ba6-a853-a61960277050','AB000268','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000268/woundImage_20240705_202209.png','Right Arm','2.1','5.1','0.088','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-05 20:22',NULL,NULL,NULL,NULL,NULL,'2024-07-05 09:21:50','2024-07-05 09:21:50','10.709999999999999','Pressure Ulcer'),(254,'7aa538b4-4c74-4b59-9343-8007a3a32f53','AB000269','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000269/woundImage_20240705_202654.png','Left Leg','2.9','2.8','0.089','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','Low  ','2024-07-05 20:26',NULL,NULL,NULL,NULL,NULL,'2024-07-05 09:26:21','2024-07-05 09:26:21','8.12','Pressure Ulcer'),(255,'a432127b-d9a6-4d3c-a829-83b4710611f4','AB000270',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-06 22:53:46','2024-07-06 22:53:46',NULL,NULL),(256,'11980f15-a9d0-4472-972c-fbf280d3d894','AB000271','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000271/woundImage_20240707_185757.png','Right Arm','1.3','2.5','0.082','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-07 18:57',NULL,NULL,NULL,NULL,NULL,'2024-07-07 07:13:22','2024-07-07 07:13:22','3.25','Pressure Ulcer'),(257,'adbcb216-27f8-42b6-9ee3-f4715f730745','AB000272',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-07 07:47:57','2024-07-07 07:47:57',NULL,NULL),(258,'3f9bbf63-6cd2-48b3-b3b2-52ba09ba5677','AB000273','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000273/woundImage_20240707_185033.png','null','1.3','2.5','0.082','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-09 13:03',NULL,NULL,NULL,NULL,NULL,'2024-07-07 07:50:22','2024-07-07 07:50:22','3.25','Pressure Ulcer'),(259,'1fe65693-8e67-45f3-aad3-dd390655c39e','AB000274','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000274/woundImage_20240708_133956.png','null','2.2','3.1','0.081','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-08 13:39',NULL,NULL,NULL,NULL,NULL,'2024-07-07 22:09:20','2024-07-07 22:09:20','6.820000000000001','Pressure Ulcer'),(260,'93d7ceb2-8286-4397-8b7f-d0688a200792','AB000275','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000275/woundImage_20240709_185804.png','Left Arm','1.30','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-09 18:57',NULL,NULL,NULL,NULL,NULL,'2024-07-09 02:00:24','2024-07-09 02:00:24','3.25','Pressure Ulcer'),(261,'54376fe1-448b-4492-b7ef-bf3a51439f72','AB000276',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-09 02:05:49','2024-07-09 02:05:49',NULL,NULL),(262,'8f9a0502-2b17-43f5-b42d-67ee5e0c112e','AB000277',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-09 02:25:21','2024-07-09 02:25:21',NULL,NULL),(263,'1025963c-afce-41ce-a29a-54fceaece20c','AB000275','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000275/woundImage_20240709_185804.png','Left Arm','1.30','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-09 18:57',NULL,NULL,NULL,NULL,NULL,'2024-07-09 05:29:43','2024-07-09 05:29:43','3.25','Pressure Ulcer'),(264,'043c290a-7b62-4459-9f6b-6b676fdf5099','AB000275','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000275/woundImage_20240709_185804.png','Left Arm','1.30','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-09 18:57',NULL,NULL,NULL,NULL,NULL,'2024-07-09 07:57:15','2024-07-09 07:57:15','3.25','Pressure Ulcer'),(265,'6a397246-a1fd-4a7f-b9aa-85b01a2cf99d','AB000280','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000280/woundImage_20240709_205404.png','Left Arm','2.20','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-09 20:53',NULL,NULL,NULL,NULL,NULL,'2024-07-09 08:00:03','2024-07-09 08:00:03','5.50','Pressure Ulcer'),(266,'8fe0dbad-9785-4b96-8830-19b8666f158e','AB000281','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000281/woundImage_20240709_205520.png','Right Arm','1.30','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-09 20:55',NULL,NULL,NULL,NULL,NULL,'2024-07-09 09:55:08','2024-07-09 09:55:08','3.25','Pressure Ulcer'),(267,'2aaee401-8845-4ac7-8861-bb18f9636436','AB000282','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000282/woundImage_20240715_115123.png','Right Arm','0.80','0.80','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','Low  ','2024-07-15 11:51',NULL,NULL,NULL,NULL,NULL,'2024-07-09 21:09:19','2024-07-15 00:51:49','0.64','Pressure Ulcer'),(268,'56214412-83c3-42c2-8f78-10a6dfdde279','AB000283','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000283/woundImage_20240717_142156.png','null','0.00','0.00','0.05','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-17 14:21',NULL,NULL,NULL,NULL,NULL,'2024-07-09 22:31:19','2024-07-17 03:22:05','0.00','Pressure Ulcer'),(269,'3ea2ed28-2e06-4ff7-a6dd-87cc22534944','AB000284','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000284/woundImage_20240711_153934.png','Left Arm','3.80','3.00','0.09','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-11 15:39',NULL,NULL,NULL,NULL,NULL,'2024-07-10 03:11:24','2024-07-10 03:11:24','11.40','Pressure Ulcer'),(270,'70e50fab-df36-48da-a575-b8f818d7651a','AB000285','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000285/woundImage_20240710_164915.png','null','1.40','2.20','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-10 16:49',NULL,NULL,NULL,NULL,NULL,'2024-07-10 03:16:13','2024-07-10 03:16:13','3.08','Pressure Ulcer'),(271,'a79a3e5b-48a4-4253-bb18-2fdb082bf3b7','AB000286','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000286/woundImage_20240712_224356.png','null','1.30','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-12 22:43',NULL,NULL,NULL,NULL,NULL,'2024-07-10 05:17:38','2024-07-12 11:44:04','3.25','Pressure Ulcer'),(272,'6ad7151a-5d18-48bb-9869-0c7b2878cbd3','AB000287','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000287/woundImage_20240712_165952.png','Left Arm','0.40','0.70','0.07','Stage 2','Necrotic','Frayed','Medium',NULL,NULL,NULL,'Epithelializing','Erythema','Viral','Low  ','2024-07-12 16:59',NULL,NULL,NULL,NULL,NULL,'2024-07-10 05:19:25','2024-07-12 06:00:27','0.28','Abrasions'),(273,'a07d8e8b-78b1-4faa-834b-d9e9192a8b7c','AB000288','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000288/woundImage_20240715_113503.png','Left Arm','1.30','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-15 11:34',NULL,NULL,NULL,NULL,NULL,'2024-07-10 05:21:17','2024-07-15 00:35:10','3.25','Pressure Ulcer'),(274,'b306d258-89b7-4762-a7cd-5f228bc8cb9f','AB000289',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-11 00:04:14','2024-07-11 00:04:14',NULL,NULL),(275,'8600f62f-0640-43dd-9476-a9d3e9424ebd','AB000290',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-11 00:05:02','2024-07-11 00:05:02',NULL,NULL),(276,'afc57060-e231-4deb-8954-298f2916539d','AB000291','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000291/woundImage_20240715_141549.png','Right Arm','0.90','2.30','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-15 14:15',NULL,NULL,NULL,NULL,NULL,'2024-07-15 00:35:50','2024-07-15 03:15:54','2.07','Pressure Ulcer'),(277,'735b88b0-9232-4bbb-8317-a1a6e845785f','AB000292','http://127.0.0.1:5000/uploads/wounds/AB000292/Screenshot_2024-07-19_200816.png','left leg','1.5','1','0.8','minor','granulation','Clean','serous',NULL,NULL,NULL,'intact','healthy','Viral','normal','2024-07-15',NULL,NULL,NULL,NULL,'http://127.0.0.1:5000/uploads/assessed_wounds/AB000292/Screenshot_2024-07-19_200838.png','2024-07-15 00:58:07','2024-07-19 09:18:11','2.4','abrasion'),(278,'9bd6f914-510d-4195-a2e5-ee241dccea18','AB000293','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000293/woundImage_20240715_170647.png','Right Arm','1.30','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-15 17:06',NULL,NULL,NULL,NULL,NULL,'2024-07-15 03:03:31','2024-07-15 06:06:52','3.25','Pressure Ulcer'),(279,'18cdd488-7411-4bba-a925-2e193044a710','AB000294','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000294/woundImage_20240716_123017.png','Left Leg','1.30','2.50','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-16 12:30',NULL,NULL,NULL,NULL,NULL,'2024-07-16 01:29:12','2024-07-16 01:30:30','3.25','Lacerations'),(280,'04d03663-cc04-4479-810f-7da6991dba70','AB000295',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 02:09:01','2024-07-17 02:09:01',NULL,NULL),(281,'c9fb4e8f-177d-4c72-a232-46bfc5e79a1d','AB000296',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 02:11:11','2024-07-17 02:11:11',NULL,NULL),(282,'247f4c6b-82e3-4902-b1c4-54614fba9954','AB000297',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 02:31:01','2024-07-17 02:31:01',NULL,NULL),(283,'2f74775d-37a0-4ec6-bc01-8f7837bfc653','AB000298',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 02:37:13','2024-07-17 02:37:13',NULL,NULL),(284,'6dea902d-df40-4c7a-8dc5-2ba85ce740f6','AB000299',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 03:23:57','2024-07-17 03:23:57',NULL,NULL),(285,'56c1498f-f879-433a-aa9a-e704d49da056','AB000300',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 03:25:33','2024-07-17 03:25:33',NULL,NULL),(286,'c3a61602-63c2-4f80-b011-65e8b4dc5a81','AB000301',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 03:29:59','2024-07-17 03:29:59',NULL,NULL),(287,'f6399922-cf1d-4057-8d9b-4e417f9b9672','AB000302',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 04:21:02','2024-07-17 04:21:02',NULL,NULL),(288,'f8e28f8a-45f8-4fdf-9369-a19f29a81784','AB000303','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000303/woundImage_20240717_153112.png','null','0.00','0.00','0.05','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-17 15:31',NULL,NULL,NULL,NULL,NULL,'2024-07-17 04:30:57','2024-07-17 04:31:16','0.00','Pressure Ulcer'),(289,'d79ade07-689a-4b0d-8df6-8886dd4bf53a','AB000304',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 04:34:41','2024-07-17 04:34:41',NULL,NULL),(290,'47b94d48-48c6-47b3-a3af-26e5d6e85504','AB000305',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 04:50:59','2024-07-17 04:50:59',NULL,NULL),(291,'64e0c7f5-d835-4d6a-964e-de9c0da1a022','AB000306','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000306/1000099039.jpg','Left Hand','0.00','0.00','0.05','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-19 22:45',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000306/woundImage_20240719_224523.png','2024-07-17 05:12:51','2024-07-19 11:45:32','0.00','Pressure Ulcer'),(292,'ffb499cf-28b3-4316-aeac-013154ddbb13','AB000307','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000307/woundImage_20240717_171108.png','Left Leg','2.60','2.40','0.08','Stage 1','Eschar','Sinus','Minimal',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-17 17:10',NULL,NULL,NULL,NULL,NULL,'2024-07-17 06:00:53','2024-07-17 06:11:26','6.24','Abrasions'),(293,'a21f3226-863d-446e-8bc4-3e0a3d5f6c37','AB000308',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-17 23:10:07','2024-07-17 23:10:07',NULL,NULL),(294,'5e226888-0680-41f8-8075-be15fefef7b2','AB000309','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000309/woundImage_20240718_120911.png','null','0.80','0.70','0.09','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-18 12:09',NULL,NULL,NULL,NULL,NULL,'2024-07-17 23:16:03','2024-07-18 01:09:14','0.56','Pressure Ulcer'),(295,'f461f34b-bcfd-4018-a792-0e5606b0e443','AB000310','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000310/woundImage_20240718_151336.png','null','0.90','1.30','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','Low  ','2024-07-18 15:13',NULL,NULL,NULL,NULL,NULL,'2024-07-18 01:06:05','2024-07-18 04:13:41','1.17','Pressure Ulcer'),(296,'5e8b7c67-6867-42d4-b3f6-761971a7eed8','AB000311','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000311/Screenshot_2024-07-19_200816.png','left leg','1.5','1','0.8','minor','granulation','Clean','serous',NULL,NULL,NULL,'intact','healthy','Viral','normal','2024-07-15',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000311/Screenshot_2024-07-19_200838.png','2024-07-18 05:42:27','2024-07-19 09:29:31','2.4','abrasion'),(297,'0877e679-56d1-4813-9f74-e5097fea5657','AB000312','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000312/woundImage_20240720_151247.png','null','1.40','1.30','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','Low  ','2024-07-20 15:12',NULL,NULL,NULL,NULL,NULL,'2024-07-20 01:41:26','2024-07-20 01:43:32','1.82','Pressure Ulcer'),(298,'7a4d1bf4-732e-4fcf-a329-ca058cf351d9','AB000313','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000313/1000191142.jpg','null','0.80','1.10','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','Low  ','2024-07-20 14:09',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000313/woundImage_20240720_140936.png','2024-07-20 03:05:26','2024-07-20 03:09:54','0.88','Pressure Ulcer'),(299,'35f83d3d-7027-44fb-8ccf-a73371a848c4','AB000314','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000314/woundImage_20240721_111816.png','null','0.40','0.60','0.07','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','Low  ','2024-07-21 11:18',NULL,NULL,NULL,NULL,NULL,'2024-07-21 00:17:11','2024-07-21 00:18:48','0.24','Pressure Ulcer'),(300,'9d34fc2a-5eb7-4777-aef3-b4f963a08d7a','AB000315','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000315/1000105783.jpg','null','0.30','0.60','0.06','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-08-01 18:30',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000315/woundImage_20240801_183020.png','2024-07-21 20:34:08','2024-08-01 07:30:33','0.18','Pressure Ulcer'),(301,'3874c9b8-2d7e-467c-998d-15de258a945c','AB000316',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-21 21:49:06','2024-07-21 21:49:06',NULL,NULL),(302,'441efdba-b22d-4f65-9978-af8467cdf3c7','AB000317','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000317/woundImage_20240722_090104.png','null','0.90','2.30','0.08','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-22 09:00',NULL,NULL,NULL,NULL,NULL,'2024-07-21 21:50:23','2024-07-21 22:01:11','2.07','Pressure Ulcer'),(303,'db1edcbe-0009-4f5c-886d-fa7cfaaf0c95','AB000318',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-21 22:22:01','2024-07-21 22:22:01',NULL,NULL),(304,'31fb1549-d20a-4c56-a30a-718a20d283b4','AB000319','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000319/1000188110.jpg','null','2.10','5.10','0.09','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-22 17:42',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000319/woundImage_20240722_174250.png','2024-07-22 01:25:56','2024-07-22 06:42:58','10.71','Pressure Ulcer'),(305,'b4444cb8-0b5e-42fa-98cc-675bb0656324','AB000320','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000320/1000188110.jpg','null','2.10','5.10','0.09','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-07-22 17:41',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000320/woundImage_20240722_174144.png','2024-07-22 04:05:20','2024-07-22 06:41:51','10.71','Pressure Ulcer'),(306,'198513d7-4321-4018-aaed-58b01ccc03e5','AB000321','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000321/CAP6165268618099930138.jpg','null','0.80','0.90','0.08','Stage 1','Slough','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','Low  ','2024-08-09 17:04',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000321/woundImage_20240809_170435.png','2024-07-22 04:07:33','2024-08-09 06:04:44','0.72','Pressure Ulcer'),(307,'39e0ae5c-b603-4926-bae9-7df6f4b23a1c','AB000322','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000322/image_picker_E36342E7-67AB-45F6-B2F1-55AC54241810-2156-000000AA89E213A3.jpg','null','0.00','0.00','0.05','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','High  ','2024-08-11 13:04',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000322/woundImage_20240811_130416.png','2024-07-25 03:17:59','2024-08-11 02:04:19','0.00','Pressure Ulcer'),(308,'cd026c30-eadc-4f6f-9cac-449abc37e0a7','AB000323','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000323/1000119540.jpg','null','2.00','1.00','0.07','Stage 4','Slough','Frayed','Medium',NULL,NULL,NULL,'Cellulitic','Papule','Fungal','High  ','2024-07-27 15:22',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000323/woundImage_20240727_152322.png','2024-07-27 04:18:33','2024-07-27 04:24:05','2.00','Diabetic Foot'),(309,'2aa337e4-0722-442a-a117-3f9f603c0247','AB000324',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-08-26 06:44:12','2024-08-26 06:44:12',NULL,NULL),(310,'61e4862a-aeed-4e56-bdc5-fb7875b56e7e','AB000325',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 01:52:40','2024-11-26 01:52:40',NULL,NULL),(311,'e5cd10ba-1ba3-4e9d-97aa-aa7ca8f91fdd','AB000326','https://api.smartheal.waysdatalabs.com/uploads/wounds/AB000326/1000278142.jpg','null','0.10','0.00','0.06','Stage 1','Necrotic','Clean','Heavy',NULL,NULL,NULL,'Healthy','Erythema','Viral','Low  ','2024-11-26 12:58',NULL,NULL,NULL,NULL,'https://api.smartheal.waysdatalabs.com/uploads/assessed_wounds/AB000326/woundImage_20241126_125908.png','2024-11-26 01:55:43','2024-11-26 01:59:25','0.00','Pressure Ulcer'),(312,'039d7b85-e871-447d-bc9b-15a5b8dfbdff','AB000327',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-11-26 03:05:52','2024-11-26 03:05:52',NULL,NULL);
/*!40000 ALTER TABLE `wounds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-27 12:01:57
