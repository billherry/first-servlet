-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2014 at 10:43 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jdbctest`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE IF NOT EXISTS `emp` (
  `empno` int(11) NOT NULL,
  `ename` varchar(10) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `job` varchar(9) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `mgr` int(11) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` float DEFAULT NULL,
  `comm` float DEFAULT NULL,
  `deptno` int(11) DEFAULT NULL,
  PRIMARY KEY (`empno`),
  KEY `emp_fk` (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES
(7369, 'SMITH', 'CLERK', 7902, '2012-12-17', 1800, NULL, 20),
(7499, 'KISS', 'SALESMAN', 7698, '2014-02-21', 2600, 300, 30),
(7521, 'MORGAN', 'SALESMAN', 7698, '2013-02-22', 2250, 500, 30),
(7566, 'NORGAARD', 'MANAGER', 7839, '2011-04-01', 3975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '2011-09-28', 3250, 1400, 30),
(7698, 'BLAKE', 'MANAGER', 7839, '2013-05-01', 4850, NULL, 30),
(7782, 'FOOTE', 'MANAGER', 7839, '2012-06-09', 4450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1991-07-13', 4000, NULL, 20),
(7839, 'ELLISON', 'PRESIDENT', NULL, '2010-11-17', 50000, NULL, 10),
(7844, 'TURNER', 'SALESMAN', 7698, '2012-09-08', 3500, 0, 30),
(7876, 'ADAMS', 'CLERK', 7788, '2011-06-18', 3100, NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '2011-12-03', 2950, NULL, 30),
(7902, 'LOFSTROM', 'ANALYST', 7566, '2012-12-04', 4000, NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '2012-01-23', 2300, NULL, 10),
(8080, 'BORGAN', 'MANAGER', 7788, '2013-02-20', 4000, 500, 10);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_fk` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
