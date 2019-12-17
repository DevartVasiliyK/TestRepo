CREATE TABLE [dbo].[compute_node] (
  [id] [int] NOT NULL,
  [name] [varchar](32) NOT NULL,
  [address] [varchar](15) NOT NULL,
  [database] [varchar](30) NOT NULL DEFAULT ('master'),
  [instance] [varchar](16) NULL DEFAULT ('SQLSERVER'),
  [active] [bit] NOT NULL,
  [index] [int] NOT NULL,
  [driveletter] [varchar](2) NOT NULL,
  CONSTRAINT [PK_compute_node] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO