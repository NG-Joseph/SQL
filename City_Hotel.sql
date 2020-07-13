Create Database City_Hotel

Use city_Hotel

Create Table Booking(Name Varchar(50),
Email Varchar(150),
Hotel Varchar(50),
Check_In Date,
Check_Out Date,
Comfort Varchar(20) check in('Standard','Classic','Excutive'))
Adults int,
Children int,
Rooms int,
Message Varchar(Max))