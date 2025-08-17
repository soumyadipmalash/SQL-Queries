CREATE TABLE [dbo].[room] (
  [roomtype] [char](1) NOT NULL,
  [roomdesc] [varchar](9) NULL,
  CONSTRAINT [c12] PRIMARY KEY CLUSTERED ([roomtype])
)
ON [PRIMARY]
GO