
DROP TABLE IF EXISTS `affiliate`;

CREATE TABLE `affiliate` (
  `affid` int(4) NOT NULL AUTO_INCREMENT,
  `aname` varchar(55) NOT NULL,
  `contact` varchar(55) NOT NULL,
  `aaddress` varchar(55) NOT NULL,
  PRIMARY KEY (`affid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `affiliate` WRITE;
/*!40000 ALTER TABLE `affiliate` DISABLE KEYS */;

INSERT INTO `affiliate` (`affid`, `aname`, `contact`, `aaddress`)
VALUES
	(1,'Sanjay Mishra','9876543210','Rajori Garden, Delhi'),
	(2,'Shilpi Sharma','9839274622','Sarita Vihar , Delhi'),
	(3,'Rajesh Kumar','7456393829','Rajori Garden , Delhi'),
	(4,'Vishnu Murthy','876543298','B-29, Allahabad, India'),
	(5,'Geeta Shah','7383725372','Chandni Chowk , Delhi');

/*!40000 ALTER TABLE `affiliate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table case_con
# ------------------------------------------------------------

DROP TABLE IF EXISTS `case_con`;

CREATE TABLE `case_con` (
  `caseid` int(4) NOT NULL,
  `casetype` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `case_con` WRITE;
/*!40000 ALTER TABLE `case_con` DISABLE KEYS */;

INSERT INTO `case_con` (`caseid`, `casetype`)
VALUES
	(1,'Civil'),
	(2,'Civil'),
	(3,'Criminal'),
	(4,'Criminal'),
	(5,'Criminal'),
	(10002,'Criminal');

/*!40000 ALTER TABLE `case_con` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cases`;

CREATE TABLE `cases` (
  `caseid` int(4) NOT NULL AUTO_INCREMENT,
  `caseyear` int(4) NOT NULL,
  `party1` varchar(55) NOT NULL,
  `party2` varchar(55) NOT NULL,
  `affiliatedcounsel` varchar(55) NOT NULL,
  `casedescription` varchar(1024) NOT NULL,
  PRIMARY KEY (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;

INSERT INTO `cases` (`caseid`, `caseyear`, `party1`, `party2`, `affiliatedcounsel`, `casedescription`)
VALUES
	(1,2017,'Usha Sahay','State of UP','Rajiv Verma','Usha Sahay, a teacher from Saharanpur, has been accussed of violence inside the classroom in which the Saharanpur police held him on unjust ground. Looking into the gravity of the case, a team of the firm was sent to the school in which no one said anything similar.'),
	(2,2010,'Aditya Singh','Vishnu Tiwari','Arun Kumar','A 19 year old adult from Kanpur is accused of murder of his friend. FIR suggests that in heat of the fight, the trigger of the pistol was blown which led to the death thus causing the justified means of the death'),
	(3,2008,'Khushi Singh','Vijay Shankar Tripathi','Rakesh Singh','Khushi Singh, a sophomore at a college in Allahabad was allegedly raped by her professor during office hours and lured into a trap of giving more marks and such things. Police investigations have pointed at a bigger plot behind the whole racket'),
	(4,2007,'Nishtha','Tushar','Savita Kumari','Nishtha has accused her ex-boyfriend Tushar of breaking into her apartment and stealing jewellery of more than 20000. She has said that these jwelleries were bought in her name. Tushar says he bought the jwellery so he is the rightful owner of the property'),
	(5,2015,'Sarthak','Pallavi','Ravi Chauhan','Sarthak has been accused by one of the toppers of VIT University, Pallavi of cheating during the exam. Pallavi further rallies that Sarthak brought some chits into the exam centre for his final assessment exams(FATs) and demands for his rustication from the college.'),
	(10002,2020,'Khushi Singh','Sarthak Srivastava','Vishnu Murthy','Theft and robbery and breaking in');

/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table client
# ------------------------------------------------------------

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `clientid` int(4) NOT NULL AUTO_INCREMENT,
  `clientname` varchar(55) NOT NULL,
  `clientcontact` bigint(12) NOT NULL,
  `clientaddress` varchar(55) NOT NULL,
  `clientage` int(3) NOT NULL,
  `clientgender` varchar(2) NOT NULL,
  PRIMARY KEY (`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;

INSERT INTO `client` (`clientid`, `clientname`, `clientcontact`, `clientaddress`, `clientage`, `clientgender`)
VALUES
	(45,'Aaditya Mishra',7648279292,'B-1, Oberoi Gardens, Mumbai, India',23,'M'),
	(64,'Nishtha ',8372635367,'E-2, Lutyens Zone, South Delhi, NCR, India',22,'F'),
	(675,'Khushi Singh',9125272517,'B-45, New Katra, Allahabad, Uttar Pradesh',20,'F'),
	(869,'Usha Sahay',9835426373,'A1/21, Badri Awaas Yojana, Allahabad, Uttar Pradesh',40,'F');

/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table client_con
# ------------------------------------------------------------

DROP TABLE IF EXISTS `client_con`;

CREATE TABLE `client_con` (
  `clientid` int(4) NOT NULL,
  `caseid` int(4) NOT NULL,
  KEY `clientid` (`clientid`,`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `client_con` WRITE;
/*!40000 ALTER TABLE `client_con` DISABLE KEYS */;

INSERT INTO `client_con` (`clientid`, `caseid`)
VALUES
	(45,2),
	(64,4),
	(675,3),
	(675,10002),
	(869,1),
	(4545,5),
	(10000,21);

/*!40000 ALTER TABLE `client_con` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table court
# ------------------------------------------------------------

DROP TABLE IF EXISTS `court`;

CREATE TABLE `court` (
  `courtid` int(4) NOT NULL AUTO_INCREMENT,
  `courtname` varchar(55) NOT NULL,
  `courttype` varchar(55) NOT NULL,
  `casesinthecourt` varchar(127) DEFAULT NULL,
  `court_description` varchar(511) NOT NULL,
  `court_priority` varchar(10) NOT NULL,
  PRIMARY KEY (`courtid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `court` WRITE;
/*!40000 ALTER TABLE `court` DISABLE KEYS */;

INSERT INTO `court` (`courtid`, `courtname`, `courttype`, `casesinthecourt`, `court_description`, `court_priority`)
VALUES
	(2,'DK Srivastava','Single Bench','2','Great judge','Lenient'),
	(4,'Vishwaneeth Prakash','Single Bench','4','V.N Prakash is a senior judge in Criminal domain of the Highcourt. He can be stern at times and getting orders passed fro. this court can be a tough task at times, but also he is a considerate judge who eyes justice as equal and thus right sides can expect a win-win.','Strict'),
	(5,'Vinay Kumar Srivastava','Jury','5','V.K Srivastava practices majorly in Service side. Being a new on to the list he\'s kind of inexerpienced and hence getting orders passed from his court can be a tedious task too. But he\'s improving with time and expected to be promoted to ranks soon','Strict');

/*!40000 ALTER TABLE `court` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table fees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fees`;

CREATE TABLE `fees` (
  `typing` int(11) NOT NULL,
  `consultation` int(11) NOT NULL,
  `law` int(11) NOT NULL,
  `court` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `caseid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  KEY `caseid` (`caseid`,`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;

INSERT INTO `fees` (`typing`, `consultation`, `law`, `court`, `model`, `caseid`, `clientid`)
VALUES
	(500,1000,100000,10000,1,1,1),
	(5000,4000,100000,1000,1,2,3),
	(1000,1000,10000,1000,1,3,4),
	(2000,1000,100000,100,1,4,5),
	(10000,10000,10000,10000,1,5,2),
	(1000,2000,400000,1000,0,10002,675);

/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table judge_con
# ------------------------------------------------------------

DROP TABLE IF EXISTS `judge_con`;

CREATE TABLE `judge_con` (
  `caseid` int(4) NOT NULL,
  `courted` int(4) NOT NULL,
  KEY `caseid` (`caseid`,`courted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `judge_con` WRITE;
/*!40000 ALTER TABLE `judge_con` DISABLE KEYS */;

INSERT INTO `judge_con` (`caseid`, `courted`)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(10002,2);

/*!40000 ALTER TABLE `judge_con` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table judgement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `judgement`;

CREATE TABLE `judgement` (
  `judgement_desc` varchar(10240) DEFAULT NULL,
  `judgement_date` date DEFAULT NULL,
  `caseid` int(11) NOT NULL,
  `next_step` varchar(255) DEFAULT NULL,
  KEY `caseid` (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `judgement` WRITE;
/*!40000 ALTER TABLE `judgement` DISABLE KEYS */;

INSERT INTO `judgement` (`judgement_desc`, `judgement_date`, `caseid`, `next_step`)
VALUES
	('Hey','2020-03-11',1,'Go to SC'),
	('Prayer in W.P.No.19260/2002: This writ petition is filed under Article 226 of Constitution of India, praying this Court to issue a writ of Mandamus directing the first respondent to pay compensation of Rs.6,00,000/- (Rupees Six Lakhs only) to the petitioner, for the death of his son namely Sathish @ Sathishkumar, aged about 10 years studied 5th standard in the 3rd respondent School, within a stipulated period.\r\n\r\nW.P.No.14436 of 2008 M. Yesudoss, 83, Ananda Nagar, Chennimalai Road, Perundurai - 638 052, Erode District. ... Petitioner Vs.\r\n\r\nThe District Elementary Educational Officer, Erode, Erode District ... Respondent Prayer in W.P.No.14436 of 2008: This writ petition is filed under Article 226 of Constitution of India, praying this Court to issue a writ of Certiorarified Mandamus calling for the records relating to the impugned order of the respondent in Na.Ka.No.4646/A4/2003 dated 14.5.2008 and quash the same and direct the respondent to permit the petitioner to retire from service with effect from 31.12.2001.\r\n\r\nFor Petitioner in W.P.19260/2002 : Mr.N.Manoharan For Petitioner in W.P.14436/2008 & : Mr.P.Rajendran For Respondent in W.P.14436/2008 &: Mrs.E.Ranganayagi, Respondents 1 & 2 in W.P.19260/2002 Government Advocate For 3rd Respondent in W.P.19260/2002: Mr.A.K.Kumarasamy COMMON ORDER In W.P.No.19260 of 2002, petitioner, who is the father of one Sathish @ Sathishkumar, a 5th Standard student of the Panchayat Union Elementary School, Thudupatty, Erode District, prays for issuance of a writ of mandamus directing the first respondent/State Government to pay compensation of Rs.6,00,000/- for the death of his son due to the fall of compound wall of the School.\r\n\r\n2. The third respondent in W.P.No.19260 of 2002, who was the Headmaster of the School, has filed W.P.No.14436 of 2008 praying to quash the order dated 14.5.2008 rejecting his request to retire him from service and to pay the terminal benefits, which was not granted due to the pendency of W.P.No.19260 of 2002.\r\n\r\n3. The facts leading to filing of these writ petitions are one and the same and the issue involved in both these writ petitions are inter-connected. Hence, both the writ petitions are disposed of by this common order.\r\n\r\n4. For the sake of convenience, the parties in this common order are referred to as per their rank in W.P.No.19260 of 2002.\r\n\r\n5. The case of the petitioner is that his son S.Sathish @ Sathishkumar, aged 10 years was studying in 5th standard in the Panchayat Union Elementary School, Thudupatty, Erode District, and on 13.12.2000 at about 3.50 p.m., the third respondent, in his capacity as Headmaster of the School directed the students including the petitioner\'s son to clear the ground near the dilapidated compound wall of Noon-Meal Centre Room by removing the grass and shrubs. While clearing the grass and shrubs, a portion of the compound wall fell on the petitoner\'s son viz., Sathish @ Sathishkumar. On coming to know the said incident, according to the petitioner, third respondent rashly and negligently used a big hammer to break the debris and the hammer hit on the face and mouth of the said Sathish @ Sathishkumar, due to which the petitioner\'s son died on the spot. An F.I.R was filed in Crime No.505 of 2000 on the file of the Inspector of Police, Perundurai Police Station for offences under Sections 304A and 336 of IPC on the very same day. The Headmaster/third respondent was made as an accused and he was placed under suspension by the proceddings of the District Elementary Educational Officer, Erode, dated 13.12.2000. According to the petitioner, petitioner\'s son died due to the negligence of the Headmaster of the School, who failed to exercise reasonable and proper care by providing precautionary measures to avoid the death of the deceased Sathish @ Sathishkumar. Petitioner submitted a petition to the respondents on 12.1.2002 and claimed compensation for the death of his 10 year old son. Since no action was taken to pay compensation, petitioner has filed W.P.No.19260 of 2002 praying for a mandamus directing the first respondent viz., the State Government to pay compensation of Rs.6,00,000/- to the petitioner for the death of his son viz., Sathish @ Sathishkumar.\r\n','2020-10-06',2,'Win situation. Wait for the final judgement\r\n'),
	('The High Court states the same in its judgment. It said:\r\n\r\n\"In 1948 he sent an application to the Madras public Service Commission for selection as class 11 Civil Assistant Surgeon and was selected as such following an interview by the said body\".\r\nIn these circumstances, we cannot hold merely on the basis of suggestions, that any competitive written examination was held and that any admission card was issued to the appellant entitling him to sit at the examination and, consequently, cannot hold that the offence of cheating by dishonestly inducing the Service Commission to deliver him property was committed by the appellant.\r\n\r\nSimilarly, in Ashwini Kumar Gupta v. Emperor(2) the accused personated another person at a University examination cheating the Registrar. It was held that this not only damaged the reputation of the Registrar, but also that of the University. Reference may also be made to the case reported as In re: Hampshire Land Company(3) in which a Society had lent money to a company on the borrowing of the directors of that company who were not competent to borrow, the resolution conferring on them the power of borrowing being invalid for certain reasons. It was held that the Society had a right to assume, in a case like that, that all the essentials of internal management had been carried out by the borrowing company. On the same principle it can be said that the Government of the State had a right to assume that the Service Commission had verified that the candidates selected by it for appointment by the Government possessed the necessary qualifications and in that view the scrutiny by the Service Commission can be said to be on behalf of the Government.','2020-10-19',3,'In favour. Wait for judgement'),
	('Both the accused namely Vikas Yadav son of Sh DP Yadav R/o R 4/16, Raj Nagar, Ghaziabad, UP and accused Vishal Yadav son late Sh. Kamal Raj Yadav R/o R 5/45, Raj Nagar Ghaziabad, UP have been sent up for\r\n2.\r\ni)\r\ntrial U/s 364/302/201/ 34 IPC.\r\nThe facts as set out in the charge sheet\r\nand emerging from the record and documents are as follows:­\r\nThe prosecution case is that on 17.2.02 at about 1:15pm the complainant Smt Neelam Katara alongwith Ajay Prasad R/o AC H No. 500 Vasant Kunj New Delhi reached PS Kavi Nagar Ghaziabad and lodged a written complaint to the effect that on 16.02.02 her son Nitish Katara (now deceased) had attended the marriage of Shivani d/o Late Sh. BK Gaur r/o 58 Model Town, West Ghaziabad and Nitish took meals alongwith his friends Diwakar and Gaurav Gupta. It is further mentioned in the complaint that Bharat Diwakar informed that while they were taking meals, Vishal s/o Late Sh. Kamal Raj Yadav came to them and Rohit\r\n2\r\n\r\nii)\r\ns/o Sh BK Gaur told that Vikas s/o Sh DP Yadav and Vishal s/o Late Sh Kamal Raj Yadav R/o Ghaizabad had arrived there at 12/12.30 mid night. It is further mentioned in the complaint that Vishal and Vikas took Nitish outside while talking. Thereafter when Bharat Diwakar could not see Nitish so he came back to their house. She expressed in her complaint that she suspected happening of some untoward incident.\r\nIt is further mentioned in the complaint that her son Nitish and Bharti Yadav d/o Sh D P Yadav studied together in IMT in the year 1998 ­ 2000 and they were friends but Vishal and Vikas did not like their friendship. She requested the police authority to record her complaint and to take necessary action.\r\n3\r\niii) On the basis of the aforesaid complaint\r\n\r\n4\r\ncase FIR No. 83 Ex. PW 1/2 case No. 192/02 U/s. 364 IPC was registered by PW1 HC Netarpal Singh. The investigation was handed over to PW 35 SI Anil Somania PS Kavi Nagar. He started the investigation with the recording of the statement of HC Netarpal Singh U/s. 161 Cr.PC. Thereafter the detailed statement U/s 161 CrPC of the complainant Smt. Neelam Katara was recorded, whereby she stated that on 16.02.02 her son Nitish Katara (now deceased) and his friend Bharat Diwakar left the house at 9pm for attending the marriage of Shivani Gaur at Diamond Place Ghaizabad. When Nitish did not return home, Bharat Diwakar told her that at 12/12.30 midnight Nitish while talking to Vishal son of Late Sh Kamal Raj Yadav had gone out of the Diamond Palace and Rohit son of Sh B K Gaur R/o. 58, Model Town West\r\n\r\n5\r\nGhaziabad had also told him that Vikas s/o Sh DP Yadav and Vishal son of Late Sh Kamal Raj Yadav had arrived at Diamond Palace at 12/ 12.30 mid night and while talking to Nitish had taken him outside. She further stated that deceased had friendship with Bharti Yadav d/o DP Yadav R/o Rajnagar since they both studied together in IMT Ghaizabad in the year 1998­ 2000. Her son was on visiting terms to the house of Bharti and were close friend and perhaps this was not liked by Vishal and Vikas. For this reason she apprehended the happening of some untoward incident with her son Nitish Katara by accused Vishal and Vikas. She further disclosed that her son was wearing red coloured kurta , white churidaar pajama and a shawl and Esprit watch in his hand. A poster bearing the photograph of the deceased Nitish\r\n\r\n6\r\nKatara Ex.PW 1/DA under the title Talash Apharit (search for abducted person) was issued. Thereafter the statement of Bharat Diwakar son of Sh RK Diwakar r/o C 24 Shivaji Nagar PS Habibganj Bhopal (MP) was recorded U/s 161 Cr PC who stated that he had taken admission in IMT Ghaziabad for MBA course in the year 1998 and Nitish Katara, Gaurav Gupta, Bharti d/o Sh DP Yadav were also studying in IMT alongwith him, whereas Shivani Gaur was doing Executive MBA course from IMT and they were all friends and were on visiting terms with each other and they also used to attend functions at each other\'s place. Their course ended in the year 2000 and thereafter he started working as Manager MICOWOSH at Ahmedabad but still they used to talk to each other on telephone. He stated that the\r\n\r\n7\r\nmarriage of Shivani Gaur was fixed for 16.02.202. To attend the marriage he had reached Delhi in the morning of 15/02/02 by train and went to the house of Nitish. On 15.02.02 in the evening the ladies sangeet was organised at the house of Shivani Gaur which was attended by him alongwith Nitish at her residence at Ghaziabad. ','2020-10-01',4,'Go to Supreme Court\r\n'),
	('Vide the instant petition, petitioner seeks setting aside the order dated 27.04.2011 passed by ld. Presiding Officer of Delhi School Tribunal whereby the appeal filed by the petitioner has been dismissed.\r\n\r\n2. In brief, the facts of the case are that petitioner was working as a Physical Education Teacher (PET) in the New Era Public School, Mayapuri, New Delhi (hereafter referred to as the respondent School) since 04.07.1983. He was placed in the PGT Grade w.e.f 01.08.2001.\r\n\r\n3. Article of Charge of committing gross misconduct specified in Rule 123 of DSER, 1973 and thus he acted in a manner of unbecoming of an employee of the School. The petitioner on 25.04.2008 punished the Students (Boys and Girls) of the School by way of slapping them on their body which tantamount to corporal (physical) punishment. The Provision of Corporation Punishment existing in Rule 37 (1)(a)(ii) and 4, DSER, 1973 was held void of law and hence struck down by this Court in its landmark judgment in Civil Writ Petition 196/1998 Parents Forum for Meaningful Education vs. Union of India.\r\n\r\n4. The conduct of the petitioner was criminal in nature attracting Indian Penal Code as well as (i) petitioner committed gross misconduct by giving corporal (physical) punishment to the Students physically touching part of the girls\' body, which is prohibited and untimely tantamount to commit sexual abuse. He, thus, breached sub-clause (xvii) of Clause (n) of Sube Rule 1 of Rule 123 of DSER, 1973. (ii) He is also guilty of cruelty towards the students of the School thus acted contrary to the aspect of Sub-clause (xvii) of Clause (b) of Sub-clause of Rule 123 of DSER, 1973.\r\n\r\n5. Thereafter, he was served Article of Charge (in detail) and the petitioner submitted an explanation dated 03.05.2008 which reads as under:-\r\n\r\n\"(a) This is to bring to your kind notice that last Friday i.e. 25.04.2008, I found a few students playing in TT Hall without the permission of any PET and violating the discipline of the School.\r\n(b) In the heat of moment I gave them a slap each.\r\n(c) I realize that I should have restrained myself.\r\n(d) Madam, I tender an apology for the same and promise that such thing will not be repeated again.\r\n(e) If it is repeated the disciplinary action should be taken against me.\"','2020-10-07',5,'Go to Supreme Court\r\n');

/*!40000 ALTER TABLE `judgement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lawyer_assign
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lawyer_assign`;

CREATE TABLE `lawyer_assign` (
  `affid` int(4) NOT NULL,
  `casein` int(4) NOT NULL,
  PRIMARY KEY (`affid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `lawyer_assign` WRITE;
/*!40000 ALTER TABLE `lawyer_assign` DISABLE KEYS */;

INSERT INTO `lawyer_assign` (`affid`, `casein`)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,4);

/*!40000 ALTER TABLE `lawyer_assign` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table monthcase
# ------------------------------------------------------------

DROP TABLE IF EXISTS `monthcase`;

CREATE TABLE `monthcase` (
  `caseid` int(4) NOT NULL,
  `listing_date` date NOT NULL,
  UNIQUE KEY `caseid` (`caseid`),
  CONSTRAINT `monthcase_ibfk_1` FOREIGN KEY (`caseid`) REFERENCES `cases` (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `monthcase` WRITE;
/*!40000 ALTER TABLE `monthcase` DISABLE KEYS */;

INSERT INTO `monthcase` (`caseid`, `listing_date`)
VALUES
	(1,'2020-10-23'),
	(2,'2020-10-29'),
	(3,'2020-11-24'),
	(4,'2020-11-24'),
	(5,'2020-12-21');

/*!40000 ALTER TABLE `monthcase` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staffid` int(4) NOT NULL AUTO_INCREMENT,
  `staffname` varchar(55) NOT NULL,
  `staff contact` bigint(12) NOT NULL,
  `staffaddress` varchar(127) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;

INSERT INTO `staff` (`staffid`, `staffname`, `staff contact`, `staffaddress`)
VALUES
	(3258,'Lakshay',9643567788,'Karol bagh,delhi'),
	(5478,'Shubham',9753456778,'Badhkal road, delhi'),
	(6778,'Pradeep',8658964356,'Badarpur,delhi'),
	(8754,'Shivansh',8765456778,'Manav Rachna, faridabad'),
	(9754,'Aayush',9865356778,'Sarita vihar, delhi');

/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stafferesp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stafferesp`;

CREATE TABLE `stafferesp` (
  `caseid` int(4) NOT NULL,
  `staffid` int(4) NOT NULL,
  KEY `staffid` (`staffid`,`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `stafferesp` WRITE;
/*!40000 ALTER TABLE `stafferesp` DISABLE KEYS */;

INSERT INTO `stafferesp` (`caseid`, `staffid`)
VALUES
	(947252,3258),
	(647283,5478),
	(927537,6778),
	(234584,8754),
	(745245,9754);

/*!40000 ALTER TABLE `stafferesp` ENABLE KEYS */;
UNLOCK TABLES;
