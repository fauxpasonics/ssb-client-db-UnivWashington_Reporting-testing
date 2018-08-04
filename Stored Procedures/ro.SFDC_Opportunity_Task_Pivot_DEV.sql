SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--Altered by Keegan Schmitt 4/24/2018
CREATE PROCEDURE [ro].[SFDC_Opportunity_Task_Pivot_DEV]
AS
BEGIN
    DROP TABLE [ODS].[SFDC_Opportunity_Task_Pivot]
    --end
        
DROP TABLE #oppspivot
SELECT a.WhatId AS OpportunityId,
       a.StageName,
       a.xRank, 
       CONCAT(a.ActivityDate, ',',a.[Type]) AS Activity,
       u.[Name] AS OwnerName,
       opp.LeadSource,
       a.CreatedDate
       --Last Activity Date
INTO  #oppspivot
FROM [ro].[vw_prodcopy.Task] a
INNER JOIN prodcopy.Opportunity opp 
    ON a.WhatId = opp.Id
INNER JOIN prodcopy.[user] u
    ON opp.[OwnerId] = u.Id
WHERE 1=1
AND xRank < '26'
--AND a.DimCustomerId = '938587'
        DECLARE @cols AS NVARCHAR(MAX)
              , @query AS NVARCHAR(MAX)
        SELECT @cols = STUFF((   SELECT   ',' + QUOTENAME(xRank)
                                 FROM     #oppspivot
                                 GROUP BY xRank
                                 ORDER BY xRank
                                 FOR XML PATH(''), TYPE
                             ).value('.', 'NVARCHAR(MAX)')
                           , 1
                           , 1
                           , ''
                            )
        
        SET @query = 'SELECT      OpportunityId
                                , StageName
                                , OwnerName
                                , LeadSource
                                ,' + @cols + ' 
                      INTO #Holding1
                      FROM 
                     (
                        SELECT OpportunityId
                                , StageName
                                , OwnerName
                                , LeadSource
                                , xRank
                                , Activity
                        FROM #oppspivot
                    ) x
                    PIVOT 
                    (
                        Min(Activity)
                        FOR xRank IN (' + @cols + ')
                    ) p
                    
                    Select a.FirstActivityDate, a.LastActivityDate, a.Type AS LastActivityType, p.* INTO [ODS].[SFDC_Opportunity_Task_Pivot] from #Holding1 p
                    LEFT JOIN (SELECT t.WhatId, type, j.LastActivityDate, j.FirstActivityDate FROM ro.[vw_prodcopy.Task] t INNER JOIN (SELECT WhatId, MAX(ActivityDate) AS LastActivityDate,
                    MIN(ActivityDate) AS FirstActivityDate, MAX(xRank) xRank
                    FROM ro.[vw_prodcopy.Task] GROUP BY WhatId) j ON t.WhatId = j.WhatId AND t.ActivityDate = j.LastActivityDate AND t.xRank = j.xRank) a ON a.WhatId = p.OpportunityId'
        EXECUTE ( @query )
    END
--SELECT * FROM [ODS].[SFDC_Opportunity_Task_Pivot]

GO
