-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 08:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health_sevice`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinic_healthinfrastructure`
--

CREATE TABLE `clinic_healthinfrastructure` (
  `cliniclHealthcareID` int(11) NOT NULL,
  `OperatingHour` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clinic_healthinfrastructure`
--

INSERT INTO `clinic_healthinfrastructure` (`cliniclHealthcareID`, `OperatingHour`) VALUES
(1, '8:00 AM - 5:00 PM'),
(2, '9:00 AM - 6:00 PM'),
(3, '10:00 AM - 7:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `dietaryintake`
--

CREATE TABLE `dietaryintake` (
  `intake_id` int(11) NOT NULL,
  `date_consumed` date NOT NULL,
  `food_type` varchar(255) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `additional_details` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dietaryintake`
--

INSERT INTO `dietaryintake` (`intake_id`, `date_consumed`, `food_type`, `quantity`, `additional_details`, `user_id`) VALUES
(1, '2023-12-16', 'pizza', 1.00, 'nothing', 1),
(2, '2023-12-16', 'burger', 2.00, '', 1),
(3, '2023-12-16', 'pizza', 1.00, 'oily', 1),
(4, '2023-12-16', 'burger', 1.00, 'healthy', 1),
(5, '2023-12-16', 'rice', 1.00, '1 plate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `economicaleducationcontain`
--

CREATE TABLE `economicaleducationcontain` (
  `QualityOfEducation` float NOT NULL,
  `EconomyID` int(11) NOT NULL,
  `EducationID` int(11) NOT NULL,
  `AverageDropOutRate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `economicaleducationcontain`
--

INSERT INTO `economicaleducationcontain` (`QualityOfEducation`, `EconomyID`, `EducationID`, `AverageDropOutRate`) VALUES
(80.1, 3, 3, 8.5),
(88.3, 2, 2, 3.7),
(90.5, 1, 1, 5.2);

-- --------------------------------------------------------

--
-- Table structure for table `economicfactor`
--

CREATE TABLE `economicfactor` (
  `EconomyID` int(11) NOT NULL,
  `EducationID` int(11) DEFAULT NULL,
  `IncomeLevel` float DEFAULT NULL,
  `EmploymentRate` float DEFAULT NULL,
  `PovertyRate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `economicfactor`
--

INSERT INTO `economicfactor` (`EconomyID`, `EducationID`, `IncomeLevel`, `EmploymentRate`, `PovertyRate`) VALUES
(1, 1, 75000.5, 85.2, 8.3),
(2, 2, 95000.8, 92.6, 5.7),
(3, 3, 55000.2, 78.4, 12.1);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `EducationID` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `LiteratureRate` float DEFAULT NULL,
  `SchoolEnrollmentRate` float DEFAULT NULL,
  `EducationalAttainment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`EducationID`, `ID`, `LiteratureRate`, `SchoolEnrollmentRate`, `EducationalAttainment`) VALUES
(1, 1, 95.2, 98.5, 'Graduate Degree'),
(2, 2, 92.8, 96.3, 'Doctorate Degree'),
(3, 3, 85.5, 90.1, 'High School Diploma');

-- --------------------------------------------------------

--
-- Table structure for table `emergencyrecord_healthrecord`
--

CREATE TABLE `emergencyrecord_healthrecord` (
  `emergencyrecordRecordID` int(11) NOT NULL,
  `AdmissionDate` date DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `emergencyrecord_healthrecord`
--

INSERT INTO `emergencyrecord_healthrecord` (`emergencyrecordRecordID`, `AdmissionDate`, `ReleaseDate`) VALUES
(1, '2023-01-15', '2023-01-20'),
(2, '2023-02-10', '2023-02-15'),
(3, '2023-03-05', '2023-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `environment`
--

CREATE TABLE `environment` (
  `EnvID` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `AccessToCleanWater` float DEFAULT NULL,
  `SanitationIndex` float DEFAULT NULL,
  `AirQualityIndex` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `environment`
--

INSERT INTO `environment` (`EnvID`, `ID`, `AccessToCleanWater`, `SanitationIndex`, `AirQualityIndex`) VALUES
(1, 1, 95.7, 88.5, 92.3),
(2, 2, 93.2, 82.6, 88.9),
(3, 3, 88.9, 78.4, 85.6);

-- --------------------------------------------------------

--
-- Table structure for table `environment_indivisual`
--

CREATE TABLE `environment_indivisual` (
  `EnvID` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `environment_indivisual`
--

INSERT INTO `environment_indivisual` (`EnvID`, `ID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `govorg_interventation`
--

CREATE TABLE `govorg_interventation` (
  `govorgInterventionID` int(11) NOT NULL,
  `FreeFund` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `govorg_interventation`
--

INSERT INTO `govorg_interventation` (`govorgInterventionID`, `FreeFund`) VALUES
(1, '100,000 USD'),
(2, '150,000 USD'),
(3, '200,000 USD');

-- --------------------------------------------------------

--
-- Table structure for table `healthinfrastructure`
--

CREATE TABLE `healthinfrastructure` (
  `HealthcareID` int(11) NOT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Zip` varchar(20) DEFAULT NULL,
  `NumberOfFacility` int(11) DEFAULT NULL,
  `HealthIndex` float DEFAULT NULL,
  `WorkForceDensity` float DEFAULT NULL,
  `BedPopulationRatio` float DEFAULT NULL,
  `EmergencyResponse` varchar(255) DEFAULT NULL,
  `InfrastructureType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `healthinfrastructure`
--

INSERT INTO `healthinfrastructure` (`HealthcareID`, `Street`, `City`, `State`, `Zip`, `NumberOfFacility`, `HealthIndex`, `WorkForceDensity`, `BedPopulationRatio`, `EmergencyResponse`, `InfrastructureType`) VALUES
(1, '123 Main St', 'Cityville', 'Stateville', '12345', 5, 80.5, 15.2, 3.5, 'Emergency Only', 'Hospital'),
(2, '456 Oak St', 'Townsville', 'Stateland', '54321', 3, 90.2, 12.8, 2.7, 'Non-Emergency', 'Clinic'),
(3, '789 Pine St', 'Villagetown', 'Provinceville', '67890', 7, 75.8, 18.5, 4.2, 'Emergency and Non-Emergency', 'Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `healthrecord`
--

CREATE TABLE `healthrecord` (
  `RecordID` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `TreatmentPlan` varchar(255) DEFAULT NULL,
  `RecordType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `healthrecord`
--

INSERT INTO `healthrecord` (`RecordID`, `ID`, `TreatmentPlan`, `RecordType`) VALUES
(1, 1, 'Regular Checkup', 'Normal Checkup'),
(2, 2, 'Orthopedic Consultation', 'Surgery Record'),
(3, 3, 'Emergency Room Visit', 'Emergency Record');

-- --------------------------------------------------------

--
-- Table structure for table `healthserviceusage`
--

CREATE TABLE `healthserviceusage` (
  `UsageID` int(11) NOT NULL,
  `HealthcareID` int(11) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `ServiceDetails` varchar(255) DEFAULT NULL,
  `ServiceProvider` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `healthserviceusage`
--

INSERT INTO `healthserviceusage` (`UsageID`, `HealthcareID`, `RecordID`, `ServiceDetails`, `ServiceProvider`) VALUES
(1, 1, 1, 'Blood Pressure Check', 'Nurse Jane'),
(2, 2, 2, 'Appendectomy', 'Dr. Smith'),
(3, 3, 3, 'X-ray and Medication', 'ER Team');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_healthinfrastructure`
--

CREATE TABLE `hospital_healthinfrastructure` (
  `hospitalHealthcareID` int(11) NOT NULL,
  `NumberOfBeds` int(11) DEFAULT NULL,
  `HospitalService` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hospital_healthinfrastructure`
--

INSERT INTO `hospital_healthinfrastructure` (`hospitalHealthcareID`, `NumberOfBeds`, `HospitalService`) VALUES
(1, 200, 'General Medicine'),
(2, 150, 'Pediatrics'),
(3, 300, 'Surgery');

-- --------------------------------------------------------

--
-- Table structure for table `indivisual`
--

CREATE TABLE `indivisual` (
  `ID` int(11) NOT NULL,
  `FName` varchar(255) DEFAULT NULL,
  `LName` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `EconomicStatus` varchar(50) DEFAULT NULL,
  `EducationalStatus` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `indivisual`
--

INSERT INTO `indivisual` (`ID`, `FName`, `LName`, `Age`, `Gender`, `EconomicStatus`, `EducationalStatus`, `password`, `user_name`, `user_type`) VALUES
(1, 'abbbyyyyy', 'a', 22, 'Male', 'a', 'bbbbbbbbbb', '12345', 'u11', 'individual'),
(2, 'a', 'a', 22, 'Male', 'a', 'a', '12345', 'u22', 'admin'),
(3, 'John', 'Doe', 25, 'Male', 'Middle Class', 'Graduate', 'password123', 'john.doe', 'Regular'),
(4, 'Jane', 'Smith', 30, 'Female', 'Upper Class', 'Doctorate', 'securepass', 'jane.smith', 'Premium'),
(5, 'Bob', 'Johnson', 22, 'Male', 'Lower Class', 'High School', 'secret123', 'bob.johnson', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `indivisual_interventation`
--

CREATE TABLE `indivisual_interventation` (
  `ID` int(11) NOT NULL,
  `InterventionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `indivisual_interventation`
--

INSERT INTO `indivisual_interventation` (`ID`, `InterventionID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `interventation`
--

CREATE TABLE `interventation` (
  `InterventionID` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Government` varchar(50) DEFAULT NULL,
  `NonGovernment` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `interventation`
--

INSERT INTO `interventation` (`InterventionID`, `Description`, `Government`, `NonGovernment`) VALUES
(1, 'Public Health Campaign', 'Government Health Department', 'Red Cross'),
(2, 'Vaccination Drive', 'Ministry of Health', 'Doctors Without Borders'),
(3, 'Health Education Program', 'Local Health Authority', 'Save the Children');

-- --------------------------------------------------------

--
-- Table structure for table `nongovorg_interventation`
--

CREATE TABLE `nongovorg_interventation` (
  `nongovorgInterventionID` int(11) NOT NULL,
  `SupportStuff` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nongovorg_interventation`
--

INSERT INTO `nongovorg_interventation` (`nongovorgInterventionID`, `SupportStuff`) VALUES
(1, 'Medical Supplies and Equipment'),
(2, 'Volunteer Training'),
(3, 'Community Outreach Programs');

-- --------------------------------------------------------

--
-- Table structure for table `normalcheckuprecord_healthrecord`
--

CREATE TABLE `normalcheckuprecord_healthrecord` (
  `NormalcheckuprecordRecordID` int(11) NOT NULL,
  `PhysicalCheckup` varchar(255) DEFAULT NULL,
  `BloodPressure` varchar(20) DEFAULT NULL,
  `Recommendations` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `normalcheckuprecord_healthrecord`
--

INSERT INTO `normalcheckuprecord_healthrecord` (`NormalcheckuprecordRecordID`, `PhysicalCheckup`, `BloodPressure`, `Recommendations`) VALUES
(1, 'General Checkup', '120/80', 'Maintain a healthy diet'),
(2, 'Annual Physical Exam', '110/70', 'Exercise regularly'),
(3, 'Preventive Health Check', '130/85', 'Stay hydrated');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `NutritionID` int(11) NOT NULL,
  `FoodSecurityStatus` varchar(255) DEFAULT NULL,
  `EconomyID` int(11) DEFAULT NULL,
  `EnvID` int(11) DEFAULT NULL,
  `MalnutritionRate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`NutritionID`, `FoodSecurityStatus`, `EconomyID`, `EnvID`, `MalnutritionRate`) VALUES
(1, 'Secure', 1, 1, 4.2),
(2, 'Moderate', 2, 2, 6.8),
(3, 'Insecure', 3, 3, 9.5);

-- --------------------------------------------------------

--
-- Table structure for table `socialdeterminants`
--

CREATE TABLE `socialdeterminants` (
  `SocialDeterminantsID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `IncomeLevel` decimal(10,2) DEFAULT NULL,
  `EducationLevel` varchar(100) DEFAULT NULL,
  `OccupationStatus` varchar(100) DEFAULT NULL,
  `HousingStability` varchar(100) DEFAULT NULL,
  `QualityOfHousing` varchar(100) DEFAULT NULL,
  `NeighborhoodSafety` varchar(100) DEFAULT NULL,
  `HealthInsuranceCoverage` varchar(100) DEFAULT NULL,
  `HealthcareFacilitiesAvailability` varchar(100) DEFAULT NULL,
  `FamilySupport` varchar(100) DEFAULT NULL,
  `SocialRelationships` varchar(100) DEFAULT NULL,
  `AirAndWaterQuality` varchar(100) DEFAULT NULL,
  `AccessToNutritiousFood` varchar(100) DEFAULT NULL,
  `ChildhoodTrauma` varchar(100) DEFAULT NULL,
  `EarlyChildhoodEducationAccess` varchar(100) DEFAULT NULL,
  `TransportationAccess` varchar(100) DEFAULT NULL,
  `PublicTransportationAvailability` varchar(100) DEFAULT NULL,
  `GenderIdentity` varchar(100) DEFAULT NULL,
  `GenderBasedDiscrimination` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `socialdeterminants`
--

INSERT INTO `socialdeterminants` (`SocialDeterminantsID`, `UserID`, `IncomeLevel`, `EducationLevel`, `OccupationStatus`, `HousingStability`, `QualityOfHousing`, `NeighborhoodSafety`, `HealthInsuranceCoverage`, `HealthcareFacilitiesAvailability`, `FamilySupport`, `SocialRelationships`, `AirAndWaterQuality`, `AccessToNutritiousFood`, `ChildhoodTrauma`, `EarlyChildhoodEducationAccess`, `TransportationAccess`, `PublicTransportationAvailability`, `GenderIdentity`, `GenderBasedDiscrimination`) VALUES
(12, 2, 30000.00, 'High School Diploma', 'Unemployed', 'Unstable', 'Average', 'Moderate', 'No', 'Limited', 'Moderate', 'Moderate', 'Fair', 'Limited', 'Yes', 'Yes', 'Limited', 'Limited', 'Female', 'Yes'),
(13, 3, 80000.00, 'Master\'s Degree', 'Employed', 'Stable', 'Excellent', 'Very Safe', 'Yes', 'Available', 'Strong', 'Active', 'Excellent', 'Yes', 'No', 'No', 'Yes', 'Available', 'Non-binary', 'No'),
(14, 4, 45000.00, 'Bachelor\'s Degree', 'Freelancer', 'Stable', 'Good', 'Safe', 'Yes', 'Limited', 'Strong', 'Active', 'Good', 'Yes', 'No', 'Yes', 'Yes', 'Limited', 'Female', 'No'),
(15, 5, 60000.00, 'Associate Degree', 'Employed', 'Stable', 'Average', 'Safe', 'Yes', 'Available', 'Moderate', 'Active', 'Fair', 'Yes', 'Yes', 'No', 'Yes', 'Available', 'Male', 'Yes'),
(16, 1, 123123.00, 'Master\'s Degree', 'Employed', 'Stable', 'Excellent', 'Very Safe', 'Yes', 'Available', 'Strong', 'Active', 'Excellent', 'Yes', 'No', 'Yes', 'Yes', 'Available', 'Male', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `surgeryrecord_healthrecord`
--

CREATE TABLE `surgeryrecord_healthrecord` (
  `suergeryrecordRecordID` int(11) NOT NULL,
  `SurgeryProcedure` varchar(255) DEFAULT NULL,
  `SurgeonName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `surgeryrecord_healthrecord`
--

INSERT INTO `surgeryrecord_healthrecord` (`suergeryrecordRecordID`, `SurgeryProcedure`, `SurgeonName`) VALUES
(1, 'Appendectomy', 'Dr. Johnson'),
(2, 'Knee Replacement', 'Dr. White'),
(3, 'Cataract Surgery', 'Dr. Brown');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinic_healthinfrastructure`
--
ALTER TABLE `clinic_healthinfrastructure`
  ADD PRIMARY KEY (`cliniclHealthcareID`);

--
-- Indexes for table `dietaryintake`
--
ALTER TABLE `dietaryintake`
  ADD PRIMARY KEY (`intake_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `economicaleducationcontain`
--
ALTER TABLE `economicaleducationcontain`
  ADD PRIMARY KEY (`QualityOfEducation`,`EconomyID`,`EducationID`),
  ADD KEY `EconomyID` (`EconomyID`),
  ADD KEY `EducationID` (`EducationID`);

--
-- Indexes for table `economicfactor`
--
ALTER TABLE `economicfactor`
  ADD PRIMARY KEY (`EconomyID`),
  ADD KEY `EducationID` (`EducationID`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`EducationID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `emergencyrecord_healthrecord`
--
ALTER TABLE `emergencyrecord_healthrecord`
  ADD PRIMARY KEY (`emergencyrecordRecordID`);

--
-- Indexes for table `environment`
--
ALTER TABLE `environment`
  ADD PRIMARY KEY (`EnvID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `environment_indivisual`
--
ALTER TABLE `environment_indivisual`
  ADD PRIMARY KEY (`EnvID`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `govorg_interventation`
--
ALTER TABLE `govorg_interventation`
  ADD PRIMARY KEY (`govorgInterventionID`);

--
-- Indexes for table `healthinfrastructure`
--
ALTER TABLE `healthinfrastructure`
  ADD PRIMARY KEY (`HealthcareID`);

--
-- Indexes for table `healthrecord`
--
ALTER TABLE `healthrecord`
  ADD PRIMARY KEY (`RecordID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `healthserviceusage`
--
ALTER TABLE `healthserviceusage`
  ADD PRIMARY KEY (`UsageID`),
  ADD KEY `HealthcareID` (`HealthcareID`),
  ADD KEY `RecordID` (`RecordID`);

--
-- Indexes for table `hospital_healthinfrastructure`
--
ALTER TABLE `hospital_healthinfrastructure`
  ADD PRIMARY KEY (`hospitalHealthcareID`);

--
-- Indexes for table `indivisual`
--
ALTER TABLE `indivisual`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `indivisual_interventation`
--
ALTER TABLE `indivisual_interventation`
  ADD PRIMARY KEY (`ID`,`InterventionID`),
  ADD KEY `InterventionID` (`InterventionID`);

--
-- Indexes for table `interventation`
--
ALTER TABLE `interventation`
  ADD PRIMARY KEY (`InterventionID`);

--
-- Indexes for table `nongovorg_interventation`
--
ALTER TABLE `nongovorg_interventation`
  ADD PRIMARY KEY (`nongovorgInterventionID`);

--
-- Indexes for table `normalcheckuprecord_healthrecord`
--
ALTER TABLE `normalcheckuprecord_healthrecord`
  ADD PRIMARY KEY (`NormalcheckuprecordRecordID`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`NutritionID`),
  ADD KEY `EconomyID` (`EconomyID`),
  ADD KEY `EnvID` (`EnvID`);

--
-- Indexes for table `socialdeterminants`
--
ALTER TABLE `socialdeterminants`
  ADD PRIMARY KEY (`SocialDeterminantsID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `surgeryrecord_healthrecord`
--
ALTER TABLE `surgeryrecord_healthrecord`
  ADD PRIMARY KEY (`suergeryrecordRecordID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinic_healthinfrastructure`
--
ALTER TABLE `clinic_healthinfrastructure`
  MODIFY `cliniclHealthcareID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dietaryintake`
--
ALTER TABLE `dietaryintake`
  MODIFY `intake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `economicfactor`
--
ALTER TABLE `economicfactor`
  MODIFY `EconomyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `EducationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emergencyrecord_healthrecord`
--
ALTER TABLE `emergencyrecord_healthrecord`
  MODIFY `emergencyrecordRecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `environment`
--
ALTER TABLE `environment`
  MODIFY `EnvID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `govorg_interventation`
--
ALTER TABLE `govorg_interventation`
  MODIFY `govorgInterventionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `healthinfrastructure`
--
ALTER TABLE `healthinfrastructure`
  MODIFY `HealthcareID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `healthrecord`
--
ALTER TABLE `healthrecord`
  MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `healthserviceusage`
--
ALTER TABLE `healthserviceusage`
  MODIFY `UsageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hospital_healthinfrastructure`
--
ALTER TABLE `hospital_healthinfrastructure`
  MODIFY `hospitalHealthcareID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `indivisual`
--
ALTER TABLE `indivisual`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `interventation`
--
ALTER TABLE `interventation`
  MODIFY `InterventionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nongovorg_interventation`
--
ALTER TABLE `nongovorg_interventation`
  MODIFY `nongovorgInterventionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `normalcheckuprecord_healthrecord`
--
ALTER TABLE `normalcheckuprecord_healthrecord`
  MODIFY `NormalcheckuprecordRecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `NutritionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socialdeterminants`
--
ALTER TABLE `socialdeterminants`
  MODIFY `SocialDeterminantsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `surgeryrecord_healthrecord`
--
ALTER TABLE `surgeryrecord_healthrecord`
  MODIFY `suergeryrecordRecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinic_healthinfrastructure`
--
ALTER TABLE `clinic_healthinfrastructure`
  ADD CONSTRAINT `clinic_healthinfrastructure_ibfk_1` FOREIGN KEY (`cliniclHealthcareID`) REFERENCES `healthinfrastructure` (`HealthcareID`);

--
-- Constraints for table `dietaryintake`
--
ALTER TABLE `dietaryintake`
  ADD CONSTRAINT `dietaryintake_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `indivisual` (`ID`);

--
-- Constraints for table `economicaleducationcontain`
--
ALTER TABLE `economicaleducationcontain`
  ADD CONSTRAINT `economicaleducationcontain_ibfk_1` FOREIGN KEY (`EconomyID`) REFERENCES `economicfactor` (`EconomyID`),
  ADD CONSTRAINT `economicaleducationcontain_ibfk_2` FOREIGN KEY (`EducationID`) REFERENCES `education` (`EducationID`);

--
-- Constraints for table `economicfactor`
--
ALTER TABLE `economicfactor`
  ADD CONSTRAINT `economicfactor_ibfk_1` FOREIGN KEY (`EducationID`) REFERENCES `education` (`EducationID`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `indivisual` (`ID`);

--
-- Constraints for table `emergencyrecord_healthrecord`
--
ALTER TABLE `emergencyrecord_healthrecord`
  ADD CONSTRAINT `emergencyrecord_healthrecord_ibfk_1` FOREIGN KEY (`emergencyrecordRecordID`) REFERENCES `healthrecord` (`RecordID`);

--
-- Constraints for table `environment`
--
ALTER TABLE `environment`
  ADD CONSTRAINT `environment_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `indivisual` (`ID`);

--
-- Constraints for table `environment_indivisual`
--
ALTER TABLE `environment_indivisual`
  ADD CONSTRAINT `environment_indivisual_ibfk_1` FOREIGN KEY (`EnvID`) REFERENCES `environment` (`EnvID`),
  ADD CONSTRAINT `environment_indivisual_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `indivisual` (`ID`);

--
-- Constraints for table `healthrecord`
--
ALTER TABLE `healthrecord`
  ADD CONSTRAINT `healthrecord_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `indivisual` (`ID`);

--
-- Constraints for table `healthserviceusage`
--
ALTER TABLE `healthserviceusage`
  ADD CONSTRAINT `healthserviceusage_ibfk_1` FOREIGN KEY (`HealthcareID`) REFERENCES `healthinfrastructure` (`HealthcareID`),
  ADD CONSTRAINT `healthserviceusage_ibfk_2` FOREIGN KEY (`RecordID`) REFERENCES `healthrecord` (`RecordID`);

--
-- Constraints for table `hospital_healthinfrastructure`
--
ALTER TABLE `hospital_healthinfrastructure`
  ADD CONSTRAINT `hospital_healthinfrastructure_ibfk_1` FOREIGN KEY (`hospitalHealthcareID`) REFERENCES `healthinfrastructure` (`HealthcareID`);

--
-- Constraints for table `indivisual_interventation`
--
ALTER TABLE `indivisual_interventation`
  ADD CONSTRAINT `indivisual_interventation_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `indivisual` (`ID`),
  ADD CONSTRAINT `indivisual_interventation_ibfk_2` FOREIGN KEY (`InterventionID`) REFERENCES `interventation` (`InterventionID`);

--
-- Constraints for table `normalcheckuprecord_healthrecord`
--
ALTER TABLE `normalcheckuprecord_healthrecord`
  ADD CONSTRAINT `normalcheckuprecord_healthrecord_ibfk_1` FOREIGN KEY (`NormalcheckuprecordRecordID`) REFERENCES `healthrecord` (`RecordID`);

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `nutrition_ibfk_1` FOREIGN KEY (`EconomyID`) REFERENCES `economicfactor` (`EconomyID`),
  ADD CONSTRAINT `nutrition_ibfk_2` FOREIGN KEY (`EnvID`) REFERENCES `environment` (`EnvID`);

--
-- Constraints for table `socialdeterminants`
--
ALTER TABLE `socialdeterminants`
  ADD CONSTRAINT `socialdeterminants_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `indivisual` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `surgeryrecord_healthrecord`
--
ALTER TABLE `surgeryrecord_healthrecord`
  ADD CONSTRAINT `surgeryrecord_healthrecord_ibfk_1` FOREIGN KEY (`suergeryrecordRecordID`) REFERENCES `healthrecord` (`RecordID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
