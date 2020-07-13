Create Database Creet_Airline
Use Creet_Airline
drop table Booking.One_way
/*Schema Booking*\
create schema Booking
Create Table Booking.One_way
Create Table Booking.One_way(OwID int primary key identity(1,1) not null,
Bid int Foreign Key 
References
 Booking(Bid) ,
departcity varchar(50)Check(departcity in ('Lagos',
'Abuja',
'Ibadan',
'Calarbar',
'Enugu',
'Ilorin',
'Jos',
'Kaduna',
'Kano',
'Maiduguri',
'Port Harcourt',
'Sokoto',
'Benin'
))not null,
ArrivalCity varchar(50)Check(Arrivalcity in ('Lagos',
'Abuja',
'Ibadan',
'Calarbar',
'Enugu',
'Ilorin',
'Jos',
'Kaduna',
'Kano',
'Maiduguri',
'Port Harcourt',
'Sokoto',
'Benin'))not null,
ow_DepartDate date not null
,ow_returnDate date not null,
ow_Travellers int not null,
ow_Traveller_Adult int not null,
ow_Traveller_Children int not null,
ow_Traveller_Infant int not null,
ow_travelClass varchar(50)Check(ow_travelClass in 
('FirstClass','Economy','Business'))not null,
Constraint ow_DepartDate_cannot_be_equal_to_Todays_Date_CHK
Check(ow_DepartDate >= Getdate())
)
/*Select,Alter and Drop Table*\
Drop Table Booking.Returns

 Add Constraint ow_DepartDate_cannot_be_equal_to_ow_returnDate_CHK
Check(ow_DepartDate <> ow_returnDate);

Insert into Booking.one_way values('Lagos','Ibadan','08-12-19','08-12-19',3,1,1,1,'Economy')
Select * from Booking.one_way

/*Booking
drop table Booking
Create Table Booking(Bid int primary key identity(1,1) not null,
age int not null,
Gender Varchar(6)Check(Gender in 
('Male','Female'))not null,
Firstname varchar(50) not null,Lastname varchar(50) not null,
address varchar(100),Email varchar(50) Check(Email like'%_@_%.com') not null,
Phone_Num Varchar(11) Check(Phone_Num like ('[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))not null,
message varchar(100) not null)*/

/*Booking for Return
Drop Table Booking.Returns
Create Table Booking.Retun(RID int primary key identity(1,1) not null,
Bid int Foreign Key 
References
 Booking(Bid),
departcity varchar(50)Check(departcity in ('Lagos',
'Abuja',
'Ibadan',
'Calarbar',
'Enugu',
'Ilorin',
'Jos',
'Kaduna',
'Kano',
'Maiduguri',
'Port Harcourt',
'Sokoto',
'Benin'
))not null,
ArrivalCity varchar(50)Check(Arrivalcity in ('Lagos',
'Abuja',
'Ibadan',
'Calarbar',
'Enugu',
'Ilorin',
'Jos',
'Kaduna',
'Kano',
'Maiduguri',
'Port Harcourt',
'Sokoto',
'Benin'))not null,
R_DepartDate date not null
,R_returnDate date not null,
R_Travellers int not null,
R_Traveller_Adult int not null,
R_Traveller_Children int not null,
R_Traveller_Infant int not null,
R_travelClass varchar(50)Check(R_travelClass in 
('FirstClass','Economy','Business'))not null,
Constraint R_DepartDate_cannot_be_equal_to_Todays_Date_CHK
Check(R_DepartDate >= Getdate())
)
*/
/*Creating Contact Table
Create Table Contact(CID INT primary key identity(1,1) not null,
Contact_Email varchar(50) Check(Contact_Email like'%_@_%.com') not null,
Contact_Phone_Num Varchar(11) Check(Contact_Phone_Num like ('[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))not null,
Contact_message varchar(100) not null)*/

 Add Constraint ow_DepartDate_cannot_be_equal_to_owReturnDate_CHK
Check(ow_DepartDate >= ow_returnDate)
