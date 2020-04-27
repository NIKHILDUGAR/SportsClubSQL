create database SportClubmanager

create table Branches(BID int primary key ,[Branch Contact Number] bigint,[State] varchar(30),[City] varchar(30),[Branch Address] varchar(30))
create table Employee (ID int unique ,Name varchar(30),[Date Of Joining] date ,[Designation] varchar(30), [Department] varchar(30),
BID int constraint emprefbranBID FOREIGN KEY REFERENCES Branches(BID),PRIMARY KEY(BID,ID))
create table EmployeePersonal(ID int constraint EmployeePrefEmpID FOREIGN KEY REFERENCES Employee(ID) ,[Phone Number] bigint,[Date Of Birth] date ,[Address] varchar(30),
 [Blood Group] varchar(2),[Rh-Factor] varchar(1),BID int constraint empPrefbranBID FOREIGN KEY REFERENCES Branches(BID),PRIMARY KEY(BID,ID))
create table EmployeeFinance(ID int primary key constraint EmployeeFinaEmpID FOREIGN KEY REFERENCES Employee(ID) ,[Provident Fund] int,[Salary] int)
create table MembershipType(Levels int primary key,SportsIncluded varchar(30),Validity int,Cost int )

create table clients(CID int primary key,ClientName varchar(30),[Date Of Joining] date,Levels int constraint levelmem FOREIGN KEY REFERENCES MembershipType(Levels))
create table [Table Tennis](EQID int unique,EQName varchar(30),BID int constraint TTrefbranBID FOREIGN KEY REFERENCES Branches(BID),
 CID int constraint client1PrefEmpID FOREIGN KEY REFERENCES clients(CID), Condition varchar(30),Company varchar(30),[Renting Date] date,RentID int,
PRIMARY KEY (CID,BID,EQID))
create table [Tennis](EQID int unique,EQName varchar(30),BID int constraint TrefbranBID FOREIGN KEY REFERENCES Branches(BID), CID int constraint clientPrefEm2pID FOREIGN KEY REFERENCES clients(CID) ,Condition varchar(30),Company varchar(30),[Renting Date] date,RentID int,PRIMARY KEY (CID,BID,EQID))
create table [Cricket](EQID int unique,EQName varchar(30),BID int constraint cricrefbranBID FOREIGN KEY REFERENCES Branches(BID), CID int constraint clientPrefEm3pID FOREIGN KEY REFERENCES clients(CID), Condition varchar(30),Company varchar(30),[Renting Date] date,RentID int,PRIMARY KEY (CID,BID,EQID))
create table [Baseball](EQID int unique,EQName varchar(30),BID int constraint bArefbranBID FOREIGN KEY REFERENCES Branches(BID), CID int constraint clientPr4efEmpID FOREIGN KEY REFERENCES clients(CID) ,Condition varchar(30),Company varchar(30),[Renting Date] date,RentID int,PRIMARY KEY (CID,BID,EQID))
create table [Hockey](EQID int unique,EQName varchar(30),BID int constraint hrefbranBID FOREIGN KEY REFERENCES Branches(BID), CID int constraint clientPr5efEmpID FOREIGN KEY REFERENCES clients(CID), Condition varchar(30),Company varchar(30),[Renting Date] date,RentID int,PRIMARY KEY (CID,BID,EQID))
create table [Golf](EQID int unique,EQName varchar(30),BID int constraint grefbranBID FOREIGN KEY REFERENCES Branches(BID), CID int constraint clientPref6EmpID FOREIGN KEY REFERENCES clients(CID) ,Condition varchar(30),Company varchar(30),[Renting Date] date,RentID int,PRIMARY KEY (CID,BID,EQID))
create table [Badmintton](EQID int unique,EQName varchar(30),BID int constraint brefbranBID FOREIGN KEY REFERENCES Branches(BID), CID int constraint clientPr7efEmpID FOREIGN KEY REFERENCES clients(CID) ,Condition varchar(30),Company varchar(30),[Renting Date] date,RentID int,PRIMARY KEY (CID,BID,EQID))

--insert into Branches values(12001,9983655512,'west bengal','kolkata','gc-3')
--insert into Branches values(12021,9983611512,'karnataka','karnatak','fg-331')
--insert into Branches values(12011,9983622512,'maharashtra','mumbai','gq-321')
--insert into Branches values(12031,9983644512,'uttar pradesh','up','g\c-33')

insert into Employee values(132,'nikhil','12-12-12','head','accounts',12001)
insert into Employee values(123,'nonreal','06-01-09','head','accounts',12021)
insert into Employee values(131,'nitin','11-11-11','head','accounts',12011)
insert into Employee values(133,'nameee','05-02-10','head','accounts',12031)
insert into Employee values(231,'vikrant','07-01-08','head','sports',12031)
insert into Employee values(122,'shoaib','09-09-04','head','sports',12021)
insert into Employee values(323,'shardul',,'head','sports',12011)

