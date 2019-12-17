CREATE TABLE [dbo].[distribution] (
  [id] [int] NOT NULL,
  [name] [varchar](32) NOT NULL,
  [index] [int] NOT NULL,
  [numa_port] [smallint] NOT NULL DEFAULT (1433),
  CONSTRAINT [PK_distribution] PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO