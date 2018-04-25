
CREATE DATABASE Amy;

USE Amy;

CREATE TABLE users (
    userID int(11) NOT NULL AUTO_INCREMENT,
    userName varchar(255) NOT NULL,
    password varchar(30) NOT NULL,
    updateOn TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(userID)
);

CREATE TABLE Customers (
    customerID int(11) NOT NULL AUTO_INCREMENT,
    customerName varchar(255),
    phone varchar(20),
    cell varchar(20),
    address varchar(100),
    city varchar(30),
    zip int(5),
    country varchar(30),
    contactName varchar(100),
    note varchar(255),
    updateOn TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (customerID)
);

CREATE TABLE items (
    itemID int(11) NOT NULL AUTO_INCREMENT,
    itemName varchar(255) NOT NULL,
    itemDescription varchar(255) NOT NULL,
    updateOn TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
 	PRIMARY KEY (itemID)
);

CREATE TABLE bills (
    billID  int(11) NOT NULL AUTO_INCREMENT,
    total int(11) NOT NULL,
    dateCreated TIMESTAMP,
    dateModified TIMESTAMP,
    dateBilled TIMESTAMP,
    datePaid TIMESTAMP,
    userID int(11),
    Note varchar(255),
    PRIMARY KEY (billID),
    FOREIGN KEY (userID) REFERENCES users(userID) ON UPDATE CASCADE
);

CREATE TABLE billItems (
    billID int(11) NOT NULL,
    itemID int NOT NULL,
    amount int NOT NULL,
    note varchar(255),
    updateOn TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (billID, itemID),
    FOREIGN KEY (billID) REFERENCES bills(billID) ON UPDATE CASCADE,
    FOREIGN KEY (itemID) REFERENCES items(itemID)  ON UPDATE CASCADE
);

CREATE TABLE sessions (
  id varchar(40) NOT NULL default '',
  data text,
  expires INT(11) NOT NULL,
  PRIMARY KEY  (id)
);


INSERT INTO `users` VALUES ('1001', 'vickie', 'vickie', '2018-04-25 18:88:88')

INSERT INTO `items` (itemName, itemDescription) VALUES ('test 1', 'test item 1'), ('test 2', 'test item 2'), ('test 3', 'test item 3')
