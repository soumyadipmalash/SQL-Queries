CREATE TABLE [dbo].[course] (
  [courseID] [varchar](6) NOT NULL,
  [title] [varchar](20) NULL,
  [credits] [numeric](1) NULL,
  [prereq] [varchar](6) NULL,
  CONSTRAINT [c10] PRIMARY KEY CLUSTERED ([courseID]),
  UNIQUE ([title]),
  CHECK ([credits]>=(0) AND [credits]<=(4))
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[course]
  ADD CONSTRAINT [FK_course_prereq] FOREIGN KEY ([prereq]) REFERENCES [dbo].[course] ([courseID])
GO