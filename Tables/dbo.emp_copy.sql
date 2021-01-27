CREATE TABLE [dbo].[emp_copy] (
  [id] [int] NOT NULL,
  [name] [varchar](200) NULL,
  [dept] [int] NULL,
  PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[emp_copy]
  ADD FOREIGN KEY ([dept]) REFERENCES [dbo].[dept] ([id])
GO