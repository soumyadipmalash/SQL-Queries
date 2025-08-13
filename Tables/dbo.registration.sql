CREATE TABLE [dbo].[registration] (
  [studentID] [char](5) NOT NULL,
  [csID] [numeric](4) NOT NULL,
  [midterm] [char](1) NULL,
  [final] [char](1) NULL,
  [regstatus] [char](1) NULL,
  CONSTRAINT [c11] PRIMARY KEY CLUSTERED ([studentID], [csID]),
  CHECK ([final]='W' OR [final]='F' OR [final]='I' OR [final]='D' OR [final]='C' OR [final]='B' OR [final]='A'),
  CHECK ([midterm]='W' OR [midterm]='F' OR [midterm]='D' OR [midterm]='C' OR [midterm]='B' OR [midterm]='A'),
  CHECK ([regstatus]='W' OR [regstatus]='R' OR [regstatus]='X')
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[registration]
  ADD CONSTRAINT [FK_registration_cs] FOREIGN KEY ([csID]) REFERENCES [dbo].[crssection] ([csID])
GO

ALTER TABLE [dbo].[registration]
  ADD CONSTRAINT [FK_registration_student] FOREIGN KEY ([studentID]) REFERENCES [dbo].[stud] ([StudentID])
GO