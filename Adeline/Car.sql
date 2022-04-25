/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - car
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`car` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `car`;

/*Table structure for table `bcount` */

DROP TABLE IF EXISTS `bcount`;

CREATE TABLE `bcount` (
  `user` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ccount` int(22) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bcount` */

insert  into `bcount`(`user`,`date`,`ccount`) values ('Lakshmi','2022-04-01 15:21:39',0),('Test','2022-04-01 16:08:39',0);

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `slot` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` int(22) DEFAULT '150',
  `status` varchar(200) DEFAULT 'Booked',
  `ccount` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`sno`,`user`,`slot`,`date`,`amount`,`status`,`ccount`) values (18,'Lakshmi','Slot1','2022-04-04 13:46:05',150,'Booked',NULL),(19,'Lakshmi','null','2022-04-04 14:09:54',150,'Booked',NULL),(20,'Lakshmi','slot1','2022-04-04 14:10:54',150,'Booked',NULL),(21,'Lakshmi','slot2','2022-04-04 14:14:06',150,'Booked',NULL);

/*Table structure for table `monitor` */

DROP TABLE IF EXISTS `monitor`;

CREATE TABLE `monitor` (
  `s1` varchar(200) DEFAULT NULL,
  `s2` varchar(200) DEFAULT NULL,
  `s3` varchar(200) DEFAULT NULL,
  `s4` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `monitor` */

insert  into `monitor`(`s1`,`s2`,`s3`,`s4`) values ('null','null',NULL,NULL),('null','null',NULL,NULL),('null','null',NULL,NULL),('null','null',NULL,NULL),('null','null',NULL,NULL),('null','null',NULL,NULL),('1','6',NULL,NULL),('1','6',NULL,NULL),('1','6',NULL,NULL),('null','null','null','null'),('0','2','4','5'),('2','4','4','null'),('2','4','4','3');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `blood` varchar(200) DEFAULT NULL,
  `car` varchar(200) DEFAULT NULL,
  `tn` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`sno`,`user`,`lname`,`pass`,`email`,`date`,`gender`,`blood`,`car`,`tn`,`mobile`,`location`,`image`) values (1,'Lakshmi','G','lakshmi','lakshmi@gmail.com','14/07/2000','female','o+','Bens i5','TN1406','8285956652','Chennai','admin.png'),(2,'Test','D','test','test@gmail.com','14/07/21','female','o+','Bens i3 Seris','TN1406353','83465678876','Guindy Chennai','aaa.jpg');

/*Table structure for table `sloting` */

DROP TABLE IF EXISTS `sloting`;

CREATE TABLE `sloting` (
  `slot` varchar(11) DEFAULT NULL,
  `date` varchar(222) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sloting` */

insert  into `sloting`(`slot`,`date`,`status`) values ('slot1',NULL,'1'),('slot2',NULL,'1'),('slot3',NULL,'0'),('slot4',NULL,'0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
