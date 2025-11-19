-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2025 at 06:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweet_potato_tec_db`
--
CREATE DATABASE IF NOT EXISTS `sweet_potato_tec_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sweet_potato_tec_db`;

-- --------------------------------------------------------

--
-- Table structure for table `address_line_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `address_line_entity` (
  `individualAddressLineID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  `addressLineNumber` int(11) NOT NULL,
  PRIMARY KEY (`individualAddressLineID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `address_line_entity`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_line_entity_junction`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `address_line_entity_junction` (
  `addrLineJuncID` int(11) NOT NULL AUTO_INCREMENT,
  `individualAddressLineID` int(11) NOT NULL,
  PRIMARY KEY (`addrLineJuncID`),
  KEY `individualAddressLineID` (`individualAddressLineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `address_line_entity_junction`:
--   `individualAddressLineID`
--       `address_line_entity` -> `individualAddressLineID`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_line_list_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `address_line_list_entity` (
  `addressLineListID` int(11) NOT NULL AUTO_INCREMENT,
  `addrLineJuncID` int(11) NOT NULL,
  PRIMARY KEY (`addressLineListID`),
  KEY `addrLineJuncID` (`addrLineJuncID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `address_line_list_entity`:
--   `addrLineJuncID`
--       `address_line_entity_junction` -> `addrLineJuncID`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_basic_information_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `animal_basic_information_entity` (
  `animalBIEID` int(11) NOT NULL AUTO_INCREMENT,
  `animalSpeciesID` int(11) NOT NULL,
  `animalBreedID` int(11) NOT NULL,
  PRIMARY KEY (`animalBIEID`),
  KEY `animalSpeciesID` (`animalSpeciesID`),
  KEY `animalBreedID` (`animalBreedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `animal_basic_information_entity`:
--   `animalSpeciesID`
--       `animal_species` -> `animalSpeciesID`
--   `animalBreedID`
--       `animal_breed` -> `animalBreedID`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_breed`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `animal_breed` (
  `animalBreedID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`animalBreedID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `animal_breed`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `animal_entity` (
  `animalID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `campaignID` int(11) NOT NULL,
  `vetRecordID` int(11) NOT NULL,
  `custodyID` int(11) NOT NULL,
  `BIEID` int(11) NOT NULL,
  `nameID` int(11) NOT NULL,
  `animalBIEID` int(11) NOT NULL,
  PRIMARY KEY (`animalID`),
  KEY `userID` (`userID`),
  KEY `campaignID` (`campaignID`),
  KEY `custodyID` (`custodyID`),
  KEY `BIEID` (`BIEID`),
  KEY `nameID` (`nameID`),
  KEY `animalBIEID` (`animalBIEID`),
  KEY `vetRecordID` (`vetRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `animal_entity`:
--   `userID`
--       `user_entity` -> `userID`
--   `campaignID`
--       `campaigns_entity` -> `campaignID`
--   `custodyID`
--       `custody_status_entity` -> `custodyID`
--   `BIEID`
--       `basic_infomation_entity` -> `BIEID`
--   `nameID`
--       `name_id_entity` -> `nameID`
--   `animalBIEID`
--       `animal_basic_information_entity` -> `animalBIEID`
--   `vetRecordID`
--       `vet_record_entity` -> `vetRecordID`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_species`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `animal_species` (
  `animalSpeciesID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`animalSpeciesID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `animal_species`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_infomation_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `basic_infomation_entity` (
  `BIEID` int(11) NOT NULL AUTO_INCREMENT,
  `DMEID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  PRIMARY KEY (`BIEID`),
  KEY `DMEID` (`DMEID`),
  KEY `homeID` (`homeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `basic_infomation_entity`:
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--   `homeID`
--       `home_id_entity` -> `homeID`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `campaigns_entity` (
  `campaignID` int(11) NOT NULL AUTO_INCREMENT,
  `POIEID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `campaignTypeID` int(11) NOT NULL,
  `campaignNameID` int(11) NOT NULL,
  `campaignDescriptionID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL,
  `donationsCount` int(11) NOT NULL,
  PRIMARY KEY (`campaignID`),
  KEY `POIEID` (`POIEID`),
  KEY `LLCEID` (`LLCEID`),
  KEY `DMEID` (`DMEID`),
  KEY `campaignTypeID` (`campaignTypeID`),
  KEY `campaignNameID` (`campaignNameID`),
  KEY `campaignDescriptionID` (`campaignDescriptionID`),
  KEY `moneySumID` (`moneySumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaigns_entity`:
--   `POIEID`
--       `people_of_interest_entity` -> `POIEID`
--   `LLCEID`
--       `linked_list_connector_entity` -> `LLCEID`
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--   `campaignTypeID`
--       `campaign_type_entity` -> `campaignTypeID`
--   `campaignNameID`
--       `campaign_name_entity` -> `campaignNameID`
--   `campaignDescriptionID`
--       `campaign_description_entity` -> `campaignDescriptionID`
--   `moneySumID`
--       `total_funds_entity` -> `moneySumID`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_description_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `campaign_description_entity` (
  `campaignDescriptionID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`campaignDescriptionID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaign_description_entity`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_name_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `campaign_name_entity` (
  `campaignNameID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`campaignNameID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaign_name_entity`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_support`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `campaign_support` (
  `supportedCampaignsID` int(11) NOT NULL AUTO_INCREMENT,
  `campaignID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL,
  PRIMARY KEY (`supportedCampaignsID`),
  KEY `campaignID` (`campaignID`),
  KEY `moneySumID` (`moneySumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaign_support`:
--   `campaignID`
--       `campaigns_entity` -> `campaignID`
--   `moneySumID`
--       `total_funds_entity` -> `moneySumID`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_type_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `campaign_type_entity` (
  `campaignTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`campaignTypeID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaign_type_entity`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_information_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `card_information_entity` (
  `cardInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  `nameID` int(11) NOT NULL,
  `sortCode` varchar(8) NOT NULL,
  `accountNumber` varchar(34) NOT NULL,
  `expiryDate` date NOT NULL,
  `CVV` smallint(6) NOT NULL,
  PRIMARY KEY (`cardInfoID`),
  KEY `userID` (`userID`),
  KEY `TIEID` (`TIEID`),
  KEY `homeID` (`homeID`),
  KEY `nameID` (`nameID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `card_information_entity`:
--   `userID`
--       `user_entity` -> `userID`
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--   `homeID`
--       `home_id_entity` -> `homeID`
--   `nameID`
--       `name_id_entity` -> `nameID`
--

-- --------------------------------------------------------

--
-- Table structure for table `conditions_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `conditions_entity` (
  `conditionsID` int(11) NOT NULL AUTO_INCREMENT,
  `conditionsAnimalID` int(11) NOT NULL,
  `treatmentAnimalID` int(11) NOT NULL,
  PRIMARY KEY (`conditionsID`),
  KEY `conditionsAnimalID` (`conditionsAnimalID`),
  KEY `treatmentAnimalID` (`treatmentAnimalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `conditions_entity`:
--   `conditionsAnimalID`
--       `condition_by_animal` -> `conditionsAnimalID`
--   `treatmentAnimalID`
--       `treatment_by_animal` -> `treatmentAnimalID`
--

-- --------------------------------------------------------

--
-- Table structure for table `condition_by_animal`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `condition_by_animal` (
  `conditionsAnimalID` int(11) NOT NULL AUTO_INCREMENT,
  `conditionNameID` int(11) NOT NULL,
  `conditionDescriptionID` int(11) NOT NULL,
  `animalBIEID` int(11) NOT NULL,
  PRIMARY KEY (`conditionsAnimalID`),
  KEY `conditionNameID` (`conditionNameID`),
  KEY `conditionDescriptionID` (`conditionDescriptionID`),
  KEY `animalBIEID` (`animalBIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `condition_by_animal`:
--   `conditionNameID`
--       `condition_name` -> `conditionNameID`
--   `conditionDescriptionID`
--       `condition_description` -> `conditionDescriptionID`
--   `animalBIEID`
--       `animal_basic_information_entity` -> `animalBIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `condition_description`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `condition_description` (
  `conditionDescriptionID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`conditionDescriptionID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `condition_description`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `condition_name`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `condition_name` (
  `conditionNameID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`conditionNameID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `condition_name`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `contracts_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `contracts_entity` (
  `contractsID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `animalID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `POIEID` int(11) NOT NULL,
  PRIMARY KEY (`contractsID`),
  KEY `userID` (`userID`),
  KEY `animalID` (`animalID`),
  KEY `DMEID` (`DMEID`),
  KEY `TIEID` (`TIEID`),
  KEY `POIEID` (`POIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `contracts_entity`:
--   `userID`
--       `user_entity` -> `userID`
--   `animalID`
--       `animal_entity` -> `animalID`
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--   `POIEID`
--       `people_of_interest_entity` -> `POIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `currency_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `currency_entity` (
  `currencyID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`currencyID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `currency_entity`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `custody_status_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `custody_status_entity` (
  `custodyID` int(11) NOT NULL AUTO_INCREMENT,
  `animalID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `POIEID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL,
  PRIMARY KEY (`custodyID`),
  KEY `animalID` (`animalID`),
  KEY `userID` (`userID`),
  KEY `POIEID` (`POIEID`),
  KEY `LLCEID` (`LLCEID`),
  KEY `DMEID` (`DMEID`),
  KEY `TIEID` (`TIEID`),
  KEY `moneySumID` (`moneySumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `custody_status_entity`:
--   `animalID`
--       `animal_entity` -> `animalID`
--   `userID`
--       `user_entity` -> `userID`
--   `POIEID`
--       `people_of_interest_entity` -> `POIEID`
--   `LLCEID`
--       `linked_list_connector_entity` -> `LLCEID`
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--   `moneySumID`
--       `total_funds_entity` -> `moneySumID`
--

-- --------------------------------------------------------

--
-- Table structure for table `date_management_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `date_management_entity` (
  `DMEID` int(11) NOT NULL AUTO_INCREMENT,
  `LLCEID` int(11) NOT NULL,
  `DMEDate` date NOT NULL,
  PRIMARY KEY (`DMEID`),
  KEY `LLCEID` (`LLCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `date_management_entity`:
--   `LLCEID`
--       `linked_list_connector_entity` -> `LLCEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `donation_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
-- Last update: Nov 19, 2025 at 04:58 PM
--

CREATE TABLE IF NOT EXISTS `donation_entity` (
  `donationID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `donorID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `campaignID` int(11) NOT NULL,
  PRIMARY KEY (`donationID`),
  KEY `TIEID` (`TIEID`),
  KEY `DMEID` (`DMEID`),
  KEY `LLCEID` (`LLCEID`),
  KEY `donorID` (`donorID`),
  KEY `paymentID` (`paymentID`),
  KEY `campaignID` (`campaignID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `donation_entity`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--   `LLCEID`
--       `linked_list_connector_entity` -> `LLCEID`
--   `donorID`
--       `donor_entity` -> `donorID`
--   `paymentID`
--       `payments_entity` -> `paymentID`
--   `campaignID`
--       `campaigns_entity` -> `campaignID`
--

-- --------------------------------------------------------

--
-- Table structure for table `donor_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `donor_entity` (
  `donorID` int(11) NOT NULL AUTO_INCREMENT,
  `supportedCampaignsID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL,
  PRIMARY KEY (`donorID`),
  KEY `supportedCampaignsID` (`supportedCampaignsID`),
  KEY `moneySumID` (`moneySumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `donor_entity`:
--   `supportedCampaignsID`
--       `campaign_support` -> `supportedCampaignsID`
--   `moneySumID`
--       `total_funds_entity` -> `moneySumID`
--

-- --------------------------------------------------------

--
-- Table structure for table `home_check_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `home_check_entity` (
  `homeCheckID` int(11) NOT NULL AUTO_INCREMENT,
  `animalID` int(11) NOT NULL,
  `homeCheckResultID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  PRIMARY KEY (`homeCheckID`),
  KEY `animalID` (`animalID`),
  KEY `homeCheckResultID` (`homeCheckResultID`),
  KEY `LLCEID` (`LLCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `home_check_entity`:
--   `animalID`
--       `animal_entity` -> `animalID`
--   `homeCheckResultID`
--       `home_check_results` -> `homeCheckResultID`
--   `LLCEID`
--       `linked_list_connector_entity` -> `LLCEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `home_check_results`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `home_check_results` (
  `homeCheckResultID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  PRIMARY KEY (`homeCheckResultID`),
  KEY `TIEID` (`TIEID`),
  KEY `DMEID` (`DMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `home_check_results`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `home_id_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `home_id_entity` (
  `homeID` int(11) NOT NULL AUTO_INCREMENT,
  `DMEID` int(11) NOT NULL,
  `addressLineListID` int(11) NOT NULL,
  PRIMARY KEY (`homeID`),
  KEY `DMEID` (`DMEID`),
  KEY `addressLineListID` (`addressLineListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `home_id_entity`:
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--   `addressLineListID`
--       `address_line_entity` -> `individualAddressLineID`
--

-- --------------------------------------------------------

--
-- Table structure for table `linked_list_connector_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `linked_list_connector_entity` (
  `LLCEID` int(11) NOT NULL AUTO_INCREMENT,
  `nextLLID` int(11) NOT NULL,
  `previousLLID` int(11) NOT NULL,
  PRIMARY KEY (`LLCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `linked_list_connector_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `name_id_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `name_id_entity` (
  `nameID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  `nameListID` int(11) NOT NULL,
  PRIMARY KEY (`nameID`),
  KEY `TIEID` (`TIEID`),
  KEY `nameListID` (`nameListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `name_id_entity`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--   `nameListID`
--       `name_id_entity_name_list` -> `nameListID`
--

-- --------------------------------------------------------

--
-- Table structure for table `name_id_entity_individual_name`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `name_id_entity_individual_name` (
  `individualNameID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  `nameNumber` int(11) NOT NULL,
  PRIMARY KEY (`individualNameID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `name_id_entity_individual_name`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `name_id_entity_name_list`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `name_id_entity_name_list` (
  `nameListID` int(11) NOT NULL AUTO_INCREMENT,
  `nameJuncID` int(11) NOT NULL,
  PRIMARY KEY (`nameListID`),
  KEY `nameJuncID` (`nameJuncID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `name_id_entity_name_list`:
--   `nameJuncID`
--       `name_list_junction_entity` -> `nameJuncID`
--

-- --------------------------------------------------------

--
-- Table structure for table `name_list_junction_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `name_list_junction_entity` (
  `nameJuncID` int(11) NOT NULL AUTO_INCREMENT,
  `individualNameID` int(11) NOT NULL,
  PRIMARY KEY (`nameJuncID`),
  KEY `individualNameID` (`individualNameID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `name_list_junction_entity`:
--   `individualNameID`
--       `name_id_entity_individual_name` -> `individualNameID`
--

-- --------------------------------------------------------

--
-- Table structure for table `organisations_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `organisations_entity` (
  `organisationID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  PRIMARY KEY (`organisationID`),
  KEY `TIEID` (`TIEID`),
  KEY `DMEID` (`DMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `organisations_entity`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `organisation_membership_junction_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `organisation_membership_junction_entity` (
  `organisationMembershipID` int(11) NOT NULL AUTO_INCREMENT,
  `organisationID` int(11) NOT NULL,
  PRIMARY KEY (`organisationMembershipID`),
  KEY `organisationID` (`organisationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `organisation_membership_junction_entity`:
--   `organisationID`
--       `organisations_entity` -> `organisationID`
--

-- --------------------------------------------------------

--
-- Table structure for table `payments_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `payments_entity` (
  `paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `cardInfoID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`paymentID`),
  KEY `cardInfoID` (`cardInfoID`),
  KEY `moneySumID` (`moneySumID`),
  KEY `currencyID` (`currencyID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `payments_entity`:
--   `cardInfoID`
--       `card_information_entity` -> `cardInfoID`
--   `moneySumID`
--       `total_funds_entity` -> `moneySumID`
--   `currencyID`
--       `currency_entity` -> `currencyID`
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `people_of_interest_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `people_of_interest_entity` (
  `POIEID` int(11) NOT NULL AUTO_INCREMENT,
  `volunteerID` int(11) NOT NULL,
  `donorID` int(11) NOT NULL,
  PRIMARY KEY (`POIEID`),
  KEY `volunteerID` (`volunteerID`),
  KEY `donorID` (`donorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `people_of_interest_entity`:
--   `volunteerID`
--       `volunteer_entity` -> `volunteerID`
--   `donorID`
--       `donation_entity` -> `donationID`
--

-- --------------------------------------------------------

--
-- Table structure for table `standard_precautions`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `standard_precautions` (
  `standardPrecautionsID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`standardPrecautionsID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `standard_precautions`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `standard_treatment`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `standard_treatment` (
  `standardTreatmentID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`standardTreatmentID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `standard_treatment`:
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `total_funds_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `total_funds_entity` (
  `moneySumID` int(11) NOT NULL AUTO_INCREMENT,
  `moneySum` float NOT NULL,
  PRIMARY KEY (`moneySumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `total_funds_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `treating_records_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
-- Last update: Nov 19, 2025 at 05:14 PM
--

CREATE TABLE IF NOT EXISTS `treating_records_entity` (
  `treatingID` int(11) NOT NULL AUTO_INCREMENT,
  `vetID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  PRIMARY KEY (`treatingID`),
  KEY `vetID` (`vetID`),
  KEY `LLCEID` (`LLCEID`),
  KEY `DMEID` (`DMEID`),
  KEY `TIEID` (`TIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `treating_records_entity`:
--   `vetID`
--       `veterinarians_entity` -> `vetID`
--   `LLCEID`
--       `linked_list_connector_entity` -> `LLCEID`
--   `DMEID`
--       `date_management_entity` -> `DMEID`
--   `TIEID`
--       `type_identifiers` -> `TIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `treating_vet_junction_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `treating_vet_junction_entity` (
  `treatingVetID` int(11) NOT NULL AUTO_INCREMENT,
  `animalID` int(11) NOT NULL,
  `vetID` int(11) NOT NULL,
  PRIMARY KEY (`treatingVetID`),
  KEY `animalID` (`animalID`),
  KEY `vetID` (`vetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `treating_vet_junction_entity`:
--   `animalID`
--       `animal_entity` -> `animalID`
--   `vetID`
--       `veterinarians_entity` -> `vetID`
--

-- --------------------------------------------------------

--
-- Table structure for table `treatment_by_animal`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `treatment_by_animal` (
  `treatmentAnimalID` int(11) NOT NULL AUTO_INCREMENT,
  `standardTreatmentID` int(11) NOT NULL,
  `standardPrecautionsID` int(11) NOT NULL,
  `animalBIEID` int(11) NOT NULL,
  PRIMARY KEY (`treatmentAnimalID`),
  KEY `standardTreatmentID` (`standardTreatmentID`),
  KEY `standardPrecautionsID` (`standardPrecautionsID`),
  KEY `animalBIEID` (`animalBIEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `treatment_by_animal`:
--   `standardTreatmentID`
--       `standard_treatment` -> `standardTreatmentID`
--   `standardPrecautionsID`
--       `standard_precautions` -> `standardPrecautionsID`
--   `animalBIEID`
--       `animal_basic_information_entity` -> `animalBIEID`
--

-- --------------------------------------------------------

--
-- Table structure for table `type_descriptors`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `type_descriptors` (
  `typeDescriptorID` int(11) NOT NULL AUTO_INCREMENT,
  `typeDescriptorENUMID` int(11) NOT NULL,
  `typeDescriptorVARCHARID` int(11) NOT NULL,
  PRIMARY KEY (`typeDescriptorID`),
  KEY `typeDescriptorENUMID` (`typeDescriptorENUMID`),
  KEY `typeDescriptorVARCHARID` (`typeDescriptorVARCHARID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `type_descriptors`:
--   `typeDescriptorENUMID`
--       `type_descriptors_enum_entity` -> `typeDescriptorENUMID`
--   `typeDescriptorVARCHARID`
--       `type_descriptors_varchar_entity` -> `typeDescriptorVARCHARID`
--

-- --------------------------------------------------------

--
-- Table structure for table `type_descriptors_enum_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `type_descriptors_enum_entity` (
  `typeDescriptorENUMID` int(11) NOT NULL AUTO_INCREMENT,
  `typeDescriptorENUM` enum('test0','test1','test2','test3') NOT NULL,
  PRIMARY KEY (`typeDescriptorENUMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `type_descriptors_enum_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `type_descriptors_varchar_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `type_descriptors_varchar_entity` (
  `typeDescriptorVARCHARID` int(11) NOT NULL AUTO_INCREMENT,
  `typeDescriptorVARCHAR` varchar(255) NOT NULL,
  PRIMARY KEY (`typeDescriptorVARCHARID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `type_descriptors_varchar_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `type_identifiers`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `type_identifiers` (
  `TIEID` int(11) NOT NULL AUTO_INCREMENT,
  `typeDescriptorID` int(11) NOT NULL,
  `typeAttribute` enum('test','test2','test3','test4') NOT NULL,
  PRIMARY KEY (`TIEID`),
  KEY `typeDescriptorID` (`typeDescriptorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `type_identifiers`:
--   `typeDescriptorID`
--       `type_descriptors` -> `typeDescriptorID`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `user_entity` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userInfoID` int(11) NOT NULL,
  `organisationMembershipID` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `userInfoID` (`userInfoID`),
  KEY `organisationMembershipID` (`organisationMembershipID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `user_entity`:
--   `userInfoID`
--       `user_info_entity` -> `userInfoID`
--   `organisationMembershipID`
--       `organisation_membership_junction_entity` -> `organisationMembershipID`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_info_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `user_info_entity` (
  `userInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `donorID` int(11) NOT NULL,
  `BIEID` int(11) NOT NULL,
  `volunteerID` int(11) NOT NULL,
  `cardInfoID` int(11) NOT NULL,
  `nameID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  PRIMARY KEY (`userInfoID`),
  KEY `donorID` (`donorID`),
  KEY `BIEID` (`BIEID`),
  KEY `volunteerID` (`volunteerID`),
  KEY `cardInfoID` (`cardInfoID`),
  KEY `nameID` (`nameID`),
  KEY `homeID` (`homeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `user_info_entity`:
--   `donorID`
--       `donor_entity` -> `donorID`
--   `BIEID`
--       `basic_infomation_entity` -> `BIEID`
--   `volunteerID`
--       `volunteer_entity` -> `volunteerID`
--   `cardInfoID`
--       `card_information_entity` -> `cardInfoID`
--   `nameID`
--       `name_id_entity` -> `nameID`
--   `homeID`
--       `home_id_entity` -> `homeID`
--

-- --------------------------------------------------------

--
-- Table structure for table `veterinarians_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `veterinarians_entity` (
  `vetID` int(11) NOT NULL AUTO_INCREMENT,
  `animalID` int(11) NOT NULL,
  `vetInfoID` int(11) NOT NULL,
  PRIMARY KEY (`vetID`),
  KEY `animalID` (`animalID`),
  KEY `vetInfoID` (`vetInfoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `veterinarians_entity`:
--   `animalID`
--       `animal_entity` -> `animalID`
--   `vetInfoID`
--       `veterinarians_info_entity` -> `vetInfoID`
--

-- --------------------------------------------------------

--
-- Table structure for table `veterinarians_info_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `veterinarians_info_entity` (
  `vetInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `nameID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  PRIMARY KEY (`vetInfoID`),
  KEY `nameID` (`nameID`),
  KEY `homeID` (`homeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `veterinarians_info_entity`:
--   `nameID`
--       `name_id_entity` -> `nameID`
--   `homeID`
--       `home_id_entity` -> `homeID`
--

-- --------------------------------------------------------

--
-- Table structure for table `vet_record_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `vet_record_entity` (
  `vetRecordID` int(11) NOT NULL AUTO_INCREMENT,
  `treatingVetID` int(11) NOT NULL,
  `treatingID` int(11) NOT NULL,
  `conditionsID` int(11) NOT NULL,
  PRIMARY KEY (`vetRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `vet_record_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_entity`
--
-- Creation: Nov 19, 2025 at 05:21 PM
--

CREATE TABLE IF NOT EXISTS `volunteer_entity` (
  `volunteerID` int(11) NOT NULL AUTO_INCREMENT,
  `TIEID` int(11) NOT NULL,
  `availabilityID` int(11) NOT NULL,
  PRIMARY KEY (`volunteerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `volunteer_entity`:
--

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address_line_entity`
--
ALTER TABLE `address_line_entity`
  ADD CONSTRAINT `address_line_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `address_line_entity_junction`
--
ALTER TABLE `address_line_entity_junction`
  ADD CONSTRAINT `address_line_entity_junction_ibfk_1` FOREIGN KEY (`individualAddressLineID`) REFERENCES `address_line_entity` (`individualAddressLineID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `address_line_list_entity`
--
ALTER TABLE `address_line_list_entity`
  ADD CONSTRAINT `address_line_list_entity_ibfk_1` FOREIGN KEY (`addrLineJuncID`) REFERENCES `address_line_entity_junction` (`addrLineJuncID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `animal_basic_information_entity`
--
ALTER TABLE `animal_basic_information_entity`
  ADD CONSTRAINT `animal_basic_information_entity_ibfk_1` FOREIGN KEY (`animalSpeciesID`) REFERENCES `animal_species` (`animalSpeciesID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_basic_information_entity_ibfk_2` FOREIGN KEY (`animalBreedID`) REFERENCES `animal_breed` (`animalBreedID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `animal_breed`
--
ALTER TABLE `animal_breed`
  ADD CONSTRAINT `animal_breed_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `animal_entity`
--
ALTER TABLE `animal_entity`
  ADD CONSTRAINT `animal_entity_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_entity` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `animal_entity_ibfk_2` FOREIGN KEY (`campaignID`) REFERENCES `campaigns_entity` (`campaignID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `animal_entity_ibfk_3` FOREIGN KEY (`custodyID`) REFERENCES `custody_status_entity` (`custodyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_entity_ibfk_4` FOREIGN KEY (`BIEID`) REFERENCES `basic_infomation_entity` (`BIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_entity_ibfk_5` FOREIGN KEY (`nameID`) REFERENCES `name_id_entity` (`nameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_entity_ibfk_6` FOREIGN KEY (`animalBIEID`) REFERENCES `animal_basic_information_entity` (`animalBIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_entity_ibfk_7` FOREIGN KEY (`vetRecordID`) REFERENCES `vet_record_entity` (`vetRecordID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `animal_species`
--
ALTER TABLE `animal_species`
  ADD CONSTRAINT `animal_species_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `basic_infomation_entity`
--
ALTER TABLE `basic_infomation_entity`
  ADD CONSTRAINT `basic_infomation_entity_ibfk_1` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `basic_infomation_entity_ibfk_2` FOREIGN KEY (`homeID`) REFERENCES `home_id_entity` (`homeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `campaigns_entity`
--
ALTER TABLE `campaigns_entity`
  ADD CONSTRAINT `campaigns_entity_ibfk_1` FOREIGN KEY (`POIEID`) REFERENCES `people_of_interest_entity` (`POIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `campaigns_entity_ibfk_2` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `campaigns_entity_ibfk_3` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `campaigns_entity_ibfk_4` FOREIGN KEY (`campaignTypeID`) REFERENCES `campaign_type_entity` (`campaignTypeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `campaigns_entity_ibfk_5` FOREIGN KEY (`campaignNameID`) REFERENCES `campaign_name_entity` (`campaignNameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `campaigns_entity_ibfk_6` FOREIGN KEY (`campaignDescriptionID`) REFERENCES `campaign_description_entity` (`campaignDescriptionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `campaigns_entity_ibfk_7` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE NO ACTION;

--
-- Constraints for table `campaign_description_entity`
--
ALTER TABLE `campaign_description_entity`
  ADD CONSTRAINT `campaign_description_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `campaign_name_entity`
--
ALTER TABLE `campaign_name_entity`
  ADD CONSTRAINT `campaign_name_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `campaign_support`
--
ALTER TABLE `campaign_support`
  ADD CONSTRAINT `campaign_support_ibfk_1` FOREIGN KEY (`campaignID`) REFERENCES `campaigns_entity` (`campaignID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `campaign_support_ibfk_2` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `campaign_type_entity`
--
ALTER TABLE `campaign_type_entity`
  ADD CONSTRAINT `campaign_type_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `card_information_entity`
--
ALTER TABLE `card_information_entity`
  ADD CONSTRAINT `card_information_entity_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_entity` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `card_information_entity_ibfk_2` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `card_information_entity_ibfk_3` FOREIGN KEY (`homeID`) REFERENCES `home_id_entity` (`homeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `card_information_entity_ibfk_4` FOREIGN KEY (`nameID`) REFERENCES `name_id_entity` (`nameID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `conditions_entity`
--
ALTER TABLE `conditions_entity`
  ADD CONSTRAINT `conditions_entity_ibfk_1` FOREIGN KEY (`conditionsAnimalID`) REFERENCES `condition_by_animal` (`conditionsAnimalID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conditions_entity_ibfk_2` FOREIGN KEY (`treatmentAnimalID`) REFERENCES `treatment_by_animal` (`treatmentAnimalID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `condition_by_animal`
--
ALTER TABLE `condition_by_animal`
  ADD CONSTRAINT `condition_by_animal_ibfk_1` FOREIGN KEY (`conditionNameID`) REFERENCES `condition_name` (`conditionNameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `condition_by_animal_ibfk_2` FOREIGN KEY (`conditionDescriptionID`) REFERENCES `condition_description` (`conditionDescriptionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `condition_by_animal_ibfk_3` FOREIGN KEY (`animalBIEID`) REFERENCES `animal_basic_information_entity` (`animalBIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `condition_description`
--
ALTER TABLE `condition_description`
  ADD CONSTRAINT `condition_description_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `condition_name`
--
ALTER TABLE `condition_name`
  ADD CONSTRAINT `condition_name_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contracts_entity`
--
ALTER TABLE `contracts_entity`
  ADD CONSTRAINT `contracts_entity_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_entity` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contracts_entity_ibfk_2` FOREIGN KEY (`animalID`) REFERENCES `animal_entity` (`animalID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contracts_entity_ibfk_3` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contracts_entity_ibfk_4` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contracts_entity_ibfk_5` FOREIGN KEY (`POIEID`) REFERENCES `people_of_interest_entity` (`POIEID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `currency_entity`
--
ALTER TABLE `currency_entity`
  ADD CONSTRAINT `currency_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `custody_status_entity`
--
ALTER TABLE `custody_status_entity`
  ADD CONSTRAINT `custody_status_entity_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `animal_entity` (`animalID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `custody_status_entity_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user_entity` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `custody_status_entity_ibfk_3` FOREIGN KEY (`POIEID`) REFERENCES `people_of_interest_entity` (`POIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `custody_status_entity_ibfk_4` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `custody_status_entity_ibfk_5` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `custody_status_entity_ibfk_6` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `custody_status_entity_ibfk_7` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `date_management_entity`
--
ALTER TABLE `date_management_entity`
  ADD CONSTRAINT `date_management_entity_ibfk_1` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donation_entity`
--
ALTER TABLE `donation_entity`
  ADD CONSTRAINT `donation_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_2` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_3` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_4` FOREIGN KEY (`donorID`) REFERENCES `donor_entity` (`donorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_5` FOREIGN KEY (`paymentID`) REFERENCES `payments_entity` (`paymentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_6` FOREIGN KEY (`campaignID`) REFERENCES `campaigns_entity` (`campaignID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donor_entity`
--
ALTER TABLE `donor_entity`
  ADD CONSTRAINT `donor_entity_ibfk_1` FOREIGN KEY (`supportedCampaignsID`) REFERENCES `campaign_support` (`supportedCampaignsID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donor_entity_ibfk_2` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `home_check_entity`
--
ALTER TABLE `home_check_entity`
  ADD CONSTRAINT `home_check_entity_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `animal_entity` (`animalID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `home_check_entity_ibfk_2` FOREIGN KEY (`homeCheckResultID`) REFERENCES `home_check_results` (`homeCheckResultID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_check_entity_ibfk_3` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `home_check_results`
--
ALTER TABLE `home_check_results`
  ADD CONSTRAINT `home_check_results_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_check_results_ibfk_2` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `home_id_entity`
--
ALTER TABLE `home_id_entity`
  ADD CONSTRAINT `home_id_entity_ibfk_1` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_id_entity_ibfk_2` FOREIGN KEY (`addressLineListID`) REFERENCES `address_line_entity` (`individualAddressLineID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `name_id_entity`
--
ALTER TABLE `name_id_entity`
  ADD CONSTRAINT `name_id_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `name_id_entity_ibfk_2` FOREIGN KEY (`nameListID`) REFERENCES `name_id_entity_name_list` (`nameListID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `name_id_entity_individual_name`
--
ALTER TABLE `name_id_entity_individual_name`
  ADD CONSTRAINT `name_id_entity_individual_name_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `name_id_entity_name_list`
--
ALTER TABLE `name_id_entity_name_list`
  ADD CONSTRAINT `name_id_entity_name_list_ibfk_1` FOREIGN KEY (`nameJuncID`) REFERENCES `name_list_junction_entity` (`nameJuncID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `name_list_junction_entity`
--
ALTER TABLE `name_list_junction_entity`
  ADD CONSTRAINT `name_list_junction_entity_ibfk_1` FOREIGN KEY (`individualNameID`) REFERENCES `name_id_entity_individual_name` (`individualNameID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `organisations_entity`
--
ALTER TABLE `organisations_entity`
  ADD CONSTRAINT `organisations_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `organisations_entity_ibfk_2` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `organisation_membership_junction_entity`
--
ALTER TABLE `organisation_membership_junction_entity`
  ADD CONSTRAINT `organisation_membership_junction_entity_ibfk_1` FOREIGN KEY (`organisationID`) REFERENCES `organisations_entity` (`organisationID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payments_entity`
--
ALTER TABLE `payments_entity`
  ADD CONSTRAINT `payments_entity_ibfk_1` FOREIGN KEY (`cardInfoID`) REFERENCES `card_information_entity` (`cardInfoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `payments_entity_ibfk_2` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `payments_entity_ibfk_3` FOREIGN KEY (`currencyID`) REFERENCES `currency_entity` (`currencyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `payments_entity_ibfk_4` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `people_of_interest_entity`
--
ALTER TABLE `people_of_interest_entity`
  ADD CONSTRAINT `people_of_interest_entity_ibfk_1` FOREIGN KEY (`volunteerID`) REFERENCES `volunteer_entity` (`volunteerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `people_of_interest_entity_ibfk_2` FOREIGN KEY (`donorID`) REFERENCES `donation_entity` (`donationID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `standard_precautions`
--
ALTER TABLE `standard_precautions`
  ADD CONSTRAINT `standard_precautions_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `standard_treatment`
--
ALTER TABLE `standard_treatment`
  ADD CONSTRAINT `standard_treatment_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `treating_records_entity`
--
ALTER TABLE `treating_records_entity`
  ADD CONSTRAINT `treating_records_entity_ibfk_1` FOREIGN KEY (`vetID`) REFERENCES `veterinarians_entity` (`vetID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `treating_records_entity_ibfk_2` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `treating_records_entity_ibfk_3` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `treating_records_entity_ibfk_4` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `treating_vet_junction_entity`
--
ALTER TABLE `treating_vet_junction_entity`
  ADD CONSTRAINT `treating_vet_junction_entity_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `animal_entity` (`animalID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `treating_vet_junction_entity_ibfk_2` FOREIGN KEY (`vetID`) REFERENCES `veterinarians_entity` (`vetID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `treatment_by_animal`
--
ALTER TABLE `treatment_by_animal`
  ADD CONSTRAINT `treatment_by_animal_ibfk_1` FOREIGN KEY (`standardTreatmentID`) REFERENCES `standard_treatment` (`standardTreatmentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treatment_by_animal_ibfk_2` FOREIGN KEY (`standardPrecautionsID`) REFERENCES `standard_precautions` (`standardPrecautionsID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treatment_by_animal_ibfk_3` FOREIGN KEY (`animalBIEID`) REFERENCES `animal_basic_information_entity` (`animalBIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `type_descriptors`
--
ALTER TABLE `type_descriptors`
  ADD CONSTRAINT `type_descriptors_ibfk_1` FOREIGN KEY (`typeDescriptorENUMID`) REFERENCES `type_descriptors_enum_entity` (`typeDescriptorENUMID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type_descriptors_ibfk_2` FOREIGN KEY (`typeDescriptorVARCHARID`) REFERENCES `type_descriptors_varchar_entity` (`typeDescriptorVARCHARID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `type_identifiers`
--
ALTER TABLE `type_identifiers`
  ADD CONSTRAINT `type_identifiers_ibfk_1` FOREIGN KEY (`typeDescriptorID`) REFERENCES `type_descriptors` (`typeDescriptorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_entity`
--
ALTER TABLE `user_entity`
  ADD CONSTRAINT `user_entity_ibfk_1` FOREIGN KEY (`userInfoID`) REFERENCES `user_info_entity` (`userInfoID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_entity_ibfk_2` FOREIGN KEY (`organisationMembershipID`) REFERENCES `organisation_membership_junction_entity` (`organisationMembershipID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_info_entity`
--
ALTER TABLE `user_info_entity`
  ADD CONSTRAINT `user_info_entity_ibfk_1` FOREIGN KEY (`donorID`) REFERENCES `donor_entity` (`donorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_2` FOREIGN KEY (`BIEID`) REFERENCES `basic_infomation_entity` (`BIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_3` FOREIGN KEY (`volunteerID`) REFERENCES `volunteer_entity` (`volunteerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_4` FOREIGN KEY (`cardInfoID`) REFERENCES `card_information_entity` (`cardInfoID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_5` FOREIGN KEY (`nameID`) REFERENCES `name_id_entity` (`nameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_6` FOREIGN KEY (`homeID`) REFERENCES `home_id_entity` (`homeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `veterinarians_entity`
--
ALTER TABLE `veterinarians_entity`
  ADD CONSTRAINT `veterinarians_entity_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `animal_entity` (`animalID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `veterinarians_entity_ibfk_2` FOREIGN KEY (`vetInfoID`) REFERENCES `veterinarians_info_entity` (`vetInfoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `veterinarians_info_entity`
--
ALTER TABLE `veterinarians_info_entity`
  ADD CONSTRAINT `veterinarians_info_entity_ibfk_1` FOREIGN KEY (`nameID`) REFERENCES `name_id_entity` (`nameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `veterinarians_info_entity_ibfk_2` FOREIGN KEY (`homeID`) REFERENCES `home_id_entity` (`homeID`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
