-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2023 at 07:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `statedata`
--
CREATE DATABASE IF NOT EXISTS `statedata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `statedata`;


-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state` varchar(14) DEFAULT NULL,
  `abbr` varchar(4) DEFAULT NULL,
  `capital` varchar(14) DEFAULT NULL,
  `region` varchar(9) DEFAULT NULL,
  `bird` varchar(64) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state`, `abbr`, `capital`, `region`, `bird`) VALUES
('Alabama', 'AL', 'Montgomery', 'South', 'Yellowhammer (Northern Flicker)'),
('Alaska', 'AK', 'Juneau', 'West', 'Willow Ptarmigan'),
('Arizona', 'AZ', 'Phoenix', 'West', 'Cactus Wren'),
('Arkansas', 'AR', 'Little Rock', 'South', ' Northern Mockingbird'),
('California', 'CA', 'Sacramento', 'West', 'California Quail'),
('Colorado', 'CO', 'Denver', 'West', 'Lark Bunting'),
('Connecticut', 'CT', 'Hartford', 'Northeast', 'American Robin'),
('Delaware', 'DE', 'Dover', 'Northeast', 'Delaware Blue Hen'),
('Florida', 'FL', 'Tallahassee', 'South', 'Northern Mockingbird'),
('Georgia', 'GA', 'Atlanta', 'South', 'Brown Thrasher'),
('Hawaii', 'HI', 'Honolulu', 'West', 'Hawaiian Goose (Nēnē)'),
('Idaho', 'ID', 'Boise', 'West', 'Mountain Bluebird'),
('Illinois', 'IL', 'Springfield', 'Midwest', 'Northern Cardinal'),
('Indiana', 'IN', 'Indianapolis', 'Midwest', 'Northern Cardinal'),
('Iowa', 'IA', 'Des Moines', 'Midwest', 'Eastern Goldfinch (American Goldfinch)'),
('Kansas', 'KS', 'Topeka', 'Midwest', ' Western Meadowlark'),
('Kentucky', 'KY', 'Frankfort', 'South', 'Cardinal'),
('Louisiana', 'LA', 'Baton Rouge', 'South', 'Eastern Brown Pelican'),
('Maine', 'ME', 'Augusta', 'Northeast', 'Chickadee'),
('Maryland', 'MD', 'Annapolis', 'Northeast', 'Baltimore Oriole'),
('Massachusetts', 'MA', 'Boston', 'Northeast', 'Chickadee'),
('Michigan', 'MI', 'Lansing', 'Midwest', 'Robin'),
('Minnesota', 'MN', 'St. Paul', 'Midwest', 'Common Loon'),
('Mississippi', 'MS', 'Jackson', 'South', 'Mockingbird'),
('Missouri', 'MO', 'Jefferson City', 'Midwest', 'Bluebird'),
('Montana', 'MT', 'Helena', 'West', 'Western Meadowlark'),
('Nebraska', 'NE', 'Lincoln', 'Midwest', 'Western Meadowlark'),
('Nevada', 'NV', 'Carson City', 'West', 'Mountain Bluebird'),
('New Hampshire', 'NH', 'Concord', 'Northeast', 'Purple finch'),
('New Jersey', 'NJ', 'Trenton', 'Northeast', 'Eastern Goldfinch'),
('New Mexico', 'NM', 'Santa Fe', 'West', 'Roadrunner'),
('New York', 'NY', 'Albany', 'Northeast', 'Eastern Bluebird'),
('North Carolina', 'NC', 'Raleigh', 'South', 'Cardinal'),
('North Dakota', 'ND', 'Bismarck', 'Midwest', 'Western Meadowlark'),
('Ohio', 'OH', 'Columbus', 'Midwest', 'Cardinal'),
('Oklahoma', 'OK', 'Oklahoma City', 'South', 'Scissor-tailed Flycatche'),
('Oregon', 'OR', 'Salem', 'West', 'Western Meadowlark'),
('Pennsylvania', 'PA', 'Harrisburg', 'Northeast', 'Ruffed Grouse'),
('Rhode Island', 'RI', 'Providence', 'Northeast', 'Rhode Island Red Hen'),
('South Carolina', 'SC', 'Columbia', 'South', 'Carolina Wren'),
('South Dakota', 'SD', 'Pierre', 'Midwest', 'Ring-necked Pheasant'),
('Tennessee', 'TN', 'Nashville', 'South', 'Mockingbird'),
('Texas', 'TX', 'Austin', 'South', 'Mockingbird'),
('Utah', 'UT', 'Salt Lake City', 'West', 'Ring-billed Gull'),
('Vermont', 'VT', 'Montpelier', 'Northeast', 'Hermit Thrush'),
('Virginia', 'VA', 'Richmond', 'South', 'Cardinal'),
('Washington', 'WA', 'Olympia', 'West', 'Willow Goldfinch'),
('West Virginia', 'WV', 'Charleston', 'South', 'Cardinal'),
('Wisconsin', 'WI', 'Madison', 'Midwest', 'Robin'),
('Wyoming', 'WY', 'Cheyenne', 'West', 'Western Meadowlark');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD UNIQUE KEY `State_ix` (`state`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
