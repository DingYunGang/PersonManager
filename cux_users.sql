/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.6.25-log 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `cux_users` (
	`USER_ID` bigint (20),
	`USER_NAME` varchar (750),
	`PASSWORD` varchar (90),
	`sex` varchar (3),
	`AGE` bigint (20),
	`PHONE_NUMBER` varchar (90),
	`CREATION_DATE` datetime ,
	`LAST_UPDATE_DATE` datetime ,
	`COMMENTS` varchar (6000)
); 
insert into `cux_users` (`USER_ID`, `USER_NAME`, `PASSWORD`, `sex`, `AGE`, `PHONE_NUMBER`, `CREATION_DATE`, `LAST_UPDATE_DATE`, `COMMENTS`) values('100','丁云刚','2000','男','20','1233557','2018-07-23 16:36:25','2018-07-24 14:19:59','修改');
