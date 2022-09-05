CREATE TABLE "USERS" (
                         "USERID"  int NOT NULL primary key
                             GENERATED ALWAYS AS IDENTITY
                                 (START WITH 1, INCREMENT BY 1),
                         "EMAIL" varchar(300) NOT NULL,
                         "PASSWORD" varchar(300) NOT NULL ,
                         "FULLNAME" varchar(300) NOT NULL,
                         "PHONE" varchar(500) NOT NULL ,
                         "USERTYPE" varchar(100) NOT NULL,
                         "ISACTIVE" boolean DEFAULT true
);

INSERT INTO USERS (EMAIL, PASSWORD, FULLNAME, PHONE, USERTYPE, ISACTIVE)
VALUES
    ('a1@uts.com','1234','User Kingq','1234567890','CUSTOMER',TRUE),
    ('a2@uts.com','1234','User Kingw','1234567891','CUSTOMER',TRUE),
    ('a3@uts.com','1234','User Kinge','1234567892','CUSTOMER',TRUE),
    ('a4@uts.com','1234','User Kingr','1234567893','CUSTOMER',TRUE),
    ('a5@uts.com','1234','User Kingt','1234567894','CUSTOMER',TRUE),
    ('a6@uts.com','1234','User Kingy','1234567895','CUSTOMER',TRUE),
    ('a7@uts.com','1234','User Kingu','1234567896','CUSTOMER',TRUE),
    ('a8@uts.com','1234','User Kingi','1234567897','CUSTOMER',TRUE),
    ('a9@uts.com','1234','User Kingo','1234567898','CUSTOMER',TRUE),
    ('a0@uts.com','1234','User Kingp','1234567899','STAFF',TRUE),
    ('a11@uts.com','1234','User Kinga','0234567890','STAFF',TRUE),
    ('a12@uts.com','1234','User Kings','2234567890','STAFF',TRUE),
    ('a13@uts.com','1234','User Kingd','3234567890','STAFF',TRUE),
    ('a14@uts.com','1234','User Kingf','4234567890','STAFF',TRUE),
    ('a15@uts.com','1234','User Kingg','5234567890','STAFF',TRUE),
    ('a16@uts.com','1234','User Kingh','6234567890','STAFF',TRUE),
    ('a17@uts.com','1234','User Kingj','7234567890','STAFF',TRUE),
    ('a18@uts.com','1234','User Kingk','8234567890','STAFF',TRUE),
    ('a19@uts.com','1234','User Kingl','9234567890','STAFF',TRUE),
    ('a10@uts.com','1234','User Kingm','1534567890','STAFF',TRUE);

SELECT * FROM USERS;
