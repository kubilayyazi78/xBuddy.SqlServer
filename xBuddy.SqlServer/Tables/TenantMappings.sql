CREATE TABLE [xb].[TenantMappings]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [CreatedDate] DATETIME NOT NULL, 
    [ModifiedDate] DATETIME NULL, 
    [TenantId] NVARCHAR(50) NULL, 
    [UserId] UNIQUEIDENTIFIER NULL,
    Constraint [FK_TenantMappings_Users] FOREIGN KEY (UserId) REFERENCES xb.Users(Id)
)