--insert into EmployeePersonal VALUES (132,9865440523,NULL,NULL,'AB','+',12001)
--insert into EmployeePersonal VALUES (123,9432355523,NULL,NULL,'A','+',12021)
--insert into EmployeePersonal VALUES (131,9123355523,NULL,NULL,'B','-',12011)
--insert into EmployeePersonal VALUES (133,9863443523,NULL,NULL,'O','-',12031)
--insert into EmployeePersonal VALUES (231,9863333523,NULL,NULL,'A','+',12031)
--insert into EmployeePersonal VALUES (122,9763555523,NULL,NULL,'B','+',12021)
--insert into EmployeePersonal VALUES (323,9463555523,NULL,NULL,'AB','-',12011)

--insert into EmployeeFinance Values (132,21312,12312)
--insert into EmployeeFinance Values (123,21312,12312)
--insert into EmployeeFinance Values (131,21312,12312)
--insert into EmployeeFinance Values (133,21312,12312)
--insert into EmployeeFinance Values (231,21312,12312)
--insert into EmployeeFinance Values (122,21312,12312)
--insert into EmployeeFinance Values (323,21312,12312)

--insert into MembershipType values(1,'Table Tennis,cricket,Tennis',6,1000)
--insert into MembershipType values(2,'TT,Cri:t,Ten:s,Badm:n,Ho:y',12,3000)
--insert into MembershipType values(3,'ALL Except Golf',18,6000)
--insert into MembershipType values(4,'ALL',24,7000)
--insert into clients values(099,'clien1','12-1-12',4)
--insert into clients values(093,'clie1','12-1-12',2)
--insert into clients values(092,'clin1','12-1-12',1)
--insert into clients values(091,'clin1','06-01-09',3)
--insert into clients values(097,'cien1','12-1-12',4)



--insert into [Table Tennis] values(3000,'racquet',12001,'091','currently owned','brand1',NULL,1212)
--insert into [Table Tennis] values(3001,'racquet',12001,'091','currently owned','brand1',NULL,1211)
--insert into [Table Tennis] values(3002,'racquet',12021,'092','previously owned','brand2',NULL,1210)
--insert into [Table Tennis] values(3003,'ball',12021,'092','previously owned','brand2',NULL,1213)
--insert into [Table Tennis] values(3004,'ball',12001,'091','currently owned','brand1',NULL,1214)

--insert into [Cricket] values(2000,'bat',12031,099,'currently owned','bran','12-1-12',2212)
--insert into [Cricket] values(2001,'bat',12021,097,'currently owned','bran','06-01-09',2232)
--insert into [Cricket] values(2002,'ball',12021,097,'currently owned','bran','06-01-09',2312)
--insert into [Cricket] values(2003,'ball',12031,099,'currently owned','bran','12-1-12',2222)
--insert into [Cricket] values(2004,'wicket',12031,099,'currently owned','bran','12-1-12',2412)


insert into [Baseball] values(4000,'bat',12031,093,'currently owned','bran','12-1-12',3212)
insert into [Baseball] values(4001,'bat',12031,093,'currently owned','bran','12-1-12',3213)
insert into [Baseball] values(4002,'ball',12031,093,'currently owned','bran','12-1-12',3211)
insert into [Baseball] values(4003,'bat',12031,093,'currently owned','bran','12-1-12',3210)
insert into [Baseball] values(4004,'ball',12031,093,'currently owned','bran','12-1-12',3214)


insert into [Hockey] values(6000,'hockey puck',12031,097,'currently owned','bran','12-1-12',6212)
insert into [Hockey] values(6001,'hockey bat',12021,097,'currently owned','bran','12-1-12',6212)
insert into [Hockey] values(6002,'hockey bat',12021,097,'currently owned','bran','12-1-12',6212)
insert into [Hockey] values(6003,'hockey bat',12021,097,'currently owned','bran','12-1-12',6212)
insert into [Hockey] values(6004,'hockey bat',12021,097,'currently owned','bran','12-1-12',6212)

insert into [Tennis] values(7000,'racquet',12001,'091','previously owned','brand1',NULL,1212)
insert into [Tennis] values(7001,'racquet',12001,'091','previously owned','brand1',NULL,1211)
insert into [Tennis] values(7002,'racquet',12021,'092','currently owned','brand2',NULL,1210)
insert into [Tennis] values(7003,'ball',12021,'092','currently owned','brand2',NULL,1213)
insert into [Tennis] values(7004,'ball',12001,'091',' previously owned','brand1',NULL,1214)

insert into [Badmintton] values(8004,'shuttle',12031,'099',' previously owned','brand1',NULL,8214)
insert into [Badmintton] values(8003,'shuttle',12031,'099',' previously owned','brand1',NULL,8215)
insert into [Badmintton] values(8002,'racquet',12031,'099',' previously owned','brand1',NULL,8213)
insert into [Badmintton] values(8001,'racquet',12031,'099',' previously owned','brand1',NULL,8211)
insert into [Badmintton] values(8000,'racquet',12031,'099',' previously owned','brand1',NULL,8212)


insert into [Golf] values(9000,'stick',12021,092,'previously owned','bran','12-1-12',9212)
insert into [Golf] values(9001,'stick',12021,093,'previously owned','bran','12-1-12',9211)
insert into [Golf] values(9002,'stick',12021,093,'previously owned','bran','12-1-12',9213)
insert into [Golf] values(9003,'stick',12021,093,'previously owned','bran','12-1-12',9214)
insert into [Golf] values(9004,'stick',12021,093,'previously owned','bran','12-1-12',9215)
