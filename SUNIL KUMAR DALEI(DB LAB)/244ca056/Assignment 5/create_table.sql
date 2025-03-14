CREATE TABLE bank (
    BK_CODE NUMBER(10) PRIMARY KEY,
    BK_NAME VARCHAR(20),
    BK_ADDRESS VARCHAR(30)
);

-- Branch
CREATE TABLE branch (
    BR_ID VARCHAR(5) PRIMARY KEY,
    BR_NAME VARCHAR(50),
    BR_ADDRESS VARCHAR(30),
    BK_CODE NUMBER(10),
    foreign key(BK_CODE) REFERENCES bank on delete cascade
);

-- Creating the 'customer' table
CREATE TABLE customer (
    CUST_ID NUMBER(10) PRIMARY KEY,
    CUST_NAME VARCHAR(30),
    PHONE_NO VARCHAR(10),
    ADDRESS VARCHAR(30)
);

-- Creating the 'account' table
CREATE TABLE account (
    ACC_NO NUMBER(11) PRIMARY KEY,
    ACC_TYPE VARCHAR(20),
    BALANCE NUMBER(10,2),
    BR_ID VARCHAR(5),
    foreign key(BR_ID) REFERENCES branch on delete cascade
);

-- Creating the 'customer_account' table (junction table between customer and account)
CREATE TABLE customer_account (
    CUST_ID NUMBER(10),
    ACC_NO NUMBER(11),
    PRIMARY KEY (CUST_ID, ACC_NO),
    foreign key(CUST_ID) REFERENCES customer(CUST_ID) on delete cascade,
    foreign key(ACC_NO) REFERENCES account(ACC_NO) on delete cascade
);

-- Creating the 'loan' table
CREATE TABLE loan (
    LOAN_ID NUMBER(11) PRIMARY KEY,
    LOAN_TYPE VARCHAR(20),
    AMOUNT NUMBER(10,2),
    BR_ID VARCHAR(5),
    foreign key(BR_ID) REFERENCES branch(BR_ID) on delete cascade
);

-- Creating the 'customer_loan' table
CREATE TABLE customer_loan (
    CUST_ID NUMBER(10),
    LOAN_ID NUMBER(11),
    PRIMARY KEY (CUST_ID, LOAN_ID),
    foreign key(CUST_ID) REFERENCES customer on delete cascade,
    foreign key(LOAN_ID) REFERENCES loan on delete cascade
);

