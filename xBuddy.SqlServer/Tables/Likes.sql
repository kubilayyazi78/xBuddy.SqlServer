CREATE TABLE [xb].[Likes]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [CreatedDate] DATETIME NOT NULL, 
    [ModifiedDate] DATETIME NULL, 
    [UserId] UNIQUEIDENTIFIER NOT NULL, 
    [TweetId] UNIQUEIDENTIFIER NOT NULL,

    Constraint [FK_Likes_Users] FOREIGN KEY (UserId) REFERENCES xb.Users(Id),
    Constraint [FK_Likes_Tweets] FOREIGN KEY (TweetId) REFERENCES xb.Tweets(Id)
)
