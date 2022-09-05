
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128)  ,
  `gender` varchar(10)  ,
  `age` int(10)  ,
  `phone` varchar(20)  ,
  `username` varchar(64)  ,
  `password` varchar(64)  ,
  PRIMARY KEY (`id`)
);


DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128)  ,
  `phone` varchar(20)  ,
  `address` varchar(128)  ,
  `comment` varchar(128)  ,
  PRIMARY KEY (`id`)
);


