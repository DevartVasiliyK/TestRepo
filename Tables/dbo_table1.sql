CREATE TABLE [dbo].[table1] (
  [id] [int] IDENTITY,
  [col1] [sql_variant] NULL,
  [col2] [sql_variant] NULL,
  CONSTRAINT [PK_table1] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO