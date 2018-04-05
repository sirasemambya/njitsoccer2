
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
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
`ID` int(4) NOT NULL,
  `teamname` varchar(50) NOT NULL,
  `Coach` varchar(50) NOT NULL,
  `gk` varchar(50) NOT NULL,
  `def1` varchar(50) NOT NULL,
  `def2` varchar(50) NOT NULL,
  `def3` varchar(50) NOT NULL,
  `mid1` varchar(50) NOT NULL,
  `mid2` varchar(50) NOT NULL,
  `mid3` varchar(50) NOT NULL,
  `for1` varchar(50) NOT NULL,
  `for2` varchar(50) NOT NULL,
  `fr` varchar(50) NOT NULL,
  `start` int(11) NOT NULL,
  `def1s` int(11) NOT NULL,
  `def2s` int(11) NOT NULL,
  `def3s` int(11) NOT NULL,
  `mid1s` int(11) NOT NULL,
  `mid2s` int(11) NOT NULL,
  `mid3s` int(11) NOT NULL,
  `for1s` int(11) NOT NULL,
  `for2s` int(11) NOT NULL,
  `frs` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`ID`, `teamname`, `Coach`, `gk`, `def1`, `def2`, `def3`, `mid1`, `mid2`, `mid3`, `for1`, `for2`, `fr`, `start`, `def1s`, `def2s`, `def3s`, `mid1s`, `mid2s`, `mid3s`, `for1s`, `for2s`, `frs`) VALUES
(2, 'Chelsea FC', 'lkjkj', 'Vince', 'Christine Seryazi-Yawe', 'Mary Semambya', 'Vince', 'Mizaga', 'Sommo', 'Silva', 'Costa', 'Dad', 'Tom', 1, 1, 0, 1, 0, 0, 1, 1, 1, 0),
(3, 'Inter Milan', 'Henry Jacob', 'Tyerall', 'Phil', 'Chris', 'Jake', 'Suado', 'Yorel', 'Leroy', 'Tyler', 'Glinder', 'Sean', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Real Madrid', 'Johnny Love', 'Grace', 'Bakayoko', 'Danny', 'Drinkwater', 'Ruben', 'Loftus', 'Cheeks', 'Lewis', 'Baker', 'Boga', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Tottenahm', 'Sergio Ramos', 'Henry', 'Jacob', 'Lillard', 'Martin', 'Sean', 'Rashford', 'Lingard', 'Sane', 'Silva', 'Aguero', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'AC Milan', 'Vince James', 'Yorel', 'Carter', 'Di Matteo', 'Giggs', 'Scholes', 'Beckham', 'Hunn', 'Rich', 'Rony', 'Rory', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Sevilla', 'Jarvis Hayes', 'Tony', 'Vince', 'Chris', 'Jake', 'rashad', 'Yorel', 'Leroy', 'rony', 'Glinder', 'Sean', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'Vitesse', 'Christine Seryazi-Yawe', 'Heffer', 'Chris', 'Jacob', 'Martin', 'Pique', 'Dembele', 'Zeda', 'Zola', 'Aguero', 'Jesus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `team`
--
ALTER TABLE `team`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
