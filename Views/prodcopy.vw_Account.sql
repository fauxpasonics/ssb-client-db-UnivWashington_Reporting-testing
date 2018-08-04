SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE VIEW [prodcopy].[vw_Account] AS 
						---- CREATED BY PROCESS ON Nov 20 2016  7:47PM
						SELECT * FROM ProdCopy.[Account] (NOLOCK) WHERE 1=1 AND isdeleted = 0





GO
