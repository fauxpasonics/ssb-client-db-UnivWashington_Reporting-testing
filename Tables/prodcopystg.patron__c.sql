CREATE TABLE [prodcopystg].[patron__c]
(
[Id] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsDeleted] [bit] NULL,
[Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OwnerId] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL,
[CreatedById] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastModifiedDate] [datetime] NULL,
[LastModifiedById] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SystemModstamp] [datetime] NULL,
[Patron_ID__c] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account__c] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Contact__c] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSB_CRMSYSTEM_CONTACT_ID__c] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[copyloaddate] [datetime] NULL CONSTRAINT [DF__patron__c__copyl__276EDEB3] DEFAULT (getdate())
)
GO
ALTER TABLE [prodcopystg].[patron__c] ADD CONSTRAINT [PK__patron____3214EC07A1402706] PRIMARY KEY CLUSTERED  ([Id])
GO
