-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2019 at 07:42 PM
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
-- Database: `db_favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favourites`
--

DROP TABLE IF EXISTS `tbl_favourites`;
CREATE TABLE IF NOT EXISTS `tbl_favourites` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(50) NOT NULL,
  `IMAGE` varchar(50) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `VIDEO` varchar(50) NOT NULL,
  `ALT` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_favourites`
--

INSERT INTO `tbl_favourites` (`ID`, `TITLE`, `IMAGE`, `DESCRIPTION`, `VIDEO`, `ALT`) VALUES
(1, 'Dogs', 'images/dog.svg', 'Dogs are my favourite animal. They are really cute, loyal and they are \"man\'s best friend\" I have two dogs, Bentley and Cindy. They are very playful and are always happy to see me. They are also very funny and cool.', 'https://www.youtube.com/watch?v=sbR1SNJs_vM', 'favourite animal'),
(2, 'Oreo Milkshake', 'images/milkshake.svg', 'My favourite type of milkshake is the oreo milkshake, oreos are my favoutie snack and cookies, but I don\'t like them as much as Oreo Milkshakes, they are yummy and you can never go wrong with them. I use some recipes to make them.', 'https://www.youtube.com/watch?v=kOFVuvAYV7Q', 'favourite milkshake'),
(3, 'Roses', 'images/roses.svg', 'Roses are hands down my favourite flowers, they can be used for different occasions like valentine\'s day or just to decorate a room, I also love the pattern that their petals make, it\'s beautiful and unique. I would love to plant some roses in my garden in the future.', 'https://www.youtube.com/watch?v=0hOfvYRHV3o', 'favourite flower');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
