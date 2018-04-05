

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sbs43`
--

-- --------------------------------------------------------

--
-- Table structure for table `schoolaccount`
--

CREATE TABLE IF NOT EXISTS `schoolaccount` (
  `schoolname` varchar(20) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolaccount`
--

INSERT INTO `schoolaccount` (`schoolname`, `first`, `last`, `email`, `phone`, `password`) VALUES
('pizzass', 'Sira', 'Semambya', '05396db744faa3a0cd78', '59a7a79484c8fcf232c7', '03c7c0ace395d80182db'),
('montclair', 'Christine', 'Seryazi-Yawe', '097927ef7c6e3f7941f6', '59a7a79484c8fcf232c7', '03c7c0ace395d80182db'),
('dfalkj', 'Edward', 'Semambya', '61714bbd754ba40ecce2', '8c087992b9f3176f9ca4', '03c7c0ace395d80182db'),
('rutgers', 'Mary', 'Semambya', 'd708d7256258352eac10', 'a359e5c1993d73673b19', '03c7c0ace395d80182db');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schoolaccount`
--
ALTER TABLE `schoolaccount`
 ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `schoolname` (`schoolname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
