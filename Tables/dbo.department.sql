CREATE TABLE [dbo].[department] (
  [deptID] [numeric](1) NOT NULL,
  [deptname] [varchar](20) NULL,
  [facultyID] [numeric](3) NULL,
  CONSTRAINT [c17] PRIMARY KEY CLUSTERED ([deptID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[department]
  ADD CONSTRAINT [FK_department_faculty] FOREIGN KEY ([facultyID]) REFERENCES [dbo].[faculty] ([facultyID])
GO