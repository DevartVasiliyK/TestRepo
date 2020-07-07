SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_ci] (
		[c1]     [int] NULL,
		[c2]     [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[c3]     [int] NULL,
		[c4]     [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [ci]
	ON [dbo].[t_ci] ([c1])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[t_ci] SET (LOCK_ESCALATION = TABLE)
GO
