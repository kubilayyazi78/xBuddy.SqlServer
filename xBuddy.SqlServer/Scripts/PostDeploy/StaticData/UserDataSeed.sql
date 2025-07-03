DECLARE 
 @UserId1 UNIQUEIDENTIFIER = '978a005e-ad6a-4c4d-b257-113ca2716c21',
 @UserId2 UNIQUEIDENTIFIER = '4b032592-4689-4359-ba92-b524e4b3e739'

 IF NOT EXISTS (SELECT 1 FROM xb.Users)
 BEGIN
 	 INSERT INTO xb.Users (Id, CreatedDate,UserName, EmailAddress, Password)
	 VALUES
	 (@UserId1, GETDATE(),  'user1', 'user1@hot.com','1234'),
	 (@UserId2, GETDATE(),  'user2', 'user2@hot.com','1234')

END;