-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 05, 2022 at 03:37 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fhirbyte`
--

-- --------------------------------------------------------

--
-- Table structure for table `datatype_address`
--

DROP TABLE IF EXISTS `datatype_address`;
CREATE TABLE IF NOT EXISTS `datatype_address` (
  `dt_address_id` int(10) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(1000) NOT NULL,
  `field_name` varchar(1000) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `use` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postalcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25004 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_address`
--

INSERT INTO `datatype_address` (`dt_address_id`, `entity_name`, `field_name`, `entity_id`, `active_flag`, `create_dtm`, `create_user_id`, `use`, `type`, `text`, `city`, `district`, `state`, `postalcode`, `country`, `period_start`, `period_end`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(25000, 'patient', 'address', 2000, 1, '2022-06-26 00:00:00', 1000, 'home', 'physical', '1000 Deer Creek Road, Palo Alto', 'San Francisco', 'Santa Clara', 'CA', '94304', 'USA', NULL, NULL, '2022-06-26 00:00:00', 1000, 1),
(25001, 'patient', 'address', 2001, 1, '2022-06-26 00:00:00', 1000, 'home', 'physical', '1 Letterman C #420 Presidio, Dr Bldg', 'San Francisco', 'Santa Clara', 'CA', '94129', 'USA', NULL, NULL, '2022-06-26 00:00:00', 1000, 1),
(25002, 'organization_contact', 'address', 35000, 1, '2022-06-26 00:00:00', 1000, 'business', 'physical', '12 Postman C #420 Residio , Doc Bldg', 'San Francisco', 'Santa Clara', 'CA', '32211', 'USA', NULL, NULL, '2022-06-26 00:00:00', 1000, 1),
(25003, 'practitioner', 'address', 40000, 1, '2022-06-26 00:00:00', 1000, 'home', 'physical', '12 Monk Street', 'San Francisco', 'Santa Clara', 'CA', '23211', 'USA', NULL, NULL, '2022-06-26 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_address_line`
--

DROP TABLE IF EXISTS `datatype_address_line`;
CREATE TABLE IF NOT EXISTS `datatype_address_line` (
  `dt_address_line_id` int(10) NOT NULL AUTO_INCREMENT,
  `dt_address_id` int(10) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `line` varchar(1000) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_address_line_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_address_line`
--

INSERT INTO `datatype_address_line` (`dt_address_line_id`, `dt_address_id`, `active_flag`, `create_dtm`, `create_user_id`, `line`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(1, 25000, 1, '2022-06-26 00:00:00', 1000, '1000 Deer Creek Road', '2022-06-26 00:00:00', 1000, 1),
(2, 25000, 1, '2022-06-26 00:00:00', 1000, 'Palo Alto, CA 94304 United States', '2022-06-26 00:00:00', 1000, 1),
(3, 25001, 1, '2022-06-26 00:00:00', 1000, '1 Letterman C #420 Presidio', '2022-06-26 00:00:00', 1000, 1),
(4, 25001, 1, '2022-06-26 00:00:00', 1000, 'Dr Bldg, San Francisco', '2022-06-26 00:00:00', 1000, 1),
(5, 25001, 1, '2022-06-26 00:00:00', 1000, 'California 94129, US', '2022-06-26 00:00:00', 1000, 1),
(6, 25002, 1, '2022-06-26 00:00:00', 1000, '12 Postman', '2022-06-26 00:00:00', 1000, 1),
(7, 25002, 1, '2022-06-26 00:00:00', 1000, 'C #420 Residio', '2022-06-26 00:00:00', 1000, 1),
(8, 25002, 1, '2022-06-26 00:00:00', 1000, 'Doc Bldg', '2022-06-26 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_attachment`
--

DROP TABLE IF EXISTS `datatype_attachment`;
CREATE TABLE IF NOT EXISTS `datatype_attachment` (
  `dt_attach_id` int(10) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(1000) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `contenttype` varchar(1000) DEFAULT NULL,
  `language` varchar(1000) DEFAULT NULL,
  `data` text,
  `url` varchar(1000) DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `hash` text,
  `title` varchar(1000) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `datatype_codeableconcept`
--

DROP TABLE IF EXISTS `datatype_codeableconcept`;
CREATE TABLE IF NOT EXISTS `datatype_codeableconcept` (
  `dt_code_concept_id` int(10) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(1000) DEFAULT NULL,
  `field_name` varchar(1000) NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `dt_coding_id` int(11) NOT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_code_concept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6016 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_codeableconcept`
--

INSERT INTO `datatype_codeableconcept` (`dt_code_concept_id`, `entity_name`, `field_name`, `entity_id`, `active_flag`, `create_dtm`, `create_user_id`, `dt_coding_id`, `text`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(6000, 'patient', 'marital_status', 2000, 1, NULL, NULL, 5, 'Married', NULL, NULL, NULL),
(6001, 'patient_contact', 'relationship', 2000, 1, NULL, NULL, 21, 'Next-of-Kin', NULL, NULL, NULL),
(6002, 'patient_communication', 'language', 15000, 1, NULL, NULL, 40, 'English (United States)', NULL, NULL, NULL),
(6003, 'patient_communication', 'language', 15001, 1, NULL, NULL, 40, 'English (United States)', NULL, NULL, NULL),
(6004, 'patient_communication', 'language', 15002, 1, NULL, NULL, 24, 'Arabic', NULL, NULL, NULL),
(6005, 'patient_communication', 'language', 15003, 1, NULL, NULL, 75, 'Chinese', NULL, NULL, NULL),
(6006, 'patient_communication', 'language', 15004, 1, NULL, NULL, 68, 'Russian', NULL, NULL, NULL),
(6007, 'organization_contact', 'purpose', 15004, 1, NULL, NULL, 92, 'Administrative', NULL, NULL, NULL),
(6008, 'organization', 'type', 12000, 1, NULL, NULL, 97, 'Healthcare Provider', NULL, NULL, NULL),
(6009, 'organization', 'type', 12001, 1, NULL, NULL, 97, 'Healthcare Provider', NULL, NULL, NULL),
(6010, 'organization', 'type', 12002, 1, NULL, NULL, 97, 'Healthcare Provider', NULL, NULL, NULL),
(6011, 'organization', 'type', 12003, 1, NULL, NULL, 97, 'Healthcare Provider', NULL, NULL, NULL),
(6012, 'organization', 'type', 12004, 1, NULL, NULL, 82, 'Government', NULL, NULL, NULL),
(6013, 'practitioner', 'communication', 40000, 1, NULL, NULL, 40, 'English (United States)', NULL, NULL, NULL),
(6014, 'practitioner', 'communication', 40001, 1, NULL, NULL, 40, 'English (United States)', NULL, NULL, NULL),
(6015, 'practitioner', 'communication', 40002, 1, NULL, NULL, 40, 'English (United States)', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_coding`
--

DROP TABLE IF EXISTS `datatype_coding`;
CREATE TABLE IF NOT EXISTS `datatype_coding` (
  `dt_coding_id` int(10) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `code_set` varchar(100) DEFAULT NULL,
  `system` varchar(1000) DEFAULT NULL,
  `version` varchar(1000) DEFAULT NULL,
  `code` varchar(1000) DEFAULT NULL,
  `display` varchar(1000) DEFAULT NULL,
  `userselected` varchar(10) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_coding_id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_coding`
--

INSERT INTO `datatype_coding` (`dt_coding_id`, `active_flag`, `create_dtm`, `create_user_id`, `code_set`, `system`, `version`, `code`, `display`, `userselected`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(1, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'A', 'Annulled', NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'D', 'Divorced', NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'I', 'Interlocutory', NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'L', 'Legally Separated', NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'M', 'Married', NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'C', 'Common Law', NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'P', 'Polygamous', NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'T', 'Domestic partner', NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'U', 'unmarried', NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'S', 'Never Married', NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'W', 'Widowed', NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, 'MARITAL_STATUS', 'https://terminology.hl7.org/', NULL, 'UNK', 'unknown', NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'BP', 'Billing contact person', NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'CP', 'Contact person', NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'EP', 'Emergency contact person', NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'PR', 'Person preparing referral', NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'E', 'Employer', NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'C', 'Emergency Contact', NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'F', 'Federal Agency', NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'I', 'Insurance Company', NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'N', 'Next-of-Kin', NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'S', 'State Agency', NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, 'PATIENT_CONTACT_RELATIONSHIP', 'https://terminology.hl7.org/', NULL, 'U', 'Unknown', NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'ar', 'Arabic', NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'bn', 'Bengali', NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'cs', 'Czech', NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'da', 'Danish', NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'de', 'German', NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'de-AT', 'German (Austria)', NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'de-CH', 'German (Switzerland)', NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'de-DE', 'German (Germany)', NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'el', 'Greek', NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'en', 'English', NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'en-AU', 'English (Australia)', NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'en-CA', 'English (Canada)', NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'en-GB', 'English (Great Britain)', NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'en-IN', 'English (India)', NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'en-NZ', 'English (New Zeland)', NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'en-SG', 'English (Singapore)', NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'en-US', 'English (United States)', NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'es', 'Spanish', NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'es-AR', 'Spanish (Argentina)', NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'es-ES', 'Spanish (Spain)', NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'es-UY', 'Spanish (Uruguay)', NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'fi', 'Finnish', NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'fr', 'French', NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'fr-BE', 'French (Belgium)', NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'fr-CH', 'French (Switzerland)', NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'fr-FR', 'French (France)', NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'fy', 'Frysian', NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'fy-NL', 'Frysian (Netherlands)', NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'hi', 'Hindi', NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'hr', 'Croatian', NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'it', 'Italian', NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'it-CH', 'Italian (Switzerland)', NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'it-IT', 'Italian (Italy)', NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'ja', 'Japanese', NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'ko', 'Korean', NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'nl', 'Dutch', NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'nl-BE', 'Dutch (Belgium)', NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'nl-NL', 'Dutch (Netherlands)', NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'no', 'Norwegian', NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'no-NO', 'Norwegian (Norway)', NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'pa', 'Punjabi', NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'pl', 'Polish', NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'pt', 'Portuguese', NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'pt-BR', 'Portuguese (Brazil)', NULL, NULL, NULL, NULL),
(68, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'ru', 'Russian', NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'ru-RU', 'Russian (Russia)', NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'sr', 'Serbian', NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'sr-RS', 'Serbian (Serbia)', NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'sv', 'Swedish', NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'sv-SE', 'Swedish (Sweden)', NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'te', 'Telegu', NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'zh', 'Chinese', NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'zh-CN', 'Chinese (China)', NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'zh-HK', 'Chinese (Hong Kong)', NULL, NULL, NULL, NULL),
(78, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'zh-SG', 'Chinese (Singapore)', NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, 'LANGUAGE', 'https://terminology.hl7.org/', NULL, 'zh-TW', 'Chinese (Taiwan)', NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'dept', 'Hospital Department', NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'team', 'Organizational team', NULL, NULL, NULL, NULL),
(82, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'govt', 'Government', NULL, NULL, NULL, NULL),
(83, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'ins', 'Insurance Company', NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'pay', 'Payer', NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'edu', 'Educational Institute', NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'reli', 'Religious Institution', NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'crs', 'Clinical Research Sponsor', NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'cg', 'Community Group', NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'bus', 'Non-Healthcare Business or Corporation', NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'other', 'Other', NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, 'CONTACT_ENTITY_TYPE', 'http://terminology.hl7.org/CodeSystem/contactentity-type', NULL, 'BILL', 'Billing', NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, 'CONTACT_ENTITY_TYPE', 'http://terminology.hl7.org/CodeSystem/contactentity-type', NULL, 'ADMIN', 'Administrative', NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, 'CONTACT_ENTITY_TYPE', 'http://terminology.hl7.org/CodeSystem/contactentity-type', NULL, 'HR', 'Human Resource', NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, 'CONTACT_ENTITY_TYPE', 'http://terminology.hl7.org/CodeSystem/contactentity-type', NULL, 'PAYOR', 'Payor', NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, 'CONTACT_ENTITY_TYPE', 'http://terminology.hl7.org/CodeSystem/contactentity-type', NULL, 'PATINF', 'Patient', NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, 'CONTACT_ENTITY_TYPE', 'http://terminology.hl7.org/CodeSystem/contactentity-type', NULL, 'PRESS', 'Press', NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, 'ORGANIZATION_TYPE', 'https://terminology.hl7.org/', NULL, 'prov', 'Healthcare Provider', NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'PN', 'Advanced Practice Nurse', NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'AAS', 'Associate of Applied Science', NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'AA', 'Associate of Arts', NULL, NULL, NULL, NULL),
(101, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'ABA', 'Associate of Business Administration', NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'AE', 'Associate of Engineering', NULL, NULL, NULL, NULL),
(103, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'AS', 'Associate of Science', NULL, NULL, NULL, NULL),
(104, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BA', 'Bachelor of Arts', NULL, NULL, NULL, NULL),
(105, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BBA', 'Bachelor of Business Administration', NULL, NULL, NULL, NULL),
(106, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BE', 'Bachelor or Engineering', NULL, NULL, NULL, NULL),
(107, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BFA', 'Bachelor of Fine Arts', NULL, NULL, NULL, NULL),
(108, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BN', 'Bachelor of Nursing', NULL, NULL, NULL, NULL),
(109, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BS', 'Bachelor of Science', NULL, NULL, NULL, NULL),
(110, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BSL', 'Bachelor of Science - Law', NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BSN', 'Bachelor on Science - Nursing', NULL, NULL, NULL, NULL),
(112, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'BT', 'Bachelor of Theology', NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CER', 'Certificate', NULL, NULL, NULL, NULL),
(114, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CANP', 'Certified Adult Nurse Practitioner', NULL, NULL, NULL, NULL),
(115, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CMA', 'Certified Medical Assistant', NULL, NULL, NULL, NULL),
(116, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CNP', 'Certified Nurse Practitioner', NULL, NULL, NULL, NULL),
(117, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CNM', 'Certified Nurse Midwife', NULL, NULL, NULL, NULL),
(118, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CRN', 'Certified Registered Nurse', NULL, NULL, NULL, NULL),
(119, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CNS', 'Certified Nurse Specialist', NULL, NULL, NULL, NULL),
(120, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CPNP', 'Certified Pediatric Nurse Practitioner', NULL, NULL, NULL, NULL),
(121, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'CTR', 'Certified Tumor Registrar', NULL, NULL, NULL, NULL),
(122, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'DIP', 'Diploma', NULL, NULL, NULL, NULL),
(123, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'DBA', 'Doctor of Business Administration', NULL, NULL, NULL, NULL),
(124, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'DED', 'Doctor of Education', NULL, NULL, NULL, NULL),
(125, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'PharmD', 'Doctor of Pharmacy', NULL, NULL, NULL, NULL),
(126, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'PHE', 'Doctor of Engineering', NULL, NULL, NULL, NULL),
(127, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'PHD', 'Doctor of Philosophy', NULL, NULL, NULL, NULL),
(128, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'PHS', 'Doctor of Science', NULL, NULL, NULL, NULL),
(129, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MD', 'Doctor of Medicine', NULL, NULL, NULL, NULL),
(130, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'DO', 'Doctor of Osteopathy', NULL, NULL, NULL, NULL),
(131, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'EMT', 'Emergency Medical Technician', NULL, NULL, NULL, NULL),
(132, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'EMTP', 'Emergency Medical Technician - Paramedic', NULL, NULL, NULL, NULL),
(133, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'FPNP', 'Family Practice Nurse Practitioner', NULL, NULL, NULL, NULL),
(134, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'HS', 'High School Graduate', NULL, NULL, NULL, NULL),
(135, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'JD', 'Juris Doctor', NULL, NULL, NULL, NULL),
(136, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MA', 'Master of Arts', NULL, NULL, NULL, NULL),
(137, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MBA', 'Master of Business Administration', NULL, NULL, NULL, NULL),
(138, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MCE', 'Master of Civil Engineering', NULL, NULL, NULL, NULL),
(139, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MDI', 'Master of Divinity', NULL, NULL, NULL, NULL),
(140, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MED', 'Master of Education', NULL, NULL, NULL, NULL),
(141, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MEE', 'Master of Electrical Engineering', NULL, NULL, NULL, NULL),
(142, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'ME', 'Master of Engineering', NULL, NULL, NULL, NULL),
(143, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MFA', 'Master of Fine Arts', NULL, NULL, NULL, NULL),
(144, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MME', 'Master of Mechanical Engineering', NULL, NULL, NULL, NULL),
(145, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MS', 'Master of Science', NULL, NULL, NULL, NULL),
(146, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MSL', 'Master of Science - Law', NULL, NULL, NULL, NULL),
(147, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MSN', 'Master of Science - Nursing', NULL, NULL, NULL, NULL),
(148, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MTH', 'Master of Theology', NULL, NULL, NULL, NULL),
(149, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MDA', 'Medical Assistant', NULL, NULL, NULL, NULL),
(150, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'MT', 'Medical Technician', NULL, NULL, NULL, NULL),
(151, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'NG', 'Non-Graduate', NULL, NULL, NULL, NULL),
(152, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'NP', 'Nurse Practitioner', NULL, NULL, NULL, NULL),
(153, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'PA', 'Physician Assistant', NULL, NULL, NULL, NULL),
(154, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'RMA', 'Registered Medical Assistant', NULL, NULL, NULL, NULL),
(155, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'RN', 'Registered Nurse', NULL, NULL, NULL, NULL),
(156, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'RPH', 'Registered Pharmacist', NULL, NULL, NULL, NULL),
(157, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'SEC', 'Secretarial Certificate', NULL, NULL, NULL, NULL),
(158, NULL, NULL, NULL, 'DEGREE_LICENSE_CERTIFICATE', 'http://terminology.hl7.org/ValueSet/v2-0360', NULL, 'TS', 'Trade School Graduate', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_contactpoint`
--

DROP TABLE IF EXISTS `datatype_contactpoint`;
CREATE TABLE IF NOT EXISTS `datatype_contactpoint` (
  `dt_contactpoint_id` int(10) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(1000) NOT NULL,
  `field_name` varchar(1000) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `system` varchar(1000) DEFAULT NULL,
  `value` varchar(1000) DEFAULT NULL,
  `use` varchar(1000) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_contactpoint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9008 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_contactpoint`
--

INSERT INTO `datatype_contactpoint` (`dt_contactpoint_id`, `entity_name`, `field_name`, `entity_id`, `active_flag`, `create_dtm`, `create_user_id`, `system`, `value`, `use`, `rank`, `period_start`, `period_end`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(4000, 'patient', 'telecom', 2000, 1, '2022-06-25 00:00:00', 1000, 'phone', '999-999-9999', 'home', 1, NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(4001, 'patient', 'telecom', 2000, 1, '2022-06-25 00:00:00', 1000, 'email', 'elon@gmail.com', 'work', 1, NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(4002, 'patient', 'telecom', 2001, 1, '2022-06-25 00:00:00', 1000, 'phone', '888-888-8888', 'home', 1, NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(4003, 'patient', 'telecom', 2001, 1, '2022-06-25 00:00:00', 1000, 'email', 'peter@gmail.com', 'work', 1, NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(4004, 'organization_contact', 'telecom', 2001, 1, '2022-06-25 00:00:00', 1000, 'email', 'south@gmail.com', 'work', 1, NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(9005, 'organization_contact', 'telecom', 2001, 1, '2022-06-25 00:00:00', 1000, 'phone', '666-666-666', 'work ', 1, NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(9006, 'practitioner', 'telecom', 40000, 1, '2022-06-25 00:00:00', 1000, 'phone', '222-222-222', 'work ', 1, NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(9007, 'practitioner', 'telecom', 40000, 1, '2022-06-25 00:00:00', 1000, 'email', 'richard@gmail.com', 'work ', 1, NULL, NULL, '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_human_name`
--

DROP TABLE IF EXISTS `datatype_human_name`;
CREATE TABLE IF NOT EXISTS `datatype_human_name` (
  `dt_human_name_id` int(10) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(1000) NOT NULL,
  `field_name` varchar(1000) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `use` varchar(1000) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `family` varchar(1000) DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_human_name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8010 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_human_name`
--

INSERT INTO `datatype_human_name` (`dt_human_name_id`, `entity_name`, `field_name`, `entity_id`, `active_flag`, `create_dtm`, `create_user_id`, `use`, `text`, `family`, `period_start`, `period_end`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(8000, 'patient', 'name', 2000, 1, '2022-06-24 00:00:00', 1000, 'official', 'Elon Musk', 'Musk', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8001, 'patient', 'name', 2001, 1, '2022-06-24 00:00:00', 1000, 'official', 'Peter Andreas Thiel', 'Thiel', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8002, 'patient', 'name', 2000, 1, '2022-06-24 00:00:00', 1000, 'usual', 'Elon Musk', 'Musk', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8003, 'patient', 'name', 2000, 1, '2022-06-24 00:00:00', 1000, 'nickname', 'Elon Musk', 'Musk', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8004, 'patient', 'name', 2002, 1, '2022-06-24 00:00:00', 1000, 'official', 'عبد الفتاح', 'الفتاح', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8005, 'patient', 'name', 2003, 1, '2022-06-24 00:00:00', 1000, 'official', '马云', '云', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8006, 'patient', 'name', 2004, 1, '2022-06-24 00:00:00', 1000, 'official', 'Деннис Литтл', 'Литтл', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8007, 'practitioner', 'name', 40000, 1, '2022-06-24 00:00:00', 1000, 'official', 'Dr Richard', 'Davis', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8008, 'practitioner', 'name', 40001, 1, '2022-06-24 00:00:00', 1000, 'official', 'Dr Mary', 'Rose', NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(8009, 'practitioner', 'name', 40002, 1, '2022-06-24 00:00:00', 1000, 'official', 'Dr Susan', 'Angelia', NULL, NULL, '2022-06-24 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_human_name_given`
--

DROP TABLE IF EXISTS `datatype_human_name_given`;
CREATE TABLE IF NOT EXISTS `datatype_human_name_given` (
  `dt_human_name_given_id` int(10) NOT NULL AUTO_INCREMENT,
  `dt_human_name_id` int(10) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `given` varchar(1000) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_human_name_given_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9007 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_human_name_given`
--

INSERT INTO `datatype_human_name_given` (`dt_human_name_given_id`, `dt_human_name_id`, `active_flag`, `create_dtm`, `create_user_id`, `given`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(9000, 8000, 1, '2022-06-25 00:00:00', 1000, 'Elon', '2022-06-25 00:00:00', 1000, 1),
(9001, 8000, 1, '2022-06-25 00:00:00', 1000, 'Musk', '2022-06-25 00:00:00', 1000, 1),
(9002, 8001, 1, '2022-06-25 00:00:00', 1000, 'Peter', '2022-06-25 00:00:00', 1000, 1),
(9003, 8001, 1, '2022-06-25 00:00:00', 1000, 'Andreas', '2022-06-25 00:00:00', 1000, 1),
(9004, 8001, 1, '2022-06-25 00:00:00', 1000, 'Theil', '2022-06-25 00:00:00', 1000, 1),
(9005, 8002, 1, '2022-06-25 00:00:00', 1000, 'عبد', '2022-06-25 00:00:00', 1000, 1),
(9006, 8002, 1, '2022-06-25 00:00:00', 1000, 'فتة', '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_human_name_prefix`
--

DROP TABLE IF EXISTS `datatype_human_name_prefix`;
CREATE TABLE IF NOT EXISTS `datatype_human_name_prefix` (
  `dt_human_name_prefix_id` int(10) NOT NULL AUTO_INCREMENT,
  `dt_human_name_id` int(10) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `prefix` varchar(1000) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_human_name_prefix_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9002 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_human_name_prefix`
--

INSERT INTO `datatype_human_name_prefix` (`dt_human_name_prefix_id`, `dt_human_name_id`, `active_flag`, `create_dtm`, `create_user_id`, `prefix`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(9000, 8000, 1, '2022-06-25 00:00:00', 1000, 'Mr.', '2022-06-25 00:00:00', 1000, 1),
(9001, 8001, 1, '2022-06-25 00:00:00', 1000, 'Mr.', '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_human_name_suffix`
--

DROP TABLE IF EXISTS `datatype_human_name_suffix`;
CREATE TABLE IF NOT EXISTS `datatype_human_name_suffix` (
  `dt_human_name_suffix_id` int(10) NOT NULL AUTO_INCREMENT,
  `dt_human_name_id` int(10) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `suffix` varchar(1000) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_human_name_suffix_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9002 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_human_name_suffix`
--

INSERT INTO `datatype_human_name_suffix` (`dt_human_name_suffix_id`, `dt_human_name_id`, `active_flag`, `create_dtm`, `create_user_id`, `suffix`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(9000, 8000, 1, '2022-06-25 00:00:00', 1000, 'PhD', '2022-06-25 00:00:00', 1000, 1),
(9001, 8001, 1, '2022-06-25 00:00:00', 1000, 'PhD', '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_identifier`
--

DROP TABLE IF EXISTS `datatype_identifier`;
CREATE TABLE IF NOT EXISTS `datatype_identifier` (
  `dt_identifier_id` int(10) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(1000) NOT NULL,
  `field_name` varchar(1000) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `use` varchar(1000) DEFAULT NULL,
  `system` varchar(1000) DEFAULT NULL,
  `value` varchar(1000) DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_identifier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5008 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_identifier`
--

INSERT INTO `datatype_identifier` (`dt_identifier_id`, `entity_name`, `field_name`, `entity_id`, `active_flag`, `create_dtm`, `create_user_id`, `use`, `system`, `value`, `period_start`, `period_end`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(5000, 'patient', 'identifier', 2000, 1, '2022-06-25 00:00:00', 1000, 'official', 'http://mrn.com', 'S001', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(5001, 'patient', 'identifier', 2000, 1, '2022-06-25 00:00:00', 1000, 'official', 'http://mrn.com', 'N001', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(5003, 'organization', 'identifier', 12001, 1, '2022-06-25 00:00:00', 1000, 'official', 'http://org.com', 'NHS', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(5002, 'organization', 'identifier', 12000, 1, '2022-06-25 00:00:00', 1000, 'official', 'http://organization.com', 'SHS', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(5004, 'organization', 'identifier', 12002, 1, '2022-06-25 00:00:00', 1000, 'official', 'http://organization.com', 'EHS', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(5005, 'practitioner', 'identifier', 40000, 1, '2022-06-25 00:00:00', 1000, 'official', 'http://practitioner.com', 'D0001', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(5006, 'practitioner', 'identifier', 40001, 1, '2022-06-25 00:00:00', 1000, 'official', 'http://practitioner.com', 'D0002', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(5007, 'practitioner', 'identifier', 40002, 1, '2022-06-25 00:00:00', 1000, 'official', 'http://practitioner.com', 'D0003', NULL, NULL, '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatype_reference`
--

DROP TABLE IF EXISTS `datatype_reference`;
CREATE TABLE IF NOT EXISTS `datatype_reference` (
  `dt_reference_id` int(10) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(1000) NOT NULL,
  `field_name` varchar(1000) DEFAULT NULL,
  `entity_id` int(11) NOT NULL,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `reference` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `identifier` varchar(1000) DEFAULT NULL,
  `display` varchar(1000) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dt_reference_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3007 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype_reference`
--

INSERT INTO `datatype_reference` (`dt_reference_id`, `entity_name`, `field_name`, `entity_id`, `active_flag`, `create_dtm`, `create_user_id`, `reference`, `type`, `identifier`, `display`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(3000, 'organization', 'partOf', 12000, 1, '2022-06-25 00:00:00', 1000, 'Organization/12004', 'Organization', 'INST', '', '2022-06-25 00:00:00', 1000, 1),
(3001, 'organization', 'partOf', 12001, 1, '2022-06-25 00:00:00', 1000, 'Organization/12004', 'Organization', 'INST', '', '2022-06-25 00:00:00', 1000, 1),
(3002, 'organization', 'partOf', 12002, 1, '2022-06-25 00:00:00', 1000, 'Organization/12004', 'Organization', 'INST', '', '2022-06-25 00:00:00', 1000, 1),
(3003, 'organization', 'partOf', 12003, 1, '2022-06-25 00:00:00', 1000, 'Organization/12004', 'Organization', 'INST', '', '2022-06-25 00:00:00', 1000, 1),
(3004, 'patient', 'managingOrganization', 2000, 1, '2022-06-25 00:00:00', 1000, 'Organization/12000', 'Organization', 'SHS', 'South Hospital', '2022-06-25 00:00:00', 1000, 1),
(3005, 'patient', 'managingOrganization', 2001, 1, '2022-06-25 00:00:00', 1000, 'Organization/12000', 'Organization', 'SHS', 'South Hospital', '2022-06-25 00:00:00', 1000, 1),
(3006, 'patient', 'managingOrganization', 2002, 1, '2022-06-25 00:00:00', 1000, 'Organization/12001', 'Organization', 'NHS', 'South Hospital', '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `organization_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL,
  `type_dt_code_concept_id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12005 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organization_id`, `active_flag`, `create_dtm`, `create_user_id`, `active`, `type_dt_code_concept_id`, `name`, `description`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(12000, 1, '2022-06-25 00:00:00', 1000, 'true', 80, 'South Hospital', 'Primary Service', '2022-06-25 00:00:00', 1000, 1),
(12001, 1, '2022-06-25 00:00:00', 1000, 'true', 80, 'North Hospital', 'Ancillary Service', '2022-06-25 00:00:00', 1000, 1),
(12002, 1, '2022-06-25 00:00:00', 1000, 'true', 80, 'East Hospital', 'Ancillary Service', '2022-06-25 00:00:00', 1000, 1),
(12003, 1, '2022-06-25 00:00:00', 1000, 'true', 80, 'West Hospital', 'Ancillary Service', '2022-06-25 00:00:00', 1000, 1),
(12004, 1, '2022-06-25 00:00:00', 1000, 'true', 82, 'Hospital Institution', 'Institution', '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `organization_alias`
--

DROP TABLE IF EXISTS `organization_alias`;
CREATE TABLE IF NOT EXISTS `organization_alias` (
  `organization_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `alias` varchar(1000) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`organization_alias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20004 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization_alias`
--

INSERT INTO `organization_alias` (`organization_alias_id`, `active_flag`, `create_dtm`, `create_user_id`, `organization_id`, `alias`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(20000, 1, '2022-06-25 00:00:00', 1000, 12000, 'SHS', '2022-06-25 00:00:00', 1000, 1),
(20001, 1, '2022-06-25 00:00:00', 1000, 12001, 'NHS', '2022-06-25 00:00:00', 1000, 1),
(20002, 1, '2022-06-25 00:00:00', 1000, 12002, 'EHS', '2022-06-25 00:00:00', 1000, 1),
(20003, 1, '2022-06-25 00:00:00', 1000, 12004, 'INST', '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `organization_contact`
--

DROP TABLE IF EXISTS `organization_contact`;
CREATE TABLE IF NOT EXISTS `organization_contact` (
  `organization_contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `purpose_dt_code_concept_id` int(11) DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`organization_contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35001 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization_contact`
--

INSERT INTO `organization_contact` (`organization_contact_id`, `active_flag`, `create_dtm`, `create_user_id`, `organization_id`, `purpose_dt_code_concept_id`, `period_start`, `period_end`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(35000, NULL, NULL, NULL, 12000, 6007, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `deceased_boolean` varchar(10) DEFAULT NULL,
  `deceased_date_time` datetime DEFAULT NULL,
  `multiple_birth_boolean` varchar(10) DEFAULT NULL,
  `multiple_birth_integer` int(11) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2005 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `active_flag`, `create_dtm`, `create_user_id`, `active`, `gender`, `birth_date`, `deceased_boolean`, `deceased_date_time`, `multiple_birth_boolean`, `multiple_birth_integer`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(2000, 1, '2022-06-24 00:00:00', 1000, 'true', 'male', '1971-06-28', 'false', NULL, NULL, 2, '2022-07-02 00:13:52', 1001, 10),
(2001, 1, '2022-06-24 00:00:00', 1000, 'true', 'male', '1967-10-11', 'false', NULL, NULL, NULL, '2022-07-02 00:13:52', 1001, 10),
(2002, 1, '2022-06-24 00:00:00', 1000, 'true', 'female', '1982-05-11', 'false', NULL, NULL, NULL, '2022-06-24 00:00:00', 1000, 1),
(2003, 0, '2022-06-24 00:00:00', 1000, 'false', 'female', '1990-02-06', 'false', NULL, NULL, NULL, '2022-07-02 00:13:49', 1000, 6),
(2004, 0, '2022-06-24 00:00:00', 1000, 'false', 'male', '2000-08-03', 'false', NULL, NULL, NULL, '2022-07-02 00:13:49', 1000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `patient_communication`
--

DROP TABLE IF EXISTS `patient_communication`;
CREATE TABLE IF NOT EXISTS `patient_communication` (
  `patient_communication_id` int(10) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `preferred` varchar(10) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_communication_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15005 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_communication`
--

INSERT INTO `patient_communication` (`patient_communication_id`, `active_flag`, `create_dtm`, `create_user_id`, `patient_id`, `preferred`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(15000, 1, '2022-06-25 00:00:00', 1000, 2000, 'true', '2022-06-25 00:00:00', 1000, 1),
(15001, 1, '2022-06-25 00:00:00', 1000, 2001, 'true', '2022-06-25 00:00:00', 1000, 1),
(15002, 1, '2022-06-25 00:00:00', 1000, 2002, 'true', '2022-06-25 00:00:00', 1000, 1),
(15003, 1, '2022-06-25 00:00:00', 1000, 2003, 'true', '2022-06-25 00:00:00', 1000, 1),
(15004, 1, '2022-06-25 00:00:00', 1000, 2004, 'true', '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_contact`
--

DROP TABLE IF EXISTS `patient_contact`;
CREATE TABLE IF NOT EXISTS `patient_contact` (
  `patient_contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7003 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_contact`
--

INSERT INTO `patient_contact` (`patient_contact_id`, `active_flag`, `create_dtm`, `create_user_id`, `patient_id`, `gender`, `period_start`, `period_end`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(7000, 1, '2022-06-25 00:00:00', 1000, 2000, 'male', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(7001, 1, '2022-06-25 00:00:00', 1000, 2000, 'female', NULL, NULL, '2022-06-25 00:00:00', 1000, 1),
(7002, 1, '2022-06-25 00:00:00', 1000, 2001, 'female', NULL, NULL, '2022-06-25 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_link`
--

DROP TABLE IF EXISTS `patient_link`;
CREATE TABLE IF NOT EXISTS `patient_link` (
  `patient_link_id` int(10) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `practitioner`
--

DROP TABLE IF EXISTS `practitioner`;
CREATE TABLE IF NOT EXISTS `practitioner` (
  `practitioner_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `deceased_boolean` varchar(10) DEFAULT NULL,
  `deceased_date_time` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`practitioner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40003 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `practitioner`
--

INSERT INTO `practitioner` (`practitioner_id`, `active_flag`, `create_dtm`, `create_user_id`, `active`, `gender`, `birth_date`, `deceased_boolean`, `deceased_date_time`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(40000, 1, '2022-07-05 00:00:00', 1000, 'true', 'male', '1967-02-05', 'false', NULL, '2022-07-05 00:00:00', 1000, 1),
(40001, 1, '2022-07-05 00:00:00', 1000, 'true', 'female', '1987-09-18', 'false', NULL, '2022-07-05 00:00:00', 1000, 1),
(40002, 1, '2022-07-05 00:00:00', 1000, 'true', 'female', '1982-09-12', 'false', NULL, '2022-07-05 00:00:00', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `practitioner_qualification`
--

DROP TABLE IF EXISTS `practitioner_qualification`;
CREATE TABLE IF NOT EXISTS `practitioner_qualification` (
  `practitioner_qualification_id` int(10) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `practitioner_id` int(11) DEFAULT NULL,
  `code_dt_code_concept_id` int(11) DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`practitioner_qualification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70000 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_flag` int(1) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `authorization_key` varchar(25) NOT NULL,
  `updt_dtm` datetime DEFAULT NULL,
  `updt_user_id` int(11) DEFAULT NULL,
  `updt_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `active_flag`, `create_dtm`, `create_user_id`, `full_name`, `authorization_key`, `updt_dtm`, `updt_user_id`, `updt_cnt`) VALUES
(1000, 1, '2022-06-22 00:00:00', 1000, 'Admin User', 'hcytgplrqi565qcwkutl2jogz', '2022-06-22 00:00:00', 1000, 1),
(1001, 1, '2022-06-22 00:00:00', 1000, 'Developer User', 'aklas9by312nd031ncls32dki', '2022-06-22 00:00:00', 1000, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
