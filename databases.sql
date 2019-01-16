/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.7.19 : Database - db_managementproblem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


/*Table structure for table `tb_incident` */

DROP TABLE IF EXISTS `tb_incident`;

CREATE TABLE `tb_incident` (
  `IncidentID` int(8) NOT NULL AUTO_INCREMENT,
  `Incident_App` char(40) DEFAULT NULL,
  `Incident_Inc` char(40) DEFAULT NULL,
  `Incident_Periode` char(30) DEFAULT NULL,
  `Incident_Source` char(30) DEFAULT NULL,
  `Incident_Unit` char(10) DEFAULT NULL,
  `Incident_PIC` char(40) DEFAULT NULL,
  `Incident_PName` char(40) DEFAULT NULL,
  PRIMARY KEY (`IncidentID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tb_incident` */

/*Table structure for table `tb_known` */

DROP TABLE IF EXISTS `tb_known`;

CREATE TABLE `tb_known` (
  `KnownID` int(8) NOT NULL AUTO_INCREMENT,
  `Known_SName` char(40) DEFAULT NULL,
  `Known_Problem` char(40) DEFAULT NULL,
  `Known_ErrFix` tinytext,
  `Known_Unit` char(20) DEFAULT NULL,
  `Known_PIC` char(40) DEFAULT NULL,
  `Known_FixDesc` tinytext,
  `Known_Date` date DEFAULT NULL,
  `Known_Note` char(40) DEFAULT NULL,
  PRIMARY KEY (`KnownID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tb_known` */

/*Table structure for table `tb_problem` */

DROP TABLE IF EXISTS `tb_problem`;

CREATE TABLE `tb_problem` (
  `ProblemID` int(8) NOT NULL AUTO_INCREMENT,
  `Problem_SName` char(40) DEFAULT NULL,
  `Problem_IName` char(40) DEFAULT NULL,
  `Problem_Source` char(30) DEFAULT NULL,
  `Problem_Periode` char(30) DEFAULT NULL,
  `Problem_Classification` char(20) DEFAULT NULL,
  `Problem_Problem` char(1) DEFAULT NULL,
  `Problem_Note` char(20) DEFAULT NULL,
  `Problem_Keterangan` tinytext,
  PRIMARY KEY (`ProblemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tb_problem` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `UserID` int(8) NOT NULL AUTO_INCREMENT,
  `User_Name` char(40) DEFAULT NULL,
  `User_Email` char(25) DEFAULT NULL,
  `User_Phone` char(13) DEFAULT NULL,
  `User_Password` char(40) DEFAULT NULL,
  `User_Position` char(40) DEFAULT NULL,
  `User_Role` int(1) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
