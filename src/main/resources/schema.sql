CREATE TABLE customer (
    customer_id VARCHAR(6),
    customer_name VARCHAR(30),
    city VARCHAR(15),
    contract_number VARCHAR(50) NOT NULL,
    birthday VARCHAR(10),
    create_datetime TIMESTAMP NOT NULL,
    PRIMARY KEY(customer_id)
);

CREATE TABLE branch (
    branch_id VARCHAR(6),
    branch_name VARCHAR(30),
    branch_city VARCHAR(30),
    create_datetime TIMESTAMP NOT NULL,
    PRIMARY KEY(branch_id)
);

CREATE TABLE account (
    account_number VARCHAR(6),
    customer_id  VARCHAR(6),
    branch_id VARCHAR(6),
    opening_balance DOUBLE,
    account_type VARCHAR(10),
    account_status VARCHAR(10),
    create_datetime TIMESTAMP NOT NULL,
    PRIMARY KEY(account_number),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE trade_details (
    trade_number VARCHAR(6),
    account_number VARCHAR(6),
    medium_of_transaction VARCHAR(20),
    transaction_type VARCHAR(20),
    transaction_amount DOUBLE,
    create_datetime TIMESTAMP NOT NULL,
    PRIMARY KEY(trade_number),
    FOREIGN KEY(account_number) REFERENCES account(account_number)
);

CREATE TABLE loan (
    customer_id VARCHAR(6),
    branch_id VARCHAR(6),
    loan_amount DOUBLE,
    monthly_interest DOUBLE,
    maturity_datetime VARCHAR(10) NOT NULL,
    create_datetime TIMESTAMP NOT NULL,
    PRIMARY KEY(customer_id,branch_id),
    FOREIGN KEY(customer_id) REFERENCES  customer(customer_id),
    FOREIGN KEY(branch_id) REFERENCES  branch(branch_id)
);

INSERT INTO customer VALUES('C00001','가나다1','서울시','010-0000-1111','Service','1974-10-11', now());
INSERT INTO customer VALUES('C00002','가나다2','서울시','010-0000-2222','Service','1974-10-12', now());
INSERT INTO customer VALUES('C00003','가나다3','서울시','010-0000-3333','Service','1974-10-13', now());
INSERT INTO customer VALUES('C00004','가나다4','서울시','010-0000-4444','Service','1974-10-14', now());
INSERT INTO customer VALUES('C00005','가나다5','서울시','010-0000-5555','Service','1974-10-15', now());
INSERT INTO customer VALUES('C00006','가나다6','서울시','010-0000-6666','Service','1974-10-16', now());
INSERT INTO customer VALUES('C00007','가나다7','서울시','010-0000-7777','Service','1974-10-17', now());
INSERT INTO customer VALUES('C00008','가나다8','서울시','010-0000-8888','Service','1974-10-18', now());
INSERT INTO customer VALUES('C00009','가나다9','서울시','010-0000-9999','Service','1974-10-19', now());
INSERT INTO customer VALUES('C00010','가나다9','서울시','010-0000-9999','Service','1974-10-20', now());

INSERT INTO customer VALUES('C00011','나다마1','서울시','010-0000-1111','Service','1974-10-11', now());
INSERT INTO customer VALUES('C00012','나다마2','서울시','010-0000-2222','Service','1974-10-12', now());
INSERT INTO customer VALUES('C00013','나다마3','서울시','010-0000-3333','Service','1974-10-13', now());
INSERT INTO customer VALUES('C00014','나다마4','서울시','010-0000-4444','Service','1974-10-14', now());
INSERT INTO customer VALUES('C00015','나다마5','서울시','010-0000-5555','Service','1974-10-15', now());
INSERT INTO customer VALUES('C00016','나다마6','서울시','010-0000-6666','Service','1974-10-16', now());
INSERT INTO customer VALUES('C00017','나다마7','서울시','010-0000-7777','Service','1974-10-17', now());
INSERT INTO customer VALUES('C00018','나다마8','서울시','010-0000-8888','Service','1974-10-18', now());
INSERT INTO customer VALUES('C00019','나다마9','서울시','010-0000-9999','Service','1974-10-19', now());
INSERT INTO customer VALUES('C00020','나다마9','서울시','010-0000-9999','Service','1974-10-20', now());

INSERT INTO customer VALUES('C00021','다라마1','인천시','010-1111-1111','Service','1976-12-11', now());
INSERT INTO customer VALUES('C00022','다라마2','인천시','010-1111-2222','Service','1976-12-12', now());
INSERT INTO customer VALUES('C00023','다라마3','인천시','010-1111-3333','Service','1976-12-13', now());
INSERT INTO customer VALUES('C00024','다라마4','인천시','010-1111-4444','Service','1976-12-14', now());
INSERT INTO customer VALUES('C00025','다라마5','인천시','010-1111-5555','Service','1976-12-15', now());
INSERT INTO customer VALUES('C00026','다라마6','인천시','010-1111-6666','Service','1976-12-16', now());
INSERT INTO customer VALUES('C00027','다라마7','인천시','010-1111-7777','Service','1976-12-17', now());
INSERT INTO customer VALUES('C00028','다라마8','인천시','010-1111-8888','Service','1976-12-18', now());
INSERT INTO customer VALUES('C00029','다라마9','인천시','010-1111-9999','Service','1976-12-19', now());
INSERT INTO customer VALUES('C00030','다라마9','인천시','010-1111-9999','Service','1976-12-20', now());


INSERT INTO branch VALUES('B00001','은행1','서울시');
INSERT INTO branch VALUES('B00002','은행2','서울시');
INSERT INTO branch VALUES('B00003','은행3','서울시');
INSERT INTO branch VALUES('B00004','은행4','서울시');
INSERT INTO branch VALUES('B00005','은행5','서울시');
INSERT INTO branch VALUES('B00006','은행6','서울시');
INSERT INTO branch VALUES('B00007','은행7','인천시');
INSERT INTO branch VALUES('B00008','은행8','인천시');
INSERT INTO branch VALUES('B00009','은행9','인천시');

INSERT INTO account VALUES('A00001','C00001','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00002','C00001','B00007',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00003','C00002','B00002',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00004','C00002','B00005',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00005','C00003','B00006',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00006','C00003','B00007',1000,'Saving','Suspended', now());
INSERT INTO account VALUES('A00007','C00003','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00008','C00004','B00003',1000,'Saving','Terminated', now());
INSERT INTO account VALUES('A00009','C00004','B00007',1000,'Saving','Terminated', now());
INSERT INTO account VALUES('A00010','C00004','B00002',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00011','C00005','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00012','C00006','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00013','C00007','B00002',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00014','C00007','B00005',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00015','C00007','B00006',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00016','C00007','B00007',1000,'Saving','Suspended', now());
INSERT INTO account VALUES('A00017','C00008','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00018','C00008','B00003',1000,'Saving','Terminated', now());
INSERT INTO account VALUES('A00019','C00009','B00007',1000,'Saving','Terminated', now());
INSERT INTO account VALUES('A00020','C00010','B00002',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00021','C00011','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00022','C00011','B00002',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00023','C00012','B00003',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00024','C00013','B00002',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00025','C00013','B00003',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00026','C00013','B00009',1000,'Saving','Suspended', now());
INSERT INTO account VALUES('A00027','C00014','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00028','C00014','B00003',1000,'Saving','Terminated', now());
INSERT INTO account VALUES('A00029','C00015','B00007',1000,'Saving','Terminated', now());
INSERT INTO account VALUES('A00030','C00015','B00002',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00031','C00015','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00032','C00016','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00033','C00016','B00002',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00034','C00016','B00005',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00035','C00016','B00006',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00036','C00016','B00007',1000,'Saving','Suspended', now());
INSERT INTO account VALUES('A00037','C00017','B00001',1000,'Saving','Active', now());
INSERT INTO account VALUES('A00038','C00018','B00003',1000,'Saving','Terminated', now());
INSERT INTO account VALUES('A00039','C00019','B00007',1000,'Saving','Terminated', now());
INSERT INTO account VALUES('A00040','C00020','B00008',1000,'Saving','Active', now());

INSERT INTO trade_details VALUES('T00001','A00001','2013-01-01','Cheque','Deposit',2000);
INSERT INTO trade_details VALUES('T00002','A00001','2013-02-01','Cash','Withdrawal',1000);
INSERT INTO trade_details VALUES('T00003','A00002','2013-01-01','Cash','Deposit',2000);
INSERT INTO trade_details VALUES('T00004','A00002','2013-02-01','Cash','Deposit',3000);
INSERT INTO trade_details VALUES('T00005','A00007','2013-01-11','Cash','Deposit',7000);
INSERT INTO trade_details VALUES('T00006','A00007','2013-01-13','Cash','Deposit',9000);
INSERT INTO trade_details VALUES('T00007','A00001','2013-03-13','Cash','Deposit',4000);
INSERT INTO trade_details VALUES('T00008','A00001','2013-03-14','Cheque','Deposit',3000);
INSERT INTO trade_details VALUES('T00009','A00001','2013-03-21','Cash','Withdrawal',9000);
INSERT INTO trade_details VALUES('T00010','A00001','2013-03-22','Cash','Withdrawal',2000);
INSERT INTO trade_details VALUES('T00011','A00002','2013-03-25','Cash','Withdrawal',7000);
INSERT INTO trade_details VALUES('T00012','A00007','2013-03-26','Cash','Withdrawal',2000);


INSERT INTO loan VALUES('C00001','B00001',100000, 1000, '2022-10-03', now());
INSERT INTO loan VALUES('C00002','B00002',200000, 2000, '2022-07-31', now());
INSERT INTO loan VALUES('C00009','B00008',400000, 3000, '2021-10-02', now());
INSERT INTO loan VALUES('C00010','B00009',500000, 3000, '2020-05-05', now());
INSERT INTO loan VALUES('C00001','B00003',600000, 1200, '2022-12-25', now());
INSERT INTO loan VALUES('C00002','B00001',600000, 3200, '2022-12-25', now());
INSERT INTO loan VALUES('C00001','B00011',100000, 1240, '2022-12-25', now());
INSERT INTO loan VALUES('C00002','B00012',200000, 2430, '2022-12-25', now());
INSERT INTO loan VALUES('C00009','B00013',400000, 3000, '2022-12-25', now());
INSERT INTO loan VALUES('C00010','B00015',500000, 3000, '2022-12-25', now());
INSERT INTO loan VALUES('C00001','B00020',600000, 4000, '2022-12-25', now());
INSERT INTO loan VALUES('C00002','B00025',600000, 4000, '2022-12-25', now());
