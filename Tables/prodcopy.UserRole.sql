CREATE TABLE [prodcopy].[UserRole]
(
[Id] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentRoleId] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RollupDescription] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OpportunityAccessForAccountOwner] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CaseAccessForAccountOwner] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactAccessForAccountOwner] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ForecastUserId] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MayForecastManagerShare] [bit] NULL,
[LastModifiedDate] [datetime] NULL,
[LastModifiedById] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SystemModstamp] [datetime] NULL,
[DeveloperName] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PortalAccountId] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PortalType] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PortalAccountOwnerId] [nvarchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[copyloaddate] [datetime] NULL CONSTRAINT [DF__UserRole__copylo__5629CD9C] DEFAULT (getdate())
)
GO
ALTER TABLE [prodcopy].[UserRole] ADD CONSTRAINT [PK__UserRole__3214EC071392AD23] PRIMARY KEY CLUSTERED  ([Id])
GO
