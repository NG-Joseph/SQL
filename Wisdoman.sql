--Assignment
--Name: Adeleke Wisdom
--Reg No: 1021
--Course: MMS
--Database Name: Mechanic Workshop

Create Database Mechanic_Workshop
--Open Database
Use Mechanic_Workshop

Create Table Car(CarID int,Car_Name varchar(50),Car_Colour varchar(10),Car_Model varchar(5),Car_Size varchar(7))

Insert into Car values(001,'Bugatti Veron','Red','2018','Small')
Insert into Car values(002,'Toyota Camry','Black','2016','Small')
Insert into Car values(003,'BMW','Blue','2009','Big')
Insert into Car values(004,'Toyota Highlander','White','2005','Big')
Insert into Car values(005,'KIA Rio','Black','2014','Small')
Insert into Car values(006,'Toyota Avalon','Grey','2016','Big')
Insert into Car values(007,'BMW X4','Red','2018','Small')
Insert into Car values(008,'BMW X5','Black','2018','Big')
Insert into Car values(009,'Golf 6','Pink','2018','Small')
Insert into Car values(010,'Nissan X-Trial','Ash','2018','Big')

Create Table Customer(CustomerID int,Customer_Name varchar(100),Customer_Phone varchar(11),Customer_Address varchar(100),Customer_Gender varchar(1))

Insert into Customer values(0001,'Dabiri','08012234677','Lekki','F')
Insert into Customer values(0002,'Wisdom','08034567876','Lekki','M')
Insert into Customer values(0003,'Topsey_Creet','08078765476','Lekki','M')
Insert into Customer values(0004,'Catalan','08078708765','Lekki','M')
Insert into Customer values(0005,'Seyi','08012345678','Lekki','F')
Insert into Customer values(0006,'Ifedayo','08009876543','Lekki','F')
Insert into Customer values(0007,'Teslim','08098765432','Lekki','M')
Insert into Customer values(0008,'Peace','08056786542','Lekki','F')
Insert into Customer values(0009,'Seun','08098765443','Lekki','M')
Insert into Customer values(0010,'Shola','08084790435','Lekki','F')

Create Table Maintenance_History(MH_ID int,MH_Date date,Fault varchar(100),Total_Amount money,Mode_Of_Payment varchar(10))

Insert into Maintenance_History values(1001,'01-02-18','Battery Problem',$20.000,'Cash')
Insert into Maintenance_History values(1002,'02-02-18','Brake Failure',$100.000,'Cheque')
Insert into Maintenance_History values(1003,'03-02-18','Overheating',$10.000,'Cash')
Insert into Maintenance_History values(1004,'04-02-18','Engine Knock',$200.000,'Cheque')
Insert into Maintenance_History values(1005,'03-02-18','Door Failure',$70.000,'Cash')
Insert into Maintenance_History values(1006,'03-02-18','Fuel Pump',$90.000,'Cash')
Insert into Maintenance_History values(1007,'03-02-18','Accident',$60.000,'Cash')
Insert into Maintenance_History values(1008,'03-02-18','Flat Tyre',$120.000,'Cheque')
Insert into Maintenance_History values(1009,'03-02-18','Servicing',$300.000,'POS')
Insert into Maintenance_History values(1010,'03-02-18','Whole Engine',$500.000,'POS')

Create Table Parts(ID int,P_Name varchar(50),P_Cost money,P_Size varchar(10),P_Expiry_Date date)

Insert into Parts values(1111,'Brake Oil',$50.000,'Medium','01-12-2050')
Insert into Parts values(1112,'Fuel Tank',$50.000,'Medium','02-12-2050')
Insert into Parts values(1113,'Engine',$50.000,'Big','03-12-2050')
Insert into Parts values(1114,'Bumper',$50.000,'Large','04-12-2050')
Insert into Parts values(1115,'Body Parts',$50.000,'Medium','05-12-2050')
Insert into Parts values(1116,'Radiator',$50.000,'Big','06-12-2050')
Insert into Parts values(1117,'Carbrator',$50.000,'Large','07-12-2050')
Insert into Parts values(1118,'Silencer',$50.000,'Medium','08-12-2050')
Insert into Parts values(1119,'Condenser',$50.000,'Big','09-12-2050')
Insert into Parts values(1120,'Alligner',$50.000,'Large','10-12-2050')

Create Table Staff(S_ID int,S_Name varchar(50),S_Phone varchar(11),S_Address varchar(100),S_Gender varchar(2))

Insert into Staff values(1,'Rasheed','08045678984','Ikoyi','M')
Insert into Staff values(2,'Pelumi','08006578956','Ikoyi','M')
Insert into Staff values(3,'Tolu','08065848756','Ikoyi','M')
Insert into Staff values(4,'Robson','08078644687','Ikoyi','M')
Insert into Staff values(5,'Timothy','08012340987','Ikoyi','M')
Insert into Staff values(6,'Dabiri','08087654560','Ikoyi','M')
Insert into Staff values(7,'Demola','08009876543','Ikoyi','M')
Insert into Staff values(8,'Clinton','08056789545','Ikoyi','M')
Insert into Staff values(9,'Ola','08034567899','Ikoyi','M')
Insert into Staff values(10,'Teslim','08009876565','Ikoyi','M')

Select * From Car
Select * From Customer
Select * From Maintenance_History
Select * From Parts
Select * From Staff