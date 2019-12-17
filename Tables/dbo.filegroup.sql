CREATE TABLE [dbo].[filegroup] (
  [id] [int] NOT NULL,
  [name] [nvarchar](255) NOT NULL,
  [distribution_id] [int] NULL,
  [min_filesize] [nvarchar](10) NOT NULL,
  [max_filesize] [nvarchar](10) NOT NULL,
  [default_filegrowth] [nvarchar](10) NOT NULL,
  [type] [int] NOT NULL,
  [is_shell] [bit] NOT NULL DEFAULT (0),
  CONSTRAINT [PK_filegroup] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO