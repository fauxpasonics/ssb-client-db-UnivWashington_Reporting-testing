CREATE TABLE [prodcopystg].[Opportunity]
(
[Id] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsDeleted] [bit] NULL,
[AccountId] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StageName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Amount] [float] NULL,
[Probability] [float] NULL,
[CloseDate] [date] NULL,
[Type] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NextStep] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadSource] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsClosed] [bit] NULL,
[IsWon] [bit] NULL,
[ForecastCategory] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ForecastCategoryName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CampaignId] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasOpportunityLineItem] [bit] NULL,
[Pricebook2Id] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OwnerId] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL,
[CreatedById] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastModifiedDate] [datetime] NULL,
[LastModifiedById] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SystemModstamp] [datetime] NULL,
[LastActivityDate] [date] NULL,
[FiscalQuarter] [int] NULL,
[FiscalYear] [int] NULL,
[Fiscal] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastViewedDate] [datetime] NULL,
[LastReferencedDate] [datetime] NULL,
[HasOpenActivity] [bit] NULL,
[HasOverdueTask] [bit] NULL,
[Account_Email__c] [nvarchar] (1300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Home_Phone__c] [nvarchar] (1300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Mobile_Phone__c] [nvarchar] (1300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Other_Phone__c] [nvarchar] (1300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Patron_ID__c] [nvarchar] (1300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Phone__c] [nvarchar] (1300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Warning__c] [nvarchar] (1300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event_Date__c] [date] NULL,
[Full_Opportunity_ID__c] [nvarchar] (1300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Original_Opportunity_Name__c] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Other_Reason_Lost__c] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PLO__c] [bit] NULL,
[Reason_Lost__c] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Renewal__c] [bit] NULL,
[Season__c] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Short_Description__c] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sport__c] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summary_Season__c] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summary_Total_Spend__c] [float] NULL,
[Seat_Block__c] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Waitlist_Position__c] [float] NULL,
[Summary_Quantity__c] [float] NULL,
[Summary_of_Games__c] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[copyloaddate] [datetime] NULL CONSTRAINT [DF__Opportuni__copyl__398D8EEE] DEFAULT (getdate()),
[Football_Renewal_Intention__c] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Football_Reason_s_Leaving__c] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Renewal_Method__c] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Payment_Plan__c] [bit] NULL,
[Ticket_Quantity__c] [float] NULL,
[Football_YOP__c] [float] NULL
)
GO
ALTER TABLE [prodcopystg].[Opportunity] ADD CONSTRAINT [PK__Opportun__3214EC07FC0389EA] PRIMARY KEY CLUSTERED  ([Id])
GO
