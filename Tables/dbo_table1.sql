CREATE TABLE [dbo].[table1] (
  [ф] [varchar](50) NULL,
  [с1] [varchar](50) NULL
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trigger1]
ON [dbo].[table1]
FOR INSERT
AS SELECT ''
GO

DISABLE TRIGGER [dbo].[trigger1] ON [dbo].table1
GO