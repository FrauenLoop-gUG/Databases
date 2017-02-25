/* Creating a new table, where Id is primary Key (must be unique per row) and also cannot be null (so always should be provided) */

CREATE TABLE UserAccount
(
  Id int primary key NOT NULL,
  FirstName varchar(255),
  LastName varchar(255),
  UserName varchar(255),
  Password varchar(255)
);

/* Insert new data to your table -- aka add new row to table */
INSERT INTO UserAccount (Id, FirstName, LastName, UserName, Password)
VALUES ('1','Jacky','Chan','Jacky989','123456');

/* Check if the data is there */
SELECT * FROM UserAccount;

/* 
  In case your Id is not created as primary key, you can alter the table
  and make 'Id' as your primary key by running below command othwerwise just
  skip this command!
  
  How to check ? easy way to check if Id is primary key is insert two row 
  where they have same value for Id, if you don't get execution error then, 
  it means your Id attribute is NOT primary key
  ex:
    VALUES ('1','Jacky','Chan','Jacky989','123456');
    VALUES ('1','Chuck','Norris','Chuck4ever','abcdefg');
*/

ALTER TABLE UserAccount
ADD PRIMARY KEY (Id);