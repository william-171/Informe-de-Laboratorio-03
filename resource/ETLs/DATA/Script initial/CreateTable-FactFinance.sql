/****************************************************************************
  This file is part of the Microsoft SQL Server Code Samples.
  Copyright (C) Microsoft Corporation.  All rights reserved.

  This source code is intended only as a supplement to Microsoft
  Development Tools and/or on-line documentation.  See these other
  materials for detailed information regarding Microsoft code samples.

  THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
  KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
  PARTICULAR PURPOSE.
*****************************************************************************/

SET ANSI_NULLS ON
GO
IF NOT EXISTS (SELECT * FROM [sys].[tables] WHERE [object_id] = OBJECT_ID(N'[dbo].[FactFinance]') AND OBJECTPROPERTY([object_id], N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[FactFinance](
	[TimeKey] [int] NULL,
	[OrganizationKey] [int] NULL,
	[DepartmentGroupKey] [int] NULL,
	[ScenarioKey] [int] NULL,
	[AccountKey] [int] NULL,
	[Amount] [float] NULL
) ON [PRIMARY];
END
GO
SET ANSI_NULLS OFF
GO
