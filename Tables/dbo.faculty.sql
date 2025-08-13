CREATE TABLE [dbo].[faculty] (
  [facultyID] [numeric](3) NOT NULL,
  [name] [varchar](15) NOT NULL,
  [roomID] [numeric](2) NULL,
  [phone] [char](3) NULL,
  [deptID] [numeric](1) NULL,
  CONSTRAINT [c4] PRIMARY KEY CLUSTERED ([facultyID]),
  UNIQUE ([phone])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[faculty]
  ADD CONSTRAINT [FK_faculty_dept] FOREIGN KEY ([deptID]) REFERENCES [dbo].[department] ([deptID])
GO

ALTER TABLE [dbo].[faculty]
  ADD CONSTRAINT [FK_faculty_room] FOREIGN KEY ([roomID]) REFERENCES [dbo].[location] ([roomID])
GO