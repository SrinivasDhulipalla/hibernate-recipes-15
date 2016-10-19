
CREATE TABLE ORDERS (id bigint NOT NULL, WEEKDAY_RECIPIENT varchar(100),WEEKDAY_PHONE varchar(100),
	WEEKDAY_ADDRESS varchar(100), HOLIDAY_RECIPIENT varchar(100),HOLIDAY_PHONE varchar(100),
	HOLIDAY_ADDRESS varchar(100),PRIMARY KEY (id));
	
CREATE TABLE ORDERS_Phone (id bigint NOT NULL, WEEKDAY_RECIPIENT varchar(100),
	WEEKDAY_AREACODE varchar(100), WEEKDAY_TELEPHONE varchar(100),
	WEEKDAY_ADDRESS varchar(100), HOLIDAY_RECIPIENT varchar(100),HOLIDAY_AREACODE varchar(100),
	HOLIDAY_TELEPHONE varchar(100), HOLIDAY_ADDRESS varchar(100),PRIMARY KEY (id));
	
CREATE TABLE ADDRESS (id integer NOT NULL,STREET_ADDRESS_1 varchar(100),
	STREET_ADDRESS_2 varchar(100),CITY varchar(100),STATE varchar(2),
	ZIP_CODE INT,PRIMARY KEY (id));

CREATE TABLE ORDERS_Address (id integer NOT NULL, WEEKDAY_RECIPIENT varchar(100),
	WEEKDAY_AREACODE varchar(100), WEEKDAY_TELEPHONE varchar(100),
	WEEKDAY_ADDRESS integer, HOLIDAY_RECIPIENT varchar(100),
	HOLIDAY_AREACODE varchar(100), HOLIDAY_TELEPHONE varchar(100),
	HOLIDAY_ADDRESS integer, PRIMARY KEY (id), FOREIGN KEY (WEEKDAY_ADDRESS) 
 	REFERENCES ADDRESS (id), FOREIGN KEY (HOLIDAY_ADDRESS) REFERENCES ADDRESS (id)
 );  
	
CREATE TABLE ORDERS_CONTACT (ORDER_ID integer NOT NULL, RECIPIENT varchar(100),AREACODE 
varchar(100),TELEPHONE varchar(100),ADDRESS varchar(100)); 