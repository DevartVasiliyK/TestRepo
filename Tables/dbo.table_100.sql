CREATE TABLE [dbo].[table_100] (
  [id] [int] NOT NULL DEFAULT (1),
  [column_date_5] [date] NULL,
  [column_smalldatetime_4] [smalldatetime] NULL,
  [column_smallint_3] [smallint] NULL,
  [column_varchar_2] [varchar](1) NULL,
  [column_bigint_1] [bigint] NULL,
  CONSTRAINT [PK_table_100_id] PRIMARY KEY CLUSTERED ([id]),
  CONSTRAINT [KEY_table_100_id] UNIQUE ([id]),
  CONSTRAINT [CK_table_100] CHECK ([id]>(1))
)
ON [PRIMARY]
GO

CREATE INDEX [IDX_table_100_id_1]
  ON [dbo].[table_100] ([id])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[table_100]
  ADD CONSTRAINT [FK_table_100_table_100_id] FOREIGN KEY ([id]) REFERENCES [dbo].[table_100] ([id])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Primary key for table records.', 'SCHEMA', N'dbo', 'TABLE', N'table_100', 'COLUMN', N'id'
GO