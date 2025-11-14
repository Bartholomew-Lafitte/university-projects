-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2025 at 03:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
CREATE DATABASE IF NOT EXISTS `sweet_potato_tec_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sweet_potato_tec_db`;

-- --------------------------------------------------------

--
-- Table structure for table `address_line_entity`
--

CREATE TABLE `address_line_entity` (
  `individualAddressLineID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `addressLineNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `address_line_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `address_line_entity_junction`
--

CREATE TABLE `address_line_entity_junction` (
  `addrLineJuncID` int(11) NOT NULL,
  `individualAddressLineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `address_line_entity_junction`:
--

-- --------------------------------------------------------

--
-- Table structure for table `address_line_list_entity`
--

CREATE TABLE `address_line_list_entity` (
  `addressLineListID` int(11) NOT NULL,
  `addrLineJuncID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `address_line_list_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_basic_information_entity`
--

CREATE TABLE `animal_basic_information_entity` (
  `animalBIEID` int(11) NOT NULL,
  `animalSpeciesID` int(11) NOT NULL,
  `animalBreedID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `animal_basic_information_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_breed`
--

CREATE TABLE `animal_breed` (
  `animalBreedID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `animal_breed`:
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_entity`
--

CREATE TABLE `animal_entity` (
  `animalID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `campaignID` int(11) NOT NULL,
  `vetRecordID` int(11) NOT NULL,
  `custodyID` int(11) NOT NULL,
  `BIEID` int(11) NOT NULL,
  `nameID` int(11) NOT NULL,
  `animalBIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `animal_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_species`
--

CREATE TABLE `animal_species` (
  `animalSpeciesID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `animal_species`:
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_infomation_entity`
--

CREATE TABLE `basic_infomation_entity` (
  `BIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `basic_infomation_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_entity`
--

CREATE TABLE `campaigns_entity` (
  `campaignID` int(11) NOT NULL,
  `POIEID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `campaignTypeID` int(11) NOT NULL,
  `campaignNameID` int(11) NOT NULL,
  `campaignDescriptionID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL,
  `donationsCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaigns_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_description_entity`
--

CREATE TABLE `campaign_description_entity` (
  `campaignDescriptionID` int(11) NOT NULL,
  `campaignDescription` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaign_description_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_name_entity`
--

CREATE TABLE `campaign_name_entity` (
  `campaignNameID` int(11) NOT NULL,
  `campaignName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaign_name_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_support`
--

CREATE TABLE `campaign_support` (
  `supportedCampaignsID` int(11) NOT NULL,
  `campaignID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaign_support`:
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_type_entity`
--

CREATE TABLE `campaign_type_entity` (
  `campaignTypeID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `campaign_type_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `card_information_entity`
--

CREATE TABLE `card_information_entity` (
  `cardInfoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  `nameID` int(11) NOT NULL,
  `sortCode` varchar(8) NOT NULL,
  `accountNumber` varchar(34) NOT NULL,
  `expiryDate` date NOT NULL,
  `CVV` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `card_information_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `conditions_entity`
--

CREATE TABLE `conditions_entity` (
  `conditionsID` int(11) NOT NULL,
  `conditionsAnimalID` int(11) NOT NULL,
  `treatmentAnimalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `conditions_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `condition_by_animal`
--

CREATE TABLE `condition_by_animal` (
  `conditionsAnimalID` int(11) NOT NULL,
  `conditionNameID` int(11) NOT NULL,
  `conditionDescriptionID` int(11) NOT NULL,
  `animalBIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `condition_by_animal`:
--

-- --------------------------------------------------------

--
-- Table structure for table `condition_description`
--

CREATE TABLE `condition_description` (
  `conditionDescriptionID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `condition_description`:
--

-- --------------------------------------------------------

--
-- Table structure for table `condition_name`
--

CREATE TABLE `condition_name` (
  `conditionNameID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `condition_name`:
--

-- --------------------------------------------------------

--
-- Table structure for table `contracts_entity`
--

CREATE TABLE `contracts_entity` (
  `contractsID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `animalID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `POIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `contracts_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `currency_entity`
--

CREATE TABLE `currency_entity` (
  `currencyID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `currency_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `custody_status_entity`
--

CREATE TABLE `custody_status_entity` (
  `custodyID` int(11) NOT NULL,
  `animalID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `POIEID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `custody_status_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `date_management_entity`
--

CREATE TABLE `date_management_entity` (
  `DMEID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `DMEDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `date_management_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `donation_entity`
--

CREATE TABLE `donation_entity` (
  `donationID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `donorID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `campaignID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `donation_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `donor_entity`
--

CREATE TABLE `donor_entity` (
  `donorID` int(11) NOT NULL,
  `supportedCampaignsID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `donor_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `home_check_entity`
--

CREATE TABLE `home_check_entity` (
  `homeCheckID` int(11) NOT NULL,
  `animalID` int(11) NOT NULL,
  `homeCheckResultID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `home_check_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `home_check_results`
--

CREATE TABLE `home_check_results` (
  `homeCheckResultID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `homeCheckResultDescription` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `home_check_results`:
--

-- --------------------------------------------------------

--
-- Table structure for table `home_id_entity`
--

CREATE TABLE `home_id_entity` (
  `homeID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `addressLineListID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `home_id_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `linked_list_connector_entity`
--

CREATE TABLE `linked_list_connector_entity` (
  `LLCEID` int(11) NOT NULL,
  `nextLLID` int(11) NOT NULL,
  `previousLLID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `linked_list_connector_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `name_id_entity`
--

CREATE TABLE `name_id_entity` (
  `nameID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `nameListID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `name_id_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `name_id_entity_individual_name`
--

CREATE TABLE `name_id_entity_individual_name` (
  `individualNameID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `nameNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `name_id_entity_individual_name`:
--

-- --------------------------------------------------------

--
-- Table structure for table `name_id_entity_name_list`
--

CREATE TABLE `name_id_entity_name_list` (
  `nameListID` int(11) NOT NULL,
  `nameJuncID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `name_id_entity_name_list`:
--

-- --------------------------------------------------------

--
-- Table structure for table `name_list_junction_entity`
--

CREATE TABLE `name_list_junction_entity` (
  `nameJuncID` int(11) NOT NULL,
  `individualNameID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `name_list_junction_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `organisations_entity`
--

CREATE TABLE `organisations_entity` (
  `organisationID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `organisations_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `organisation_membership_junction_entity`
--

CREATE TABLE `organisation_membership_junction_entity` (
  `organisationMembershipID` int(11) NOT NULL,
  `organisationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `organisation_membership_junction_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `payments_entity`
--

CREATE TABLE `payments_entity` (
  `paymentID` int(11) NOT NULL,
  `cardInfoID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `payments_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `people_of_interest_entity`
--

CREATE TABLE `people_of_interest_entity` (
  `POIEID` int(11) NOT NULL,
  `volunteerID` int(11) NOT NULL,
  `donorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `people_of_interest_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `standard_precautions`
--

CREATE TABLE `standard_precautions` (
  `standardPrecautionsID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `standard_precautions`:
--

-- --------------------------------------------------------

--
-- Table structure for table `standard_treatment`
--

CREATE TABLE `standard_treatment` (
  `standardTreatmentID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `standard_treatment`:
--

-- --------------------------------------------------------

--
-- Table structure for table `total_funds_entity`
--

CREATE TABLE `total_funds_entity` (
  `moneySumID` int(11) NOT NULL,
  `moneySum` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `total_funds_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `treating_records_entity`
--

CREATE TABLE `treating_records_entity` (
  `treatingID` int(11) NOT NULL,
  `vetID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `standardBool` tinyint(1) NOT NULL,
  `treatmentResults` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `treating_records_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `treating_vet_junction_entity`
--

CREATE TABLE `treating_vet_junction_entity` (
  `treatingVetID` int(11) NOT NULL,
  `animalID` int(11) NOT NULL,
  `vetID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `treating_vet_junction_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `treatment_by_animal`
--

CREATE TABLE `treatment_by_animal` (
  `treatmentAnimalID` int(11) NOT NULL,
  `standardTreatmentID` int(11) NOT NULL,
  `standardPrecautionsID` int(11) NOT NULL,
  `animalBIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `treatment_by_animal`:
--

-- --------------------------------------------------------

--
-- Table structure for table `type_descriptors`
--

CREATE TABLE `type_descriptors` (
  `typeDescriptorID` int(11) NOT NULL,
  `typeDescriptorENUMID` int(11) NOT NULL,
  `typeDescriptorVARCHARID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `type_descriptors`:
--

-- --------------------------------------------------------

--
-- Table structure for table `type_descriptors_enum_entity`
--

CREATE TABLE `type_descriptors_enum_entity` (
  `typeDescriptorENUMID` int(11) NOT NULL,
  `typeDescriptorENUM` enum('test0','test1','test2','test3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `type_descriptors_enum_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `type_descriptors_varchar_entity`
--

CREATE TABLE `type_descriptors_varchar_entity` (
  `typeDescriptorVARCHARID` int(11) NOT NULL,
  `typeDescriptorVARCHAR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `type_descriptors_varchar_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `type_identifiers`
--

CREATE TABLE `type_identifiers` (
  `TIEID` int(11) NOT NULL,
  `typeDescriptorID` int(11) NOT NULL,
  `typeAttribute` enum('test','test2','test3','test4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `type_identifiers`:
--

-- --------------------------------------------------------

--
-- Table structure for table `user_entity`
--

CREATE TABLE `user_entity` (
  `userID` int(11) NOT NULL,
  `userInfoID` int(11) NOT NULL,
  `organisationMembershipID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `user_entity`:
--

-- --------------------------------------------------------

--
-- Table structure for table `user_info_entity`
--

CREATE TABLE `user_info_entity` (
  `userInfoID` int(11) NOT NULL,
  `donorID` int(11) NOT NULL,
  `BIEID` int(11) NOT NULL,
  `volunteerID` int(11) NOT NULL,
  `cardInfoID` int(11) NOT NULL,
  `nameID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `user_info_entity`:
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_line_entity`
--
ALTER TABLE `address_line_entity`
  ADD PRIMARY KEY (`individualAddressLineID`);

--
-- Indexes for table `address_line_entity_junction`
--
ALTER TABLE `address_line_entity_junction`
  ADD PRIMARY KEY (`addrLineJuncID`);

--
-- Indexes for table `address_line_list_entity`
--
ALTER TABLE `address_line_list_entity`
  ADD PRIMARY KEY (`addressLineListID`);

--
-- Indexes for table `animal_basic_information_entity`
--
ALTER TABLE `animal_basic_information_entity`
  ADD PRIMARY KEY (`animalBIEID`);

--
-- Indexes for table `animal_breed`
--
ALTER TABLE `animal_breed`
  ADD PRIMARY KEY (`animalBreedID`);

--
-- Indexes for table `animal_entity`
--
ALTER TABLE `animal_entity`
  ADD PRIMARY KEY (`animalID`);

--
-- Indexes for table `animal_species`
--
ALTER TABLE `animal_species`
  ADD PRIMARY KEY (`animalSpeciesID`);

--
-- Indexes for table `basic_infomation_entity`
--
ALTER TABLE `basic_infomation_entity`
  ADD PRIMARY KEY (`BIEID`);

--
-- Indexes for table `campaigns_entity`
--
ALTER TABLE `campaigns_entity`
  ADD PRIMARY KEY (`campaignID`);

--
-- Indexes for table `campaign_description_entity`
--
ALTER TABLE `campaign_description_entity`
  ADD PRIMARY KEY (`campaignDescriptionID`);

--
-- Indexes for table `campaign_name_entity`
--
ALTER TABLE `campaign_name_entity`
  ADD PRIMARY KEY (`campaignNameID`);

--
-- Indexes for table `campaign_support`
--
ALTER TABLE `campaign_support`
  ADD PRIMARY KEY (`supportedCampaignsID`);

--
-- Indexes for table `campaign_type_entity`
--
ALTER TABLE `campaign_type_entity`
  ADD PRIMARY KEY (`campaignTypeID`);

--
-- Indexes for table `card_information_entity`
--
ALTER TABLE `card_information_entity`
  ADD PRIMARY KEY (`cardInfoID`);

--
-- Indexes for table `date_management_entity`
--
ALTER TABLE `date_management_entity`
  ADD PRIMARY KEY (`DMEID`);

--
-- Indexes for table `name_id_entity_individual_name`
--
ALTER TABLE `name_id_entity_individual_name`
  ADD PRIMARY KEY (`individualNameID`);

--
-- Indexes for table `name_id_entity_name_list`
--
ALTER TABLE `name_id_entity_name_list`
  ADD PRIMARY KEY (`nameListID`);

--
-- Indexes for table `name_list_junction_entity`
--
ALTER TABLE `name_list_junction_entity`
  ADD PRIMARY KEY (`nameJuncID`);

--
-- Indexes for table `type_descriptors_enum_entity`
--
ALTER TABLE `type_descriptors_enum_entity`
  ADD PRIMARY KEY (`typeDescriptorENUMID`);

--
-- Indexes for table `type_descriptors_varchar_entity`
--
ALTER TABLE `type_descriptors_varchar_entity`
  ADD PRIMARY KEY (`typeDescriptorVARCHARID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_line_entity`
--
ALTER TABLE `address_line_entity`
  MODIFY `individualAddressLineID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address_line_entity_junction`
--
ALTER TABLE `address_line_entity_junction`
  MODIFY `addrLineJuncID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address_line_list_entity`
--
ALTER TABLE `address_line_list_entity`
  MODIFY `addressLineListID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animal_basic_information_entity`
--
ALTER TABLE `animal_basic_information_entity`
  MODIFY `animalBIEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animal_breed`
--
ALTER TABLE `animal_breed`
  MODIFY `animalBreedID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animal_entity`
--
ALTER TABLE `animal_entity`
  MODIFY `animalID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animal_species`
--
ALTER TABLE `animal_species`
  MODIFY `animalSpeciesID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basic_infomation_entity`
--
ALTER TABLE `basic_infomation_entity`
  MODIFY `BIEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns_entity`
--
ALTER TABLE `campaigns_entity`
  MODIFY `campaignID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_description_entity`
--
ALTER TABLE `campaign_description_entity`
  MODIFY `campaignDescriptionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_name_entity`
--
ALTER TABLE `campaign_name_entity`
  MODIFY `campaignNameID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_support`
--
ALTER TABLE `campaign_support`
  MODIFY `supportedCampaignsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_type_entity`
--
ALTER TABLE `campaign_type_entity`
  MODIFY `campaignTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_information_entity`
--
ALTER TABLE `card_information_entity`
  MODIFY `cardInfoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `date_management_entity`
--
ALTER TABLE `date_management_entity`
  MODIFY `DMEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `name_id_entity_individual_name`
--
ALTER TABLE `name_id_entity_individual_name`
  MODIFY `individualNameID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `name_id_entity_name_list`
--
ALTER TABLE `name_id_entity_name_list`
  MODIFY `nameListID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `name_list_junction_entity`
--
ALTER TABLE `name_list_junction_entity`
  MODIFY `nameJuncID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_descriptors_enum_entity`
--
ALTER TABLE `type_descriptors_enum_entity`
  MODIFY `typeDescriptorENUMID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_descriptors_varchar_entity`
--
ALTER TABLE `type_descriptors_varchar_entity`
  MODIFY `typeDescriptorVARCHARID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
