CREATE TABLE [xb].[Follows]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [CreatedDate] DATETIME NOT NULL, 
    [ModifiedDate] DATETIME NULL, 
    [FollowingUserId] UNIQUEIDENTIFIER NULL, 
    [FollowerUserId] UNIQUEIDENTIFIER NULL,

    Constraint [FK_Follows_FollowingUser] FOREIGN KEY (FollowingUserId) REFERENCES xb.Users(Id),
    Constraint [FK_Follows_FollowerUser] FOREIGN KEY (FollowerUserId) REFERENCES xb.Users(Id)
)
