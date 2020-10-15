CREATE DATABASE IF NOT EXISTS enrolment;
USE enrolment;



DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`(
`teacherID` char(10) NOT NULL,
`name` char(50) NOT NULL,
`department` char (50) NOT NULL,
primary key(`teacherID`)
);
INSERT INTO `teacher` (`teacherID`, `name`, `department`) VALUES
('T001', 'Tiba, Joriel', 'CSD'),
('T002', 'Francisco, Cyrine', 'CSD'),
('T003', 'Badoria, Luz MIB', 'NATSCI'),
('T004', 'Sobrepeña, Shiela Mae P.','MATH'),
('T005', 'Halique, Jun Rey', 'SOCSCI'),
('T006', 'Balala, Brenda ', 'CSD'),
('T007', 'Arandalio, Jethro ', 'PE'),
('T008', 'Cabiling, Karla Jane ', 'LANGUAGE'),
('T009', 'Arellano, Juliet ', 'LANGUAGE'),
('T010', 'Navarro, Rely Navarro', 'RELIGION'),
('T011', 'Alo, Marietta', 'RELIGION'),
('T012', 'Magadia, Jessica Magadia','MATH');

DROP TABLE IF exists `subject`;
CREATE TABLE `subject`(
`subjcode` char(20) NOT NULL,
`description` char(50) NOT NULL,
`units` int(5) unsigned NOT NULL,
PRIMARY KEY (`subjcode`)
);

INSERT INTO `subject` (`subjcode`, `description`, `units`) VALUES
('CSPC102', 'Discrete Structures 2', 3),
('CSPC103', 'Obejct-oriented Programming', 5),
('CSPC104', 'Data Structures and Algorithms', 5),
('CSCC101', 'Introduction to Computing', 5),
('SSP111', 'Understanding the Self', 3),
('MST112', 'Science Technology & Society', 3),
('MST111', 'Math in our Modern World', 3),
('RE105', 'Christian Faith', 3),
('LIT121', 'Philipine Literature', 3),
('ENGL103', 'Intensive Grammar', 3),
('PE121', 'Individual & Dual Sport', 2);


DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`(
`schedID` char(10) NOT NULL,
`subjcode` char(50) NOT NULL,
`teacherID` char (50) NOT NULL,
`time` char(20) NOT NULL,
`room` char(50) NOT NULL,
`day` char (50) NOT NULL,
primary key(`schedID`)
);

INSERT INTO `schedule` (`schedID`, `subjCode`, `teacherID`, `time`, `room`, `day`) VALUES
('sched01', 'CSPC102', 'T001','9:00-10:30', '2001', 'MW'),
('sched02', 'CSCC101', 'T002','11:30-1:30', '3001', 'MWF'),
('sched03', 'CSPC104', 'T006','1:00-3:30', '3001', 'TTH'),
('sched04', 'CSPC103', 'T006','5:30-8:00', '3001', 'TTH'),
('sched05', 'SSP111', 'T005','10:30-12:00', 'SLR229', 'TTH'),
('sched06', 'MST112', 'T003','5:30-6:30', '3006', 'MWF'),
('sched07', 'MST111', 'T004','6:30-7:30', 'CREEGAN4', 'MWF'),
('sched08', 'MST111', 'T012','12:30-1:30', 'DUMONT6', 'MWF'),
('sched09', 'RE105', 'T011','1:30-2:30', 'SLR228', 'MWF'),
('sched10', 'RE105', 'T010','3:30-4:30', 'SLR228', 'MWF'),
('sched11', 'LIT121', 'T009','7:30-8:30', 'SLR229', 'MWF'),
('sched12', 'ENGL103', 'T008','10:30-11:30', 'SLR122', 'MWF'),
('sched13', 'PE121', 'T007','7:30-9:00', 'GYM2', 'TTH');

DROP TABLE IF exists `student`;
CREATE TABLE `student`(
`studid` int(10) unsigned NOT NULL,
`name` char(50) NOT NULL,
`course` char(10) NOT NULL,
primary key(`studid`)
);
INSERT INTO `student` (`studid`, `name`, `course`) VALUES
(1, 'Vilrose Daquiado', 'bscs'),
(2, 'Eugayny Odio', 'bscs'),
(3, 'Anna Asaria','bscs'),
(4, 'Shekinah Mae Galdones', 'bscs'),
(5, 'Kim John Bautista', 'bscs'),
(6, 'John Ronelo Menasalvas', 'bscs'),
(7, 'Javery Alisna', 'bscs'),
(8, 'Mark Panes', 'bscs'),
(9, 'Tsidkenu Dela Cruz', 'bscs'),
(10, 'Christian Lloyd Amar', 'bscs'),
(11, 'Susana Tambasan', 'bSmedtech'),
(12, 'Charlotte Gulac', 'bsit'),
(13, 'Stephen Anlocotan', 'bscs'),
(14, 'Janric Palmaera', 'bsit'),
(15, 'Carl Angelo Poquita', 'bsit');



DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`(
`studid` int(10)  NOT NULL,
`schedID` char(10) NOT NULL,
`grade` float(10) NOT NULL,

);

INSERT INTO `grade` (`studid`, `schedID`, `grade`) VALUES
(1, 'sched01', 2.00 ),
(1, 'sched02', 1.50 ),
(1, 'sched03', 1.25 ),
(1, 'sched04', 1.00 ),
(1, 'sched05', 1.50 ),
(1, 'sched06', 1.50),
(1, 'sched07', 1.25),
(1, 'sched09', 1.50),
(2, 'sched01', 1.50 ),
(2, 'sched10', 1.25 ),
(2, 'sched08', 1.25 ),
(2, 'sched04', 1.00),
(2, 'sched03', 1.50 ),
(2, 'sched11', 2.00),
(2, 'sched13', 1.50),
(2, 'sched05', 1.50),
(3, 'sched01', 2.00 ),
(3, 'sched02', 1.50 ),
(3, 'sched03', 1.25 ),
(3, 'sched04', 1.00 ),
(3, 'sched05', 1.50 ),
(3, 'sched06', 1.50),
(3, 'sched07', 1.25),
(3, 'sched09', 1.50),
(4, 'sched01', 2.00 ),
(4, 'sched02', 1.50 ),
(4, 'sched03', 1.25 ),
(4, 'sched04', 1.00 ),
(4, 'sched05', 1.50),
(4, 'sched06', 1.50),
(4, 'sched07', 1.25),
(4, 'sched09', 1.50),
(4, 'sched01', 2.00 ),
(5, 'sched02', 1.50),
(5, 'sched03', 1.25 ),
(5, 'sched04', 1.00 ),
(5, 'sched05', 1.50 ),
(5, 'sched06', 1.50),
(5, 'sched07', 1.25),
(5, 'sched09', 1.50);