CREATE TABLE [dbo].[crssection] (
  [csID] [numeric](4) NOT NULL,
  [courseID] [varchar](6) NOT NULL,
  [section] [char](2) NOT NULL,
  [termID] [char](4) NOT NULL,
  [facultyID] [numeric](3) NULL,
  [day] [varchar](2) NULL,
  [starttime] [varchar](5) NULL,
  [endtime] [varchar](5) NULL,
  [roomID] [numeric](2) NULL,
  [maxcount] [numeric](2) NULL,
  CONSTRAINT [c6] PRIMARY KEY CLUSTERED ([csID]),
  CHECK ([maxcount]>(0))
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[crssection]
  ADD CONSTRAINT [FK_crssection_course] FOREIGN KEY ([courseID]) REFERENCES [dbo].[course] ([courseID])
GO

ALTER TABLE [dbo].[crssection]
  ADD CONSTRAINT [FK_crssection_faculty] FOREIGN KEY ([facultyID]) REFERENCES [dbo].[faculty] ([facultyID])
GO

ALTER TABLE [dbo].[crssection]
  ADD CONSTRAINT [FK_crssection_room] FOREIGN KEY ([roomID]) REFERENCES [dbo].[location] ([roomID])
GO

ALTER TABLE [dbo].[crssection]
  ADD CONSTRAINT [FK_crssection_term] FOREIGN KEY ([termID]) REFERENCES [dbo].[term] ([termID])
GO