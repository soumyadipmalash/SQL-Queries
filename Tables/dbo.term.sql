CREATE TABLE [dbo].[term] (
  [termID] [char](4) NOT NULL,
  [termdesc] [varchar](11) NULL,
  [startdate] [date] NULL,
  [enddate] [date] NULL,
  CONSTRAINT [c16] PRIMARY KEY CLUSTERED ([termID])
)
ON [PRIMARY]
GO