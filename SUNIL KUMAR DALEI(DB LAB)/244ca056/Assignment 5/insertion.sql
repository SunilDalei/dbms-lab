--->> Insertion
insert all 
into bank values (1001, 'SBI', 'Delhi') 
into bank values (1002, 'HDFC', 'Karnatka') 
into bank values (1003, 'ICICI', 'Delhi') 
into bank values (1004, 'PNB', 'Delhi') 
into bank values (1005, 'Canara', 'Delhi') 
SELECT 1 FROM DUAL;


insert all 
into branch values ('br_01', 'Palam', 'Palam, Delhi', 1001) 
into branch values ('br_02', 'Dwarka', 'Dwarka, Delhi', 1001) 
into branch values ('br_03', 'NITK', 'Surathkal, Karnatka', 1002) 
into branch values ('br_04', 'Surathkal', 'Surathkal, Karnatka', 1002) 
into branch values ('br_05', 'MG Road', 'Bengaluru, Karnatka', 1002) 
SELECT 1 FROM DUAL;


insert all 
into customer values (101, 'Ravi', '9876543210', 'RZF-1') 
into customer values (102, 'Akash', '9876543211', 'RZF-2') 
into customer values (103, 'Abhishek', '9876543212', 'RZF-3') 
into customer values (104, 'Harsh', '9876543213', 'RZF-4') 
into customer values (105, 'Kartik', '9876543214', 'RZF-5') 
into customer values (106, 'Manish', '9876543215', 'RZF-6') 
into customer values (107, 'Parth', '9876543216', 'RZF-6') 
into customer values (108, 'Shivam', '9876543217', 'RZF-6') 
SELECT 1 FROM DUAL;


insert all 
into account values (123101, 'Current', 10000, 'br_01') 
into account values (123102, 'Current', 6000, 'br_02') 
into account values (123103, 'Savings', 5000, 'br_01') 
into account values (123104, 'Current', 400, 'br_02') 
into account values (123105, 'Current', 12000, 'br_01') 
into account values (123106, 'Savings', 7000, 'br_03') 
into account values (123107, 'Current', 8000, 'br_04') 
into account values (123108, 'Savings', 300, 'br_05') 
SELECT 1 FROM DUAL;

insert all 
into customer_account values (101, 123101) 
into customer_account values (102, 123102) 
into customer_account values (103, 123103) 
into customer_account values (104, 123104) 
into customer_account values (105, 123105) 
into customer_account values (106, 123106) 
into customer_account values (107, 123107) 
into customer_account values (108, 123108) 
SELECT 1 FROM DUAL;


insert all
into loan values (980101, 'Home', 500000, 'br_01') 
into loan values (980102, 'Home', 300000, 'br_01') 
into loan values (980103, 'Education', 120000, 'br_02') 
into loan values (980104, 'Vehicle', 80000, 'br_02') 
into loan values (980105, 'Vehicle', 200000, 'br_03') 
SELECT 1 FROM DUAL;


insert all 
into customer_loan values (101, 980101) 
into customer_loan values (103, 980102) 
into customer_loan values (102, 980103) 
into customer_loan values (104, 980104) 
into customer_loan values (106, 980105) 
SELECT 1 FROM DUAL;