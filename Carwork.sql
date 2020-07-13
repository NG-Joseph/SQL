Create Database Carwork
use Carwork
Create Table booking(BID int primary key identity(1,1),
fullname varchar(50)not null,
Email varchar(50)not null,
Phone varchar(11) Check(Phone like ('[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))not null,
Carmodel varchar(50)not null,Regno varchar(10)not null,
Engineno varchar(6)not null, carcolour varchar(10)not null,
Complaint varchar(100) )

Insert into booking values('rasheed','abdulrash1144@gmail.com','08123268521','Lamborghini Sesto Elemento','233243','432434','red','weell')
Drop Table Contact

Create Table Contact(CID int primary key identity(1,1),fullname Varchar(50)not null,
Email varchar(50) not null,
Phone varchar(11)Check(Phone like ('[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))not null,
Message varchar(100)not null)

Insert into Contact values('rasheed','Abdulrash1144@gmail.com','08123268521','weell')
