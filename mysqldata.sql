
create database airlinemanagementsystem;

use airlinemanagementsystem;
show databases
SELECT gender FROM passenger ORDER BY name DESC LIMIT 1
SELECT preference FROM passenger ORDER BY name DESC LIMIT 1
select * from passenger
ALTER TABLE passenger ADD COLUMN preference VARCHAR(25)
select * from reservation
select * from cancel
create table login(username varchar(20), password varchar(20));
insert into login values('admin', 'admin');


create table passenger (name varchar(20), nationality varchar(20), phone varchar(15), address varchar(50), aadhar varchar(20), gender varchar(20));
INSERT INTO passenger (name, nationality, phone, address, aadhar, gender) VALUES
("Ravi Kumar", "Indian", "9876543210", "123, MG Road, Mumbai", "1234-5678-9012", "Male"),
("Sita Sharma", "Indian", "9876543211", "456, Rajendra Nagar, Delhi", "1234-5678-9013", "Female"),
("John Smith", "American", "9876543212", "789, Wall Street, New York", "NA", "Male"),
("Maria Garcia", "Spanish", "9876543213", "123, La Rambla, Barcelona", "NA", "Female"),
("Aman Verma", "Indian", "9876543214", "56, Civil Lines, Jaipur", "1234-5678-9014", "Male"),
("Ritu Singh", "Indian", "9876543215", "12, Residency Road, Bengaluru", "1234-5678-9015", "Female"),
("Liu Wei", "Chinese", "9876543216", "678, Dongzhimen St, Beijing", "NA", "Male"),
("Fatima Al Zahrani", "Saudi", "9876543217", "345, King Fahd Rd, Riyadh", "NA", "Female"),
("Alex Brown", "British", "9876543218", "111, Oxford Street, London", "NA", "Male"),
("Neha Kapoor", "Indian", "9876543219", "34, Golf Course Road, Gurgaon", "1234-5678-9016", "Female");

create table flight(f_code varchar(20), f_name varchar(20), source varchar(40), destination varchar(40));

insert into flight values("1001", "AI-1212", "Delhi", "Mumbai");
insert into flight values("1002", "AI-1453", "Delhi", "Goa");
insert into flight values("1003", "AI-1112", "Mumbai", "Chennai");
insert into flight values("1004", "AI-3222", "Delhi", "Amritsar");
insert into flight values("1005", "AI-1212", "Delhi", "Ayodhya");

INSERT INTO flight VALUES ("1006", "AI-5678", "Mumbai", "Kolkata");
INSERT INTO flight VALUES ("1007", "AI-8765", "Bengaluru", "Delhi");
INSERT INTO flight VALUES ("1008", "AI-4321", "Chennai", "Hyderabad");
INSERT INTO flight VALUES ("1009", "AI-6543", "Goa", "Jaipur");
INSERT INTO flight VALUES ("1010", "AI-9876", "Chennai", "Jaipur");
INSERT INTO flight VALUES ("1011", "AI-7890", "Ahmedabad", "Delhi");
INSERT INTO flight VALUES ("1012", "AI-5432", "Chandigarh", "Mumbai");
INSERT INTO flight VALUES ("1013", "AI-2109", "Lucknow", "Patna");
INSERT INTO flight VALUES ("1014", "AI-3698", "Indore", "Varanasi");
INSERT INTO flight VALUES ("1015", "AI-4711", "Chennai", "Surat");
INSERT INTO flight VALUES ("1016", "AI-5205", "Jaipur", "Kolkata");
INSERT INTO flight VALUES ("1017", "AI-6183", "Bhopal", "Pune");
INSERT INTO flight VALUES ("1018", "AI-7412", "Coimbatore", "Delhi");
INSERT INTO flight VALUES ("1019", "AI-8321", "Ranchi", "Chennai");
INSERT INTO flight VALUES ("1020", "AI-9012", "Vadodara", "Hyderabad");

INSERT INTO flight VALUES ("1025", "AI-5643", "Pune", "Mumbai");
INSERT INTO flight VALUES ("1026", "AI-3421", "Chennai", "Bengaluru");
INSERT INTO flight VALUES ("1027", "AI-4590", "Kolkata", "Delhi");
INSERT INTO flight VALUES ("1028", "AI-9871", "Lucknow", "Mumbai");
INSERT INTO flight VALUES ("1029", "AI-6521", "Jaipur", "Hyderabad");
INSERT INTO flight VALUES ("1030", "AI-7632", "Ahmedabad", "Kolkata");
INSERT INTO flight VALUES ("1031", "AI-9145", "Mumbai", "Chennai");
INSERT INTO flight VALUES ("1032", "AI-4325", "Goa", "Delhi");
INSERT INTO flight VALUES ("1033", "AI-2814", "Hyderabad", "Bengaluru");
INSERT INTO flight VALUES ("1034", "AI-5190", "Indore", "Jaipur");
INSERT INTO flight VALUES ("1035", "AI-2089", "Amritsar", "Delhi");
INSERT INTO flight VALUES ("1036", "AI-6823", "Varanasi", "Pune");
INSERT INTO flight VALUES ("1037", "AI-7134", "Surat", "Ahmedabad");
INSERT INTO flight VALUES ("1038", "AI-9362", "Chandigarh", "Goa");
INSERT INTO flight VALUES ("1039", "AI-4512", "Bhopal", "Chennai");
INSERT INTO flight VALUES ("1040", "AI-5908", "Pune", "Kochi");
INSERT INTO flight VALUES ("1041", "AI-7831", "Ranchi", "Hyderabad");
INSERT INTO flight VALUES ("1042", "AI-2184", "Coimbatore", "Mumbai");
INSERT INTO flight VALUES ("1043", "AI-6923", "Nagpur", "Delhi");
INSERT INTO flight VALUES ("1045", "AI-3092", "Bareily", "Surat");



create table reservation(PNR varchar(15), TICKET varchar(20), aadhar varchar(20), name varchar(20), nationality varchar(30), flightname varchar(15), flightcode varchar(20), src varchar(30), des varchar(30), ddate varchar(30));

create table cancel(pnr varchar(20), name varchar(40), cancelno varchar(20), fcode varchar(20), ddate varchar(30));