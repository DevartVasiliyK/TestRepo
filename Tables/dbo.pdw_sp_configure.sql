CREATE TABLE [dbo].[pdw_sp_configure] (
  [name] [nvarchar](35) NOT NULL,
  [minimum] [int] NULL,
  [maximum] [int] NULL,
  [config_value] [int] NULL,
  [run_value] [int] NULL,
  CONSTRAINT [PK_name] PRIMARY KEY CLUSTERED ([name])
)
ON [PRIMARY]
GO