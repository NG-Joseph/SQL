--creating database for Personal_Assistant
Create Database Personal_Assistant

--using Personal_Assistant
use Personal_Assistant

--creating Table Users
Create Table Users(User_Id varchar(5) constraint pk_User_Id primary key,
Username varchar(25),
Password varchar(25),
Role varchar (25))

--creating Table Contacts
Create Table Contacts (Contact_Id varchar(5) constraint pk_Contact_Id primary key,
Surname varchar(50),
Othername varchar(50),
Address varchar(150),
Phone varchar(11),
Email varchar(50))

--creating Table Meetings
Create Table Meetings (Meeting_Id varchar(5) constraint pk_Meeting_Id primary key,
DateOfMeeting varchar(10),
TimeOfMeeting varchar(10),
Location varchar(50),
Contact_Id varchar(5))

--inserting into Users
--insert into Users values('kida', 'Kida123', 'user')

--inserting into Contacts
--insert into Contacts values('100', 'DABIRI', 'SEUN', 'NO1_BANANA_ISLAND,LAGOS', '07054963343', 'seundabiri1@gmail.com')

--inserting into Meetings
--insert into Meetings values('200', '25-02-2018', '12:00', 'NO1_BANANA_ISLAND,LAGOS', '100') 

--Displaying all the records for Users
--select * from Users

--Displaying all the records for Contacts
--select * from Contacts

--Displaying all the records for Meetings
--select * from Meetings


select c.Surname, c.Othername, m.DateOfMeeting, m.TimeOfMeeting
from Contacts as c join meetings as m
on c.Contact_Id = m.Contact_Id