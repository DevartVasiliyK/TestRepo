CREATE TABLE [dbo].[table1111] (
  [c1] [varchar](50) COLLATE Cyrillic_General_CI_AS NULL,
  [c2] [varchar](50) NULL
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'test11111', 'SCHEMA', N'dbo', 'TABLE', N'table1111', 'COLUMN', N'c1'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'test2', 'SCHEMA', N'dbo', 'TABLE', N'table1111', 'COLUMN', N'c2'
GO