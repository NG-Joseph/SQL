-- ================================
-- Enable Database for CDC Template
-- ================================
USE AdventureWorks 
---,sysname,AdventureWorks
GO

EXEC sys.sp_cdc_enable_db
GO
Select ContactID,FirstName,LastName,EmailAddress,Phone
 into RContact from AdventureWorks.Person.Contact

Exec sys.sp_cdc_enable_table
 @source_schema = 'dbo',
 @source_name = "RContact",
 @role_name = 'null'

 Select * from RContact
 
 
  Update RContact
 Set EmailAddress = 'Kim3@Adventworks.com'
 Where ContactID = 3

 Select * from cdc.dbo_RContact_CT

