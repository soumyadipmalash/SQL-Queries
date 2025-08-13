CREATE TABLE [dbo].[location] (
  [roomID] [numeric](2) NOT NULL,
  [building] [varchar](7) NOT NULL,
  [roomno] [char](3) NOT NULL,
  [capacity] [numeric](2) NULL,
  [roomtype] [char](1) NULL,
  CONSTRAINT [c13] PRIMARY KEY CLUSTERED ([roomID]),
  UNIQUE ([roomno]),
  CHECK ([capacity]>(0))
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[location]
  ADD CONSTRAINT [FK_location_roomtype] FOREIGN KEY ([roomtype]) REFERENCES [dbo].[room] ([roomtype])
GO