-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2025 at 12:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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

-- --------------------------------------------------------

--
-- Table structure for table `animal_basic_information_entity`
--

CREATE TABLE `animal_basic_information_entity` (
  `animalBIEID` int(11) NOT NULL,
  `animalSpeciesID` int(11) NOT NULL,
  `animalBreedID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `animal_breed`
--

CREATE TABLE `animal_breed` (
  `animalBreedID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `animal_species`
--

CREATE TABLE `animal_species` (
  `animalSpeciesID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `basic_infomation_entity`
--

CREATE TABLE `basic_infomation_entity` (
  `BIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_description_entity`
--

CREATE TABLE `campaign_description_entity` (
  `campaignDescriptionID` int(11) NOT NULL,
  `campaignDescription` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_name_entity`
--

CREATE TABLE `campaign_name_entity` (
  `campaignNameID` int(11) NOT NULL,
  `campaignName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_support`
--

CREATE TABLE `campaign_support` (
  `supportedCampaignsID` int(11) NOT NULL,
  `campaignID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_type_entity`
--

CREATE TABLE `campaign_type_entity` (
  `campaignTypeID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `sortCode` varchar(6) NOT NULL,
  `accountNumber` varchar(34) NOT NULL,
  `expiryDate` date NOT NULL,
  `CVV` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `card_payment_sum`
--

CREATE TABLE `card_payment_sum` (
  `cardPaymentID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cash_payment_sum`
--

CREATE TABLE `cash_payment_sum` (
  `cashPaymentID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conditions_entity`
--

CREATE TABLE `conditions_entity` (
  `conditionsID` int(11) NOT NULL,
  `conditionsAnimalID` int(11) NOT NULL,
  `treatmentAnimalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `condition_by_animal`
--

CREATE TABLE `condition_by_animal` (
  `conditionsAnimalID` int(11) NOT NULL,
  `conditionNameID` int(11) NOT NULL,
  `conditionDescriptionID` int(11) NOT NULL,
  `animalBIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `condition_description`
--

CREATE TABLE `condition_description` (
  `conditionDescriptionID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `condition_name`
--

CREATE TABLE `condition_name` (
  `conditionNameID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `currency_entity`
--

CREATE TABLE `currency_entity` (
  `currencyID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `date_management_entity`
--

CREATE TABLE `date_management_entity` (
  `DMEID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL,
  `DMEDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donor_entity`
--

CREATE TABLE `donor_entity` (
  `donorID` int(11) NOT NULL,
  `supportedCampaignsID` int(11) NOT NULL,
  `moneySumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_check_entity`
--

CREATE TABLE `home_check_entity` (
  `homeCheckID` int(11) NOT NULL,
  `animalID` int(11) NOT NULL,
  `homeCheckResultID` int(11) NOT NULL,
  `LLCEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_check_results`
--

CREATE TABLE `home_check_results` (
  `homeCheckResultID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `homeCheckResultDescription` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_id_entity`
--

CREATE TABLE `home_id_entity` (
  `homeID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL,
  `addrline_01` varchar(255) NOT NULL,
  `addrline_02` varchar(255) NOT NULL,
  `addrline_03` varchar(255) NOT NULL,
  `addrline_04` varchar(255) NOT NULL,
  `addrline_05` varchar(255) NOT NULL,
  `addrline_06` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `linked_list_connector_entity`
--

CREATE TABLE `linked_list_connector_entity` (
  `LLCEID` int(11) NOT NULL,
  `nextLLID` int(11) NOT NULL,
  `previousLLID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `name_id_entity`
--

CREATE TABLE `name_id_entity` (
  `nameID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organisations_entity`
--

CREATE TABLE `organisations_entity` (
  `organisationID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organisation_membership_junction_entity`
--

CREATE TABLE `organisation_membership_junction_entity` (
  `organisationMembershipID` int(11) NOT NULL,
  `organisationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payments_entity`
--

CREATE TABLE `payments_entity` (
  `paymentID` int(11) NOT NULL,
  `cardInfoID` int(11) NOT NULL,
  `cashPaymentID` int(11) NOT NULL,
  `cardPaymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `people_of_interest_entity`
--

CREATE TABLE `people_of_interest_entity` (
  `POIEID` int(11) NOT NULL,
  `volunteerID` int(11) NOT NULL,
  `donorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `standard_precautions`
--

CREATE TABLE `standard_precautions` (
  `standardPrecautionsID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `standard_treatment`
--

CREATE TABLE `standard_treatment` (
  `standardTreatmentID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `total_funds_entity`
--

CREATE TABLE `total_funds_entity` (
  `moneySumID` int(11) NOT NULL,
  `moneySum` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treating_vet_junction_entity`
--

CREATE TABLE `treating_vet_junction_entity` (
  `treatingVetID` int(11) NOT NULL,
  `animalID` int(11) NOT NULL,
  `vetID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treatment_by_animal`
--

CREATE TABLE `treatment_by_animal` (
  `treatmentAnimalID` int(11) NOT NULL,
  `standardTreatmentID` int(11) NOT NULL,
  `standardPrecautionsID` int(11) NOT NULL,
  `animalBIEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type_descriptors`
--

CREATE TABLE `type_descriptors` (
  `typeDescriptorID` int(11) NOT NULL,
  `typeDescription` enum('test','67','69','420') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type_identifiers`
--

CREATE TABLE `type_identifiers` (
  `TIEID` int(11) NOT NULL,
  `typeDescriptorID` int(11) NOT NULL,
  `typeAttribute` enum('test','test2','test3','test4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_entity`
--

CREATE TABLE `user_entity` (
  `userID` int(11) NOT NULL,
  `userInfoID` int(11) NOT NULL,
  `organisationMembershipID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `veterinarians_entity`
--

CREATE TABLE `veterinarians_entity` (
  `vetID` int(11) NOT NULL,
  `animalID` int(11) NOT NULL,
  `vetInfoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian_info_entity`
--

CREATE TABLE `veterinarian_info_entity` (
  `vetInfoID` int(11) NOT NULL,
  `nameID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vet_record_entity`
--

CREATE TABLE `vet_record_entity` (
  `vetRecordID` int(11) NOT NULL,
  `treatingVetID` int(11) NOT NULL,
  `treatingID` int(11) NOT NULL,
  `conditionsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_availability_entity`
--

CREATE TABLE `volunteer_availability_entity` (
  `availabilityID` int(11) NOT NULL,
  `DMEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_entity`
--

CREATE TABLE `volunteer_entity` (
  `volunteerID` int(11) NOT NULL,
  `TIEID` int(11) NOT NULL,
  `availabilityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal_basic_information_entity`
--
ALTER TABLE `animal_basic_information_entity`
  ADD PRIMARY KEY (`animalBIEID`);

--
-- Indexes for table `animal_breed`
--
ALTER TABLE `animal_breed`
  ADD PRIMARY KEY (`animalBreedID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `animal_entity`
--
ALTER TABLE `animal_entity`
  ADD PRIMARY KEY (`animalID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `campaignID` (`campaignID`),
  ADD KEY `vetRecordID` (`vetRecordID`),
  ADD KEY `custodyID` (`custodyID`),
  ADD KEY `BIEID` (`BIEID`),
  ADD KEY `nameID` (`nameID`),
  ADD KEY `animalBIEID` (`animalBIEID`);

--
-- Indexes for table `animal_species`
--
ALTER TABLE `animal_species`
  ADD PRIMARY KEY (`animalSpeciesID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `basic_infomation_entity`
--
ALTER TABLE `basic_infomation_entity`
  ADD PRIMARY KEY (`BIEID`),
  ADD KEY `DMEID` (`DMEID`),
  ADD KEY `homeID` (`homeID`);

--
-- Indexes for table `campaigns_entity`
--
ALTER TABLE `campaigns_entity`
  ADD PRIMARY KEY (`campaignID`),
  ADD KEY `POIEID` (`POIEID`),
  ADD KEY `LLCEID` (`LLCEID`),
  ADD KEY `DMEID` (`DMEID`),
  ADD KEY `campaignTypeID` (`campaignTypeID`),
  ADD KEY `campaignNameID` (`campaignNameID`),
  ADD KEY `campaignDescriptionID` (`campaignDescriptionID`),
  ADD KEY `moneySumID` (`moneySumID`);

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
  ADD PRIMARY KEY (`supportedCampaignsID`),
  ADD KEY `campaignID` (`campaignID`),
  ADD KEY `moneySumID` (`moneySumID`);

--
-- Indexes for table `campaign_type_entity`
--
ALTER TABLE `campaign_type_entity`
  ADD PRIMARY KEY (`campaignTypeID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `card_information_entity`
--
ALTER TABLE `card_information_entity`
  ADD PRIMARY KEY (`cardInfoID`),
  ADD KEY `homeID` (`homeID`),
  ADD KEY `nameID` (`nameID`),
  ADD KEY `TIEID` (`TIEID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `card_payment_sum`
--
ALTER TABLE `card_payment_sum`
  ADD PRIMARY KEY (`cardPaymentID`),
  ADD KEY `currencyID` (`currencyID`),
  ADD KEY `moneySumID` (`moneySumID`);

--
-- Indexes for table `cash_payment_sum`
--
ALTER TABLE `cash_payment_sum`
  ADD PRIMARY KEY (`cashPaymentID`),
  ADD KEY `currencyID` (`currencyID`),
  ADD KEY `moneySumID` (`moneySumID`);

--
-- Indexes for table `conditions_entity`
--
ALTER TABLE `conditions_entity`
  ADD PRIMARY KEY (`conditionsID`),
  ADD KEY `conditionsAnimalID` (`conditionsAnimalID`),
  ADD KEY `treatmentAnimalID` (`treatmentAnimalID`);

--
-- Indexes for table `condition_by_animal`
--
ALTER TABLE `condition_by_animal`
  ADD PRIMARY KEY (`conditionsAnimalID`),
  ADD KEY `conditionNameID` (`conditionNameID`),
  ADD KEY `conditionDescriptionID` (`conditionDescriptionID`),
  ADD KEY `animalBIEID` (`animalBIEID`);

--
-- Indexes for table `condition_description`
--
ALTER TABLE `condition_description`
  ADD PRIMARY KEY (`conditionDescriptionID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `condition_name`
--
ALTER TABLE `condition_name`
  ADD PRIMARY KEY (`conditionNameID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `contracts_entity`
--
ALTER TABLE `contracts_entity`
  ADD PRIMARY KEY (`contractsID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `animalID` (`animalID`),
  ADD KEY `DMEID` (`DMEID`),
  ADD KEY `TIEID` (`TIEID`),
  ADD KEY `POIEID` (`POIEID`);

--
-- Indexes for table `currency_entity`
--
ALTER TABLE `currency_entity`
  ADD PRIMARY KEY (`currencyID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `custody_status_entity`
--
ALTER TABLE `custody_status_entity`
  ADD PRIMARY KEY (`custodyID`),
  ADD KEY `animalID` (`animalID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `POIEID` (`POIEID`),
  ADD KEY `LLCEID` (`LLCEID`),
  ADD KEY `DMEID` (`DMEID`),
  ADD KEY `TIEID` (`TIEID`),
  ADD KEY `moneySumID` (`moneySumID`);

--
-- Indexes for table `date_management_entity`
--
ALTER TABLE `date_management_entity`
  ADD PRIMARY KEY (`DMEID`),
  ADD KEY `LLCEID` (`LLCEID`);

--
-- Indexes for table `donation_entity`
--
ALTER TABLE `donation_entity`
  ADD PRIMARY KEY (`donationID`),
  ADD KEY `campaignID` (`campaignID`),
  ADD KEY `currencyID` (`currencyID`),
  ADD KEY `DMEID` (`DMEID`),
  ADD KEY `donorID` (`donorID`),
  ADD KEY `LLCEID` (`LLCEID`),
  ADD KEY `paymentID` (`paymentID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `donor_entity`
--
ALTER TABLE `donor_entity`
  ADD PRIMARY KEY (`donorID`),
  ADD KEY `supportedCampaignsID` (`supportedCampaignsID`),
  ADD KEY `moneySumID` (`moneySumID`);

--
-- Indexes for table `home_check_entity`
--
ALTER TABLE `home_check_entity`
  ADD PRIMARY KEY (`homeCheckID`),
  ADD KEY `animalID` (`animalID`),
  ADD KEY `homeCheckResultID` (`homeCheckResultID`),
  ADD KEY `LLCEID` (`LLCEID`);

--
-- Indexes for table `home_check_results`
--
ALTER TABLE `home_check_results`
  ADD PRIMARY KEY (`homeCheckResultID`),
  ADD KEY `TIEID` (`TIEID`),
  ADD KEY `DMEID` (`DMEID`);

--
-- Indexes for table `home_id_entity`
--
ALTER TABLE `home_id_entity`
  ADD PRIMARY KEY (`homeID`),
  ADD KEY `DMEID` (`DMEID`);

--
-- Indexes for table `linked_list_connector_entity`
--
ALTER TABLE `linked_list_connector_entity`
  ADD PRIMARY KEY (`LLCEID`);

--
-- Indexes for table `name_id_entity`
--
ALTER TABLE `name_id_entity`
  ADD PRIMARY KEY (`nameID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `organisations_entity`
--
ALTER TABLE `organisations_entity`
  ADD PRIMARY KEY (`organisationID`),
  ADD KEY `TIEID` (`TIEID`),
  ADD KEY `DMEID` (`DMEID`);

--
-- Indexes for table `organisation_membership_junction_entity`
--
ALTER TABLE `organisation_membership_junction_entity`
  ADD PRIMARY KEY (`organisationMembershipID`),
  ADD KEY `organisationID` (`organisationID`);

--
-- Indexes for table `payments_entity`
--
ALTER TABLE `payments_entity`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `cardInfoID` (`cardInfoID`),
  ADD KEY `cardPaymentID` (`cardPaymentID`),
  ADD KEY `cashPaymentID` (`cashPaymentID`);

--
-- Indexes for table `people_of_interest_entity`
--
ALTER TABLE `people_of_interest_entity`
  ADD PRIMARY KEY (`POIEID`),
  ADD KEY `volunteerID` (`volunteerID`),
  ADD KEY `donorID` (`donorID`);

--
-- Indexes for table `standard_precautions`
--
ALTER TABLE `standard_precautions`
  ADD PRIMARY KEY (`standardPrecautionsID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `standard_treatment`
--
ALTER TABLE `standard_treatment`
  ADD PRIMARY KEY (`standardTreatmentID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `total_funds_entity`
--
ALTER TABLE `total_funds_entity`
  ADD PRIMARY KEY (`moneySumID`);

--
-- Indexes for table `treating_records_entity`
--
ALTER TABLE `treating_records_entity`
  ADD PRIMARY KEY (`treatingID`),
  ADD KEY `vetID` (`vetID`),
  ADD KEY `LLCEID` (`LLCEID`),
  ADD KEY `DMEID` (`DMEID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- Indexes for table `treating_vet_junction_entity`
--
ALTER TABLE `treating_vet_junction_entity`
  ADD PRIMARY KEY (`treatingVetID`),
  ADD KEY `animalID` (`animalID`),
  ADD KEY `vetID` (`vetID`);

--
-- Indexes for table `treatment_by_animal`
--
ALTER TABLE `treatment_by_animal`
  ADD PRIMARY KEY (`treatmentAnimalID`),
  ADD KEY `standardTreatmentID` (`standardTreatmentID`),
  ADD KEY `standardPrecautionsID` (`standardPrecautionsID`),
  ADD KEY `animalBIEID` (`animalBIEID`);

--
-- Indexes for table `type_descriptors`
--
ALTER TABLE `type_descriptors`
  ADD PRIMARY KEY (`typeDescriptorID`);

--
-- Indexes for table `type_identifiers`
--
ALTER TABLE `type_identifiers`
  ADD PRIMARY KEY (`TIEID`),
  ADD KEY `typeDescriptorID` (`typeDescriptorID`);

--
-- Indexes for table `user_entity`
--
ALTER TABLE `user_entity`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userInfoID` (`userInfoID`),
  ADD KEY `organisationMembershipID` (`organisationMembershipID`);

--
-- Indexes for table `user_info_entity`
--
ALTER TABLE `user_info_entity`
  ADD PRIMARY KEY (`userInfoID`),
  ADD KEY `BIEID` (`BIEID`),
  ADD KEY `cardInfoID` (`cardInfoID`),
  ADD KEY `donorID` (`donorID`),
  ADD KEY `homeID` (`homeID`),
  ADD KEY `volunteerID` (`volunteerID`),
  ADD KEY `nameID` (`nameID`);

--
-- Indexes for table `veterinarians_entity`
--
ALTER TABLE `veterinarians_entity`
  ADD PRIMARY KEY (`vetID`),
  ADD KEY `animalID` (`animalID`),
  ADD KEY `vetInfoID` (`vetInfoID`);

--
-- Indexes for table `veterinarian_info_entity`
--
ALTER TABLE `veterinarian_info_entity`
  ADD PRIMARY KEY (`vetInfoID`),
  ADD KEY `nameID` (`nameID`),
  ADD KEY `homeID` (`homeID`);

--
-- Indexes for table `vet_record_entity`
--
ALTER TABLE `vet_record_entity`
  ADD PRIMARY KEY (`vetRecordID`),
  ADD KEY `treatingID` (`treatingID`),
  ADD KEY `treatingVetID` (`treatingVetID`),
  ADD KEY `conditionsID` (`conditionsID`);

--
-- Indexes for table `volunteer_availability_entity`
--
ALTER TABLE `volunteer_availability_entity`
  ADD PRIMARY KEY (`availabilityID`),
  ADD KEY `DMEID` (`DMEID`);

--
-- Indexes for table `volunteer_entity`
--
ALTER TABLE `volunteer_entity`
  ADD PRIMARY KEY (`volunteerID`),
  ADD KEY `availabilityID` (`availabilityID`),
  ADD KEY `TIEID` (`TIEID`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `card_payment_sum`
--
ALTER TABLE `card_payment_sum`
  MODIFY `cardPaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_payment_sum`
--
ALTER TABLE `cash_payment_sum`
  MODIFY `cashPaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conditions_entity`
--
ALTER TABLE `conditions_entity`
  MODIFY `conditionsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `condition_by_animal`
--
ALTER TABLE `condition_by_animal`
  MODIFY `conditionsAnimalID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `condition_description`
--
ALTER TABLE `condition_description`
  MODIFY `conditionDescriptionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `condition_name`
--
ALTER TABLE `condition_name`
  MODIFY `conditionNameID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts_entity`
--
ALTER TABLE `contracts_entity`
  MODIFY `contractsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_entity`
--
ALTER TABLE `currency_entity`
  MODIFY `currencyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custody_status_entity`
--
ALTER TABLE `custody_status_entity`
  MODIFY `custodyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `date_management_entity`
--
ALTER TABLE `date_management_entity`
  MODIFY `DMEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donation_entity`
--
ALTER TABLE `donation_entity`
  MODIFY `donationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_entity`
--
ALTER TABLE `donor_entity`
  MODIFY `donorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_check_entity`
--
ALTER TABLE `home_check_entity`
  MODIFY `homeCheckID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_check_results`
--
ALTER TABLE `home_check_results`
  MODIFY `homeCheckResultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_id_entity`
--
ALTER TABLE `home_id_entity`
  MODIFY `homeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linked_list_connector_entity`
--
ALTER TABLE `linked_list_connector_entity`
  MODIFY `LLCEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `name_id_entity`
--
ALTER TABLE `name_id_entity`
  MODIFY `nameID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisations_entity`
--
ALTER TABLE `organisations_entity`
  MODIFY `organisationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisation_membership_junction_entity`
--
ALTER TABLE `organisation_membership_junction_entity`
  MODIFY `organisationMembershipID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_entity`
--
ALTER TABLE `payments_entity`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_of_interest_entity`
--
ALTER TABLE `people_of_interest_entity`
  MODIFY `POIEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_precautions`
--
ALTER TABLE `standard_precautions`
  MODIFY `standardPrecautionsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_treatment`
--
ALTER TABLE `standard_treatment`
  MODIFY `standardTreatmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `total_funds_entity`
--
ALTER TABLE `total_funds_entity`
  MODIFY `moneySumID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treating_records_entity`
--
ALTER TABLE `treating_records_entity`
  MODIFY `treatingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treating_vet_junction_entity`
--
ALTER TABLE `treating_vet_junction_entity`
  MODIFY `treatingVetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatment_by_animal`
--
ALTER TABLE `treatment_by_animal`
  MODIFY `treatmentAnimalID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_descriptors`
--
ALTER TABLE `type_descriptors`
  MODIFY `typeDescriptorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_identifiers`
--
ALTER TABLE `type_identifiers`
  MODIFY `TIEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_entity`
--
ALTER TABLE `user_entity`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info_entity`
--
ALTER TABLE `user_info_entity`
  MODIFY `userInfoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `veterinarians_entity`
--
ALTER TABLE `veterinarians_entity`
  MODIFY `vetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `veterinarian_info_entity`
--
ALTER TABLE `veterinarian_info_entity`
  MODIFY `vetInfoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vet_record_entity`
--
ALTER TABLE `vet_record_entity`
  MODIFY `vetRecordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volunteer_availability_entity`
--
ALTER TABLE `volunteer_availability_entity`
  MODIFY `availabilityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volunteer_entity`
--
ALTER TABLE `volunteer_entity`
  MODIFY `volunteerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `animal_entity_ibfk_3` FOREIGN KEY (`vetRecordID`) REFERENCES `vet_record_entity` (`vetRecordID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_entity_ibfk_4` FOREIGN KEY (`custodyID`) REFERENCES `custody_status_entity` (`custodyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_entity_ibfk_5` FOREIGN KEY (`BIEID`) REFERENCES `basic_infomation_entity` (`BIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_entity_ibfk_6` FOREIGN KEY (`nameID`) REFERENCES `name_id_entity` (`nameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_entity_ibfk_7` FOREIGN KEY (`animalBIEID`) REFERENCES `animal_basic_information_entity` (`animalBIEID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `animal_species`
--
ALTER TABLE `animal_species`
  ADD CONSTRAINT `animal_species_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `basic_infomation_entity`
--
ALTER TABLE `basic_infomation_entity`
  ADD CONSTRAINT `basic_infomation_entity_ibfk_1` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `basic_infomation_entity_ibfk_2` FOREIGN KEY (`homeID`) REFERENCES `home_id_entity` (`homeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `campaigns_entity`
--
ALTER TABLE `campaigns_entity`
  ADD CONSTRAINT `campaigns_entity_ibfk_1` FOREIGN KEY (`POIEID`) REFERENCES `people_of_interest_entity` (`POIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `campaigns_entity_ibfk_2` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `campaigns_entity_ibfk_3` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `campaigns_entity_ibfk_4` FOREIGN KEY (`campaignTypeID`) REFERENCES `campaign_type_entity` (`campaignTypeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `campaigns_entity_ibfk_5` FOREIGN KEY (`campaignNameID`) REFERENCES `campaign_name_entity` (`campaignNameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `campaigns_entity_ibfk_6` FOREIGN KEY (`campaignDescriptionID`) REFERENCES `campaign_description_entity` (`campaignDescriptionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `campaigns_entity_ibfk_7` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `card_information_entity_ibfk_1` FOREIGN KEY (`homeID`) REFERENCES `home_id_entity` (`homeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `card_information_entity_ibfk_2` FOREIGN KEY (`nameID`) REFERENCES `name_id_entity` (`nameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `card_information_entity_ibfk_3` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `card_information_entity_ibfk_4` FOREIGN KEY (`userID`) REFERENCES `user_entity` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `card_payment_sum`
--
ALTER TABLE `card_payment_sum`
  ADD CONSTRAINT `card_payment_sum_ibfk_1` FOREIGN KEY (`currencyID`) REFERENCES `currency_entity` (`currencyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `card_payment_sum_ibfk_2` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cash_payment_sum`
--
ALTER TABLE `cash_payment_sum`
  ADD CONSTRAINT `cash_payment_sum_ibfk_1` FOREIGN KEY (`currencyID`) REFERENCES `currency_entity` (`currencyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cash_payment_sum_ibfk_2` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `contracts_entity_ibfk_3` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  ADD CONSTRAINT `custody_status_entity_ibfk_5` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `custody_status_entity_ibfk_6` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `custody_status_entity_ibfk_7` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `date_management_entity`
--
ALTER TABLE `date_management_entity`
  ADD CONSTRAINT `date_management_entity_ibfk_1` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donation_entity`
--
ALTER TABLE `donation_entity`
  ADD CONSTRAINT `donation_entity_ibfk_1` FOREIGN KEY (`campaignID`) REFERENCES `campaigns_entity` (`campaignID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_2` FOREIGN KEY (`currencyID`) REFERENCES `currency_entity` (`currencyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_3` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_entity_ibfk_4` FOREIGN KEY (`donorID`) REFERENCES `donor_entity` (`donorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_5` FOREIGN KEY (`LLCEID`) REFERENCES `linked_list_connector_entity` (`LLCEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `donation_entity_ibfk_6` FOREIGN KEY (`paymentID`) REFERENCES `payments_entity` (`paymentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_entity_ibfk_7` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donor_entity`
--
ALTER TABLE `donor_entity`
  ADD CONSTRAINT `donor_entity_ibfk_1` FOREIGN KEY (`supportedCampaignsID`) REFERENCES `campaign_support` (`supportedCampaignsID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donor_entity_ibfk_2` FOREIGN KEY (`moneySumID`) REFERENCES `total_funds_entity` (`moneySumID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `home_check_results_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `home_check_results_ibfk_2` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `home_id_entity`
--
ALTER TABLE `home_id_entity`
  ADD CONSTRAINT `home_id_entity_ibfk_1` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `name_id_entity`
--
ALTER TABLE `name_id_entity`
  ADD CONSTRAINT `name_id_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `organisations_entity`
--
ALTER TABLE `organisations_entity`
  ADD CONSTRAINT `organisations_entity_ibfk_1` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `organisations_entity_ibfk_2` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `payments_entity_ibfk_2` FOREIGN KEY (`cardPaymentID`) REFERENCES `card_payment_sum` (`cardPaymentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_entity_ibfk_3` FOREIGN KEY (`cashPaymentID`) REFERENCES `cash_payment_sum` (`cashPaymentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_of_interest_entity`
--
ALTER TABLE `people_of_interest_entity`
  ADD CONSTRAINT `people_of_interest_entity_ibfk_1` FOREIGN KEY (`volunteerID`) REFERENCES `volunteer_entity` (`volunteerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `people_of_interest_entity_ibfk_2` FOREIGN KEY (`donorID`) REFERENCES `donor_entity` (`donorID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `treating_records_entity_ibfk_3` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  ADD CONSTRAINT `user_info_entity_ibfk_1` FOREIGN KEY (`BIEID`) REFERENCES `basic_infomation_entity` (`BIEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_2` FOREIGN KEY (`cardInfoID`) REFERENCES `card_information_entity` (`cardInfoID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_3` FOREIGN KEY (`donorID`) REFERENCES `donor_entity` (`donorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_4` FOREIGN KEY (`homeID`) REFERENCES `home_id_entity` (`homeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_5` FOREIGN KEY (`volunteerID`) REFERENCES `volunteer_entity` (`volunteerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_info_entity_ibfk_6` FOREIGN KEY (`nameID`) REFERENCES `name_id_entity` (`nameID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `veterinarians_entity`
--
ALTER TABLE `veterinarians_entity`
  ADD CONSTRAINT `veterinarians_entity_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `animal_entity` (`animalID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `veterinarians_entity_ibfk_2` FOREIGN KEY (`vetInfoID`) REFERENCES `veterinarian_info_entity` (`vetInfoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `veterinarian_info_entity`
--
ALTER TABLE `veterinarian_info_entity`
  ADD CONSTRAINT `veterinarian_info_entity_ibfk_1` FOREIGN KEY (`nameID`) REFERENCES `name_id_entity` (`nameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `veterinarian_info_entity_ibfk_2` FOREIGN KEY (`homeID`) REFERENCES `home_id_entity` (`homeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vet_record_entity`
--
ALTER TABLE `vet_record_entity`
  ADD CONSTRAINT `vet_record_entity_ibfk_1` FOREIGN KEY (`treatingID`) REFERENCES `treating_records_entity` (`treatingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vet_record_entity_ibfk_2` FOREIGN KEY (`treatingVetID`) REFERENCES `treating_vet_junction_entity` (`treatingVetID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vet_record_entity_ibfk_3` FOREIGN KEY (`conditionsID`) REFERENCES `conditions_entity` (`conditionsID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `volunteer_availability_entity`
--
ALTER TABLE `volunteer_availability_entity`
  ADD CONSTRAINT `volunteer_availability_entity_ibfk_1` FOREIGN KEY (`DMEID`) REFERENCES `date_management_entity` (`DMEID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `volunteer_entity`
--
ALTER TABLE `volunteer_entity`
  ADD CONSTRAINT `volunteer_entity_ibfk_1` FOREIGN KEY (`availabilityID`) REFERENCES `volunteer_availability_entity` (`availabilityID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `volunteer_entity_ibfk_2` FOREIGN KEY (`TIEID`) REFERENCES `type_identifiers` (`TIEID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
