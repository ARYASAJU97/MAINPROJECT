/*
SQLyog Ultimate v11.33 (32 bit)
MySQL - 5.5.8-log : Database - mri
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mri` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mri`;

/*Table structure for table `addprescription` */

DROP TABLE IF EXISTS `addprescription`;

CREATE TABLE `addprescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `details` varchar(100) NOT NULL,
  `prescription` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `addprescription` */

insert  into `addprescription`(`id`,`pid`,`did`,`details`,`prescription`) values (2,9,1,'fever','paracetamol 500g'),(3,10,2,'Brain tumour','paracetamol'),(4,10,1,'fever','paracetamol');

/*Table structure for table `doctorreg` */

DROP TABLE IF EXISTS `doctorreg`;

CREATE TABLE `doctorreg` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `specification` varchar(30) NOT NULL,
  `qualification` varchar(30) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `doctorreg` */

insert  into `doctorreg`(`did`,`name`,`email`,`phoneno`,`specification`,`qualification`) values (1,'arjun','arjun@gmail.com',2147483647,'neurolagy','MBBS'),(3,'doc','doc@gmail.com',2147483647,'Pathology','Graduate');

/*Table structure for table `labreg` */

DROP TABLE IF EXISTS `labreg`;

CREATE TABLE `labreg` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `qualification` varchar(30) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `labreg` */

insert  into `labreg`(`rid`,`name`,`email`,`phoneno`,`qualification`) values (1,'manju','manju@gmail.com',2147483647,'MBA'),(2,'nirog','nirog@gmail.com',2147483647,'nirog lab');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`uname`,`password`,`usertype`,`status`) values ('admin@gmail.com','admin','admin','approved'),('rijo@gmail.com','rijo','doctor','approved'),('manju@gmail.com','manju','receptionist','approved'),('prakash@gmail.com','9999999999','doctor','approved'),('arjun@gmail.com','arjun','doctor','approved'),('a@gmail.com','9900887889','doctor','approved'),('anu@gmail.com','9988899009','user','approved'),('nirog@gmail.com','9999999999','lab','approved'),('doc@gmail.com','9466456846','doctor','approved');

/*Table structure for table `mri` */

DROP TABLE IF EXISTS `mri`;

CREATE TABLE `mri` (
  `mriid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`mriid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `mri` */

insert  into `mri`(`mriid`,`pid`,`did`,`status`,`image`) values (1,12,1,'requested','/media/images.jpg'),(2,12,3,'requested','/media/images.jpg');

/*Table structure for table `patientbooking` */

DROP TABLE IF EXISTS `patientbooking`;

CREATE TABLE `patientbooking` (
  `pbid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`pbid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `patientbooking` */

insert  into `patientbooking`(`pbid`,`pid`,`did`,`status`) values (3,9,1,'discharge'),(4,10,2,''),(5,10,1,''),(6,11,2,'booked'),(7,12,1,'mri'),(8,12,1,'mri'),(9,12,3,'mri');

/*Table structure for table `patientreg` */

DROP TABLE IF EXISTS `patientreg`;

CREATE TABLE `patientreg` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `patientreg` */

insert  into `patientreg`(`pid`,`name`,`email`,`phoneno`) values (4,'raju','raju@gmail.com',2147483647),(5,'raju','raju@gmail.com',2147483647),(6,'raju','raju@gmail.com',2147483647),(7,'jose','jose@gmail.com',2147483647),(8,'babu','babu@gmail.com',1234567890),(9,'binu','binu@gmail.com',1234567890),(10,'appu','appu@gmail.com',2147483647),(11,'manu','manu@gmail.com',2147483647),(12,'anu','anu@gmail.com',2147483647);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
