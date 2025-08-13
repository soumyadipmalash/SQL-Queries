CREATE TABLE [dbo].[stud] (
  [StudentID] [char](5) NOT NULL,
  [Last] [varchar](15) NOT NULL,
  [First] [varchar](15) NOT NULL,
  [Street] [varchar](25) NULL,
  [City] [varchar](15) NULL,
  [State] [char](2) NULL DEFAULT ('NJ'),
  [Zip] [varchar](5) NULL,
  [StartTerm] [char](4) NULL,
  [Birthday] [date] NULL,
  [FacultyID] [numeric](3) NULL,
  [MajorID] [numeric](3) NULL,
  [Phone] [char](10) NULL,
  CONSTRAINT [c1] PRIMARY KEY CLUSTERED ([StudentID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[stud]
  ADD CONSTRAINT [FK_student_faculty] FOREIGN KEY ([FacultyID]) REFERENCES [dbo].[faculty] ([facultyID])
GO

ALTER TABLE [dbo].[stud]
  ADD CONSTRAINT [FK_student_major] FOREIGN KEY ([MajorID]) REFERENCES [dbo].[major] ([majorID])
GO

ALTER TABLE [dbo].[stud]
  ADD CONSTRAINT [FK_student_startterm] FOREIGN KEY ([StartTerm]) REFERENCES [dbo].[term] ([termID])
GO