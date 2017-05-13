

CREATE TABLE `emp` (
  `EMPNO` int(11) NOT NULL,
  `ENAME` varchar(45) DEFAULT NULL,
  `EMPcol` varchar(45) DEFAULT NULL,
  `JOB` varchar(45) DEFAULT NULL,
  `JOINDATE` datetime DEFAULT NULL,
  `MOBILE` varchar(45) DEFAULT NULL,
  `DNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `account` (
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `MOBILE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `employee_system`.`dept` (
  `DNO` INT NOT NULL,
  `DNAME` VARCHAR(45) NULL,
  `LOC` VARCHAR(45) NULL,
  PRIMARY KEY (`DNO`));


INSERT INTO employee_system.account VALUES ("sarang", "sarang", "sarang@gmail.com", "99886654");