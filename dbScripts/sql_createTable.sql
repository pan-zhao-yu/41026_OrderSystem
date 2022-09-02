/* 
 * Author:  Kevin Park
 * Created: May 21, 2022
 */

--------------------------------------------------------------------------------
----Create Tables---------------------------------------------------------------
--------------------------------------------------------------------------------
--1. Loging tables
DROP TABLE ACCESSLOGS;
DROP TABLE REGISTER;

CREATE TABLE ACCESSLOGS
 (
    LOGID int GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
    EMAIL varchar (255),
    PASS varchar (255),
    LOGINDATE varchar (100),
    LOGOUTDATE varchar (100)
 );
 
 CREATE TABLE REGISTER
 (
    ID int GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
    EMAIL varchar (255),
    FULLNAME varchar (255),
    PASS varchar (255),
    PHONENUM varchar (255),
    GENDER varchar (255),
    FAVCOL varchar (255),
    TOS varchar (255)
 );

--2. Device/Product Catalog

CREATE TABLE PRODUCT
(
    PRODID varchar (255),
    PRODNAME varchar(255),
    PRODDESC varchar(255),
    PRODCOST double,
    PRODSTOCK int
);

--3. Order Management


--4. Payment Mangement

CREATE TABLE PURCHASEMETHOD (
ID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
"METHOD" VARCHAR(30),
"NAME" VARCHAR(30),
"CARDNUMBER" VARCHAR(30),
"EXPIRY" VARCHAR(30),
"CVV" VARCHAR(30)
);

CREATE TABLE ORDERHISTORY (
PAYMENT_ID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
"PRODUCT_NAME" VARCHAR(50),
"COST" VARCHAR(10),
ORDER_DATE DATE
);

INSERT INTO ORDERHISTORY VALUES (DEFAULT, 'Phone', '$1300.00', '03/21/2022');
INSERT INTO ORDERHISTORY VALUES (DEFAULT, 'Speaker', '$199.00', '03/25/2022');
INSERT INTO ORDERHISTORY VALUES (DEFAULT, 'Monitor', '$545.00', '03/25/2022');
 
--5. Shipment Mangement
CREATE TABLE SHIPMENT
(
    ID int GENERATED ALWAYS AS IDENTITY (START WITH 1000, INCREMENT BY 1) primary key,
    METHOD varchar(150),
    DATE double,
    ADDRESS varchar(100),
    POSTCODE int
);
 
--6. System Admin tables
DROP TABLE CUSTOMER;
DROP TABLE STAFF;
DROP TABLE SYSADMIN;

CREATE TABLE CUSTOMER (
    ID int GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
    FULLNAME varchar(255) not null,
    PASS varchar(255),
    PHONENUMBER varchar (255),
    ADDRESSLINE varchar (255),
    POSTALCODE int,
    COUNTRY varchar(255),
    CITY varchar(255),
    ACCSTATUS boolean
);

CREATE TABLE STAFF (
    ID int GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
    FULLNAME varchar(255) not null,
    PASS varchar(255),
    PHONENUMBER varchar (255),
    ADDRESSLINE varchar (255),
    POSTALCODE int,
    COUNTRY varchar(255),
    CITY varchar(255),
    ACCSTATUS boolean,
    ADMINSTAFF boolean
);

CREATE TABLE SYSADMIN (
    ID int GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) primary key,
    USERNAME varchar(255) not null,
    PASS varchar(255)
);



--------------------------------------------------------------------------------
----Insert default data --------------------------------------------------------
--------------------------------------------------------------------------------
--System admin default data
INSERT INTO SYSADMIN (UserName, Pass)
VALUES ('admin','admin');


---shipment default data
INSERT INTO SHIPMENT (METHOD, DATE, ADDRESS, POSTCODE)
VALUES
('Express', 11.09, '25 Pitt St', 2000),
('Standard', 23.06, '7 Market St', 2000),
('Standard', 12.09, '2/1 Druitt St', 2000),
('Standard', 18.01, '5 Kent St', 2000),
('Standard', 18.02, '23 George St', 2000),
('Express', 18.02, '2 Hunter St', 2000),
('Express', 18.02, '12 Grosvenor St', 2000),
('Express', 18.02, 'd12 Grosvenor Stj', 2000),
('Standard', 18.02, '12 Grosvenor Ste', 2000),
('Standard', 18.02, '12 Grosvenor St', 2000),
('Express', 18.02, '12 Grosvenor St', 2000),
('Standard', 18.02, '12 Grosvenor St', 2000),
('Standard', 18.02, '12 Grosvenor St', 2000),
('Express', 18.02, '12 Grosvenor St', 2000),
('Standard', 18.02, '12 Grosvenor St', 2000),
('Standard', 18.02, '12 Grosvenor St', 2000),
('Standard', 18.02, '12 Grosvenor St', 2000),
('Express', 18.02, '12 Grosvenor St', 2000),
('Standard', 18.02, '12 Grosvenor St', 2000),
('Express', 18.02, '12 Grosvenor St', 2000),
('Express', 18.02, '12 Grosvenor St', 1950);