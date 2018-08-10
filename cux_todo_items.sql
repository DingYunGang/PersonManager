/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.6.25-log 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `cux_todo_items` (
	`TODO_ITEM_ID` bigint (20),
	`USER_ID` bigint (20),
	`TODO_ITEM_TITLE` varchar (750),
	`TODO_ITEM_CONTENT` varchar (6000),
	`PRIORITY` varchar (30),
	`CREATION_DATE` datetime ,
	`LAST_UPDATE_DATE` datetime ,
	`COMMENTS` varchar (6000)
); 
insert into `cux_todo_items` (`TODO_ITEM_ID`, `USER_ID`, `TODO_ITEM_TITLE`, `TODO_ITEM_CONTENT`, `PRIORITY`, `CREATION_DATE`, `LAST_UPDATE_DATE`, `COMMENTS`) values('106','100','打卡','天天打卡','中','2018-07-24 10:14:17','2018-07-24 10:51:49','下班后填写');
insert into `cux_todo_items` (`TODO_ITEM_ID`, `USER_ID`, `TODO_ITEM_TITLE`, `TODO_ITEM_CONTENT`, `PRIORITY`, `CREATION_DATE`, `LAST_UPDATE_DATE`, `COMMENTS`) values('109','100','每天锻炼','明天开始','中','2018-07-24 10:14:17','2018-07-24 10:14:48','每天坚持锻炼');
insert into `cux_todo_items` (`TODO_ITEM_ID`, `USER_ID`, `TODO_ITEM_TITLE`, `TODO_ITEM_CONTENT`, `PRIORITY`, `CREATION_DATE`, `LAST_UPDATE_DATE`, `COMMENTS`) values('110','100','做项目','JavaWeb','高','2018-07-24 10:14:17','2018-07-24 10:14:48','管理系统');
