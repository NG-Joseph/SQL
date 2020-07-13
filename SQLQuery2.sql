Create Database CCTIS
USE CCTIS
CREATE TABLE [dbo].[Criminal](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Sex] [varchar](10) NOT NULL,
	[Occupation] [varchar](50) NULL,
	[eyecolor] [varchar](20) NOT NULL,
	[Complexion] [varchar](10) NOT NULL,
	[Haircolor] [varchar](20) NOT NULL,
	[Age] [int] NOT NULL,
	[address] [varchar](200) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Height] [float] NOT NULL,
	[National_Id] [varchar](20) NOT NULL,
	[Weight] [float] NOT NULL,
	[Arrest_Date] [varchar](11) NOT NULL,
	[Arrest_Time] [varchar](11) NOT NULL,
	[INCharge] [varchar](50) NULL,
	[Case_Type] [varchar](50) NOT NULL,
	[ConvictDate] [varchar](11) NOT NULL,
	[CrimeCode] [int] NOT NULL,
	[Cell_No] [int] NOT NULL,
	[Court_Type] [varchar](20) NOT NULL,
	[Verdict] [varchar](100) NOT NULL,
	[Username] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Suspect](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Sex] [varchar](10) NOT NULL,
	[Occupation] [varchar](50) NULL,
	[eyecolor] [varchar](20) NOT NULL,
	[Complexion] [varchar](10) NOT NULL,
	[Haircolor] [varchar](20) NOT NULL,
	[Age] [int] NOT NULL,
	[address] [varchar](200) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Height] [float] NOT NULL,
	[National_Id] [varchar](20) NOT NULL,
	[Weight] [float] NOT NULL,
	[Arrest_Date] [varchar](11) NOT NULL,
	[Arrest_Time] [varchar](11) NOT NULL,
	[INCharge] [varchar](50) NULL,
	[Charged_Case_Type] [varchar](50) NOT NULL,
	[ConvictDate] [varchar](11) NOT NULL,
	[ChargedCode] [int] NOT NULL,
	[Cell_No] [int] NOT NULL,
	[Court_Type] [varchar](20) NOT NULL,
	[Verdict] [varchar](100) NOT NULL,
	[Username] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]






CREATE TABLE [dbo].[Users](
	[User_Id] [int] IDENTITY(1000,1) NOT NULL,
	[Username] [varchar](25) NOT NULL,
	[Password] [varchar](25) NOT NULL,
	[Role] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([Complexion]='Albino' OR [Complexion]='White' OR [Complexion]='Black'))
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([eyecolor]='Brown' OR [eyecolor]='Green' OR [eyecolor]='Yellow' OR [eyecolor]='Blue' OR [eyecolor]='Black'))
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([Haircolor]='Brown' OR [Haircolor]='Green' OR [Haircolor]='Yellow' OR [Haircolor]='Blue' OR [Haircolor]='Black'))
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([Phone] like '[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
ALTER TABLE [dbo].[Complainant]  WITH CHECK ADD CHECK  (([Sex]='Female' OR [Sex]='Male'))
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Case_Type]='Robbery' OR [Case_Type]='Bribery and Corruption' OR [Case_Type]='Police Brutality and Hostility' OR [Case_Type]='Rape' OR [Case_Type]='Cyber Crime(Yahoo Yahoo)' OR [Case_Type]='Terrorism' OR [Case_Type]='Money Laundering' OR [Case_Type]='Advance Fee Fraud(419)' OR [Case_Type]='Financial Crime' OR [Case_Type]='Economic Crime'))
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Complexion]='Albino' OR [Complexion]='White' OR [Complexion]='Black'))
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Court_Type]='Magistrate Court(District Court)' OR [Court_Type]='Customary Court of Appeal' OR [Court_Type]='Sharia Court Of Appeal' OR [Court_Type]='National Industrial Court' OR [Court_Type]='State High Court' OR [Court_Type]='Federal High Court' OR [Court_Type]='Court Of Appeal' OR [Court_Type]='Supreme Court'))
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([eyecolor]='Brown' OR [eyecolor]='Green' OR [eyecolor]='Yellow' OR [eyecolor]='Blue' OR [eyecolor]='Black'))
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Haircolor]='Brown' OR [Haircolor]='Green' OR [Haircolor]='Yellow' OR [Haircolor]='Blue' OR [Haircolor]='Black'))
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Phone] like '[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
ALTER TABLE [dbo].[Criminal]  WITH CHECK ADD CHECK  (([Sex]='Female' OR [Sex]='Male'))
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Charged_Case_Type]='Robbery' OR [Charged_Case_Type]='Bribery and Corruption' OR [Charged_Case_Type]='Police Brutality and Hostility' OR [Charged_Case_Type]='Rape' OR [Charged_Case_Type]='Cyber Crime(Yahoo Yahoo)' OR [Charged_Case_Type]='Terrorism' OR [Charged_Case_Type]='Money Laundering' OR [Charged_Case_Type]='Advance Fee Fraud(419)' OR [Charged_Case_Type]='Financial Crime' OR [Charged_Case_Type]='Economic Crime'))
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Complexion]='Albino' OR [Complexion]='White' OR [Complexion]='Black'))
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Court_Type]='Magistrate Court(District Court)' OR [Court_Type]='Customary Court of Appeal' OR [Court_Type]='Sharia Court Of Appeal' OR [Court_Type]='National Industrial Court' OR [Court_Type]='State High Court' OR [Court_Type]='Federal High Court' OR [Court_Type]='Court Of Appeal' OR [Court_Type]='Supreme Court'))
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([eyecolor]='Brown' OR [eyecolor]='Green' OR [eyecolor]='Yellow' OR [eyecolor]='Blue' OR [eyecolor]='Black'))
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Haircolor]='Brown' OR [Haircolor]='Green' OR [Haircolor]='Yellow' OR [Haircolor]='Blue' OR [Haircolor]='Black'))
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Phone] like '[0][7-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
ALTER TABLE [dbo].[Suspect]  WITH CHECK ADD CHECK  (([Sex]='Female' OR [Sex]='Male'))

CREATE TABLE [dbo].[Complainant](
	[compId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Sex] [varchar](10) NOT NULL,
	[Occupation] [varchar](50) NULL,
	[eyecolor] [varchar](20) NOT NULL,
	[Complexion] [varchar](10) NOT NULL,
	[Haircolor] [varchar](20) NOT NULL,
	[Age] [int] NOT NULL,
	[address] [varchar](200) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Complain] [varchar](200) NOT NULL,
	[Report_Date] [varchar](11) NOT NULL,
	[Report_Time] [varchar](11) NOT NULL,
	[InCharge] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[compId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]