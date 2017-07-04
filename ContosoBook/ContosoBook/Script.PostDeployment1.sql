/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
			   SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
DROP TABLE Book

CREATE TABLE [dbo].[Book]
(
	[Id] INT IDENTITY (1, 1) NOT NULL, 
	[Title] NCHAR(50) NULL, 
	[Author] NCHAR(50) NULL, 
	[Year] INT NULL,
	[Pages] INT NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC)
)

INSERT INTO Book (Title, Author, Year, Pages)
VALUES ('Of Mice and Men', 'Mark Twain', 1970, 100),
('The Lord of the Rings', 'JR Tolkein', 1900, 100),
('Heart of Darkness', 'Joseph Conrad', 1960, 100)
