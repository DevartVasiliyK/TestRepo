CREATE TABLE [dbo].[t_first] (
  [pk] [int] NOT NULL,
  [fk] [int] NULL,
  [txt_0] [nvarchar](max) NULL,
  [txt_1] [nvarchar](max) NULL,
  [txt_2] [nvarchar](max) NULL,
  [txt_3] [nvarchar](max) NULL,
  [txt_4] [nvarchar](max) NULL,
  [txt_5] [nvarchar](max) NULL,
  [txt_6] [nvarchar](max) NULL,
  [txt_7] [nvarchar](max) NULL,
  [txt_8] [nvarchar](max) NULL,
  [txt_9] [nvarchar](max) NULL,
  PRIMARY KEY CLUSTERED ([pk]),
  CONSTRAINT [fk_to_third] FOREIGN KEY ([fk]) REFERENCES [dbo].[t_third] ([pk])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO