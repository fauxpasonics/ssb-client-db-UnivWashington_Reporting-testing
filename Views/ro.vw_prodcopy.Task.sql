SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [ro].[vw_prodcopy.Task] AS
SELECT  t.*
, u.[Name]
, opp.StageName
, dc.SSB_CRMSYSTEM_CONTACT_ID
, ROW_NUMBER() OVER(PARTITION BY WhatId ORDER BY ActivityDate ASC) xRank 
FROM  [prodcopy].[Task] t (NOLOCK)
INNER JOIN [prodcopy].[user] u 
	ON t.OwnerId = u.Id
LEFT JOIN UnivWashington.[dbo].[vwDimCustomer_ModAcctId] dc
	ON t.AccountId = dc.SSID AND dc.SourceSystem = 'UW PC_SFDC Account'
LEFT JOIN [prodcopy].[Opportunity] opp 
	ON t.WhatId = opp.Id
GO
