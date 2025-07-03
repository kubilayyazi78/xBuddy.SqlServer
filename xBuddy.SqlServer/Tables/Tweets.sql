CREATE TABLE [xb].[Tweets]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [CreatedDate] DATETIME NOT NULL, 
    [ModifiedDate] DATETIME NULL, 
    [UserId] UNIQUEIDENTIFIER NOT NULL, 
    [Content] NVARCHAR(280) NOT NULL, 
    [LikeCount] INT NULL, 
    [ViewCount] INT NULL,
    Constraint [FK_Tweets_Users] FOREIGN KEY (UserId) REFERENCES xb.Users(Id)
)
