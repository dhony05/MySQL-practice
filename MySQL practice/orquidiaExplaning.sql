#create user 

CREATE USER 'user' IDENTIFIED BY '123';

#drop user

#DROP USER 'testuser';


#grant access to all database to user  
GRANT ALL ON *.* TO 'user';

#grant access to sakilla dabase only
GRANT SELECT ON sakila.CITY TO 'user';

#revoke acess to sakila database
 REVOKE ALL ON *.* FROM 'user';
 
 #show grats for current_user
 SHOW GRANTS FOR CURRENT_USER();