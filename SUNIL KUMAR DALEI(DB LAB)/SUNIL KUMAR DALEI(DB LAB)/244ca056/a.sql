-- Classroom

insert all 
into classroom values('LHC-1','0.1',50) 
into classroom values('LHC-1','0.2',50) 
into classroom values('LHC-1','0.3',50) 
into classroom values('LHC-1','1.1',100) 
into classroom values('LHC-1','1.2',100) 
into classroom values('LHC-2','0.1',100) 
into classroom values('LHC-2','0.2',100) 
into classroom values('LHC-2','0.3',100) 
into classroom values('LHC-2','0.4',100) 
into classroom values('LHC-3','0.1',200) 
SELECT 1 from dual;


--Department
insert all 
into department values('MACS','LHC-1',90000000) 
into department values('CSE','LHC-1',100000000) 
into department values('IT','LHC-1',60000000) 
into department values('EEE','LHC-1',60000000) 
into department values('ETC','LHC-1',40000000 )
into department values('CHEMICAL','LHC-2',20000000) 
into department values('Mechanical','LHC-2',20000000) 
into department values('CIVIL','LHC-2',3000000) 
into department values('Electrical','LHC-2',30000000) 
into department values('SOM','LHC-3',56500000) 
SELECT 1 from dual;



--course
insert all 
into course values('MA01','Programming','MACS',6) 
into course values('MA02','DBMS','MACS',6) 
into course values('CS10','ML','CSE',6) 
into course values('CS11','AI','CSE',6) 
into course values('CS12','Data Science','CSE',6) 
into course values('SM01','Accounts','SOM',4) 
into course values('SM02','Managerial Economics','SOM',4) 
into course values('IT01','DBMS','IT',6) 
into course values('IT02','Networking','IT',6) 
into course values('IT03','OS','IT',6) 
SELECT 1 from dual;



--Instructor
insert all
into instructor values('INS01','Dr Sonali','MACS',50000) 
into instructor values('INS02','Dr Kamath sr','MACS',80000) 
into instructor values('INS03','Dr Kamath jr','MACS',40000) 
into instructor values('INS04','Dr Archita','MACS',45000) 
into instructor values('INS05','Dr Nandgopal','CSE',50000) 
into instructor values('INS06','Dr Amit','CSE',50000) 
into instructor values('INS07','Dr Abhishek','IT',50000) 
into instructor values('INS08','Dr Hamsa','SOM',55000) 
into instructor values('INS09','Dr Praveen','IT',50000) 
into instructor values('INS10','Dr Suman','EEE',50000)
into instructor values('INS11','Dr Sourav',NULL,69000)
into instructor values('INS12','Dr Vishal',NULL,69000)
select 1 from dual;


--Section

insert all
into section values('MA01','SEC01','Fall',2012,'LHC-1','0.1','TS01') 
into section values('MA02','SEC02','Winter',2010,'LHC-1','0.2','TS01') 
into section values('CS10','SEC03','Spring',2022,'LHC-1','0.3','TS01') 
into section values('CS11','SEC04','Fall',2023,'LHC-1','1.1','TS01') 
into section values('CS12','SEC05','Spring',2020,'LHC-1','1.2','TS01') 
into section values('SM01','SEC06','Fall',2021,'LHC-3','0.1','TS01') 
into section values('SM02','SEC07','Winter',2018,'LHC-2','0.1','TS01') 
into section values('IT01','SEC08','Summer',2019,'LHC-2','0.2','TS01') 
into section values('IT02','SEC09','Fall',2024,'LHC-2','0.3','TS01') 
into section values('IT03','SEC10','Summer',2015,'LHC-2','0.4','TS01') 
select 1 from dual;


--Teaches

insert all
into teaches values('INS02','MA01','SEC01','Fall',2012) 
into teaches values('INS01','MA02','SEC02','Winter',2010) 
into teaches values('INS05','CS10','SEC03','Spring',2022) 
into teaches values('INS06','CS11','SEC04','Fall',2023) 
into teaches values('INS05','CS12','SEC05','Spring',2020) 
into teaches values('INS08','SM01','SEC06','Fall',2021) 
into teaches values('INS08','SM02','SEC07','Winter',2018) 
into teaches values('INS07','IT01','SEC08','Summer',2019) 
into teaches values('INS09','IT02','SEC09','Fall',2024) 
into teaches values('INS07','IT03','SEC10','Summer',2015) 
select 1 from dual;

--Student
insert all
into student values('ca050','Sunil','MACS',90) 
into student values('ca051','Sourav','CSE',92) 
into student values('ca052','Vishal','IT',90) 
into student values('ca053','Aryan','MACS',88) 
into student values('ca054','harsh','CSE',91) 
into student values('ca055','Kanhaiya','IT',91) 
into student values('ca056','Apurv','IT',90) 
into student values('ca057','Nagender','CSE',95) 
into student values('ca058','Satish','Mechanical',80) 
into student values('ca059','Sambeet','EEE',89) 
select 1 from dual;


--takes

insert all 
into takes values('ca050','MA01','SEC01','Fall',2012,'AB') 
into takes values('ca050','MA02','SEC02','Winter',2010,'AB') 
into takes values('ca051','CS10','SEC03','Spring',2022,'AB') 
into takes values('ca052','IT01','SEC08','Summer',2019,'AB')
into takes values('ca053','MA01','SEC01','Fall',2012,'AB')
into takes values('ca053','MA02','SEC02','Winter',2010,'AB')
into takes values('ca054','CS10','SEC03','Spring',2022,'AB') 
into takes values('ca055','IT01','SEC08','Summer',2019,'AB') 
into takes values('ca056','IT01','SEC08','Summer',2019,'AB') 
into takes values('ca057','CS10','SEC03','Spring',2022,'AB') 
into takes values('ca056','MA01','SEC01','Fall',2012,'AA') 
select 1 from dual;

--advisor

insert all
into advisor values('ca050','INS01') 
into advisor values('ca051','INS02') 
into advisor values('ca052','INS03') 
into advisor values('ca053','INS04') 
into advisor values('ca054','INS05') 
into advisor values('ca055','INS06') 
into advisor values('ca056','INS07') 
into advisor values('ca057','INS08') 
into advisor values('ca058','INS09') 
into advisor values('ca059','INS10') 
select 1 from dual;

--time_slot
insert all
into time_slot values('TS01','1',12,36,2,46) 
into time_slot values('TS02','6',10,36,2,46) 
into time_slot values('TS03','3',20,36,2,46) 
into time_slot values('TS04','1',1,36,2,46) 
into time_slot values('TS05','2',14,36,2,46) 
into time_slot values('TS06','3',23,36,2,46) 
into time_slot values('TS07','4',8,36,2,46) 
into time_slot values('TS08','5',6,36,2,46) 
into time_slot values('TS09','6',16,36,2,46) 
into time_slot values('TS10','7',12,30,2,46) 
select 1 from dual;


--prereq

insert all
into prereq values('MA01','MA01') 
into prereq values('MA02','MA02') 
into prereq values('SM01','SM01') 
into prereq values('SM02','SM02') 
into prereq values('CS10','CS10') 
into prereq values('CS11','CS11') 
into prereq values('CS12','CS12') 
into prereq values('IT01','IT01') 
into prereq values('IT02','IT02') 
into prereq values('IT03','IT03') 
select 1 from dual;
