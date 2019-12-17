CREATE TABLE [dbo].[configuration_properties] (
  [id] [varchar](50) NOT NULL,
  [key] [varchar](50) NOT NULL,
  [value] [nvarchar](4000) NULL,
  [default] [nvarchar](4000) NULL,
  [protection] [smallint] NOT NULL,
  [access] [smallint] NOT NULL,
  [datatype] [varchar](50) NOT NULL,
  CONSTRAINT [PK_configuration_properties] PRIMARY KEY CLUSTERED ([id], [key])
)
ON [PRIMARY]
GO