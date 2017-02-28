/* Following on from the previous class add a second table and do a join */

/*

  Create a second table for phone numbers with a foreign key

*/

CREATE TABLE Phone (
    id INTEGER PRIMARY KEY NOT NULL, 
    user_id INTEGER, 
    name TEXT, 
    phone_number INTEGER, 
    status TEXT, 
    FOREIGN KEY (user_id) REFERENCES UserAccount(id)
);

/*
  Insert values to the phone number database
*/

INSERT INTO Phone values (100,1, 'Home', '01034902','active');
INSERT INTO Phone values (101,1, 'Work', '01203939','active');
INSERT INTO Phone values (102,2, 'Home', '01723028','active');
INSERT INTO Phone values (103,2, 'Work', '07020202','active');
INSERT INTO Phone values (104,3, 'Home', '03020384','active');
INSERT INTO Phone values (105,4, 'NL', '02304853','active');

/* Display all entries in UserAccount Table*/

SELECT * FROM UserAccount;

/* Delete an entry from the UserAccount */

DELETE FROM UserAccount WHERE id = 5;

/* Basic left Join */
SELECT * FROM UserAccount LEFT JOIN Phone ON UserAccount.id = Phone.user_id;


/* Select specific rows from specific tables */  
SELECT UserAccount.id, FirstName, phone_number FROM UserAccount LEFT JOIN Phone ON UserAccount.id = Phone.user_id;