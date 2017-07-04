CREATE TABLE [dbo].[Book]
(
	[Id] INT IDENTITY (1, 1) NOT NULL, 
	[Title] NCHAR(50) NULL, 
	[AuthorName] NCHAR(50) NULL, 
	[Year] INT NULL,
	[Pages] INT NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC)
)
