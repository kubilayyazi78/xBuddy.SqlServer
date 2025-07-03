IF NOT EXISTS (SELECT 1 FROM xb.Tweets)
BEGIN 
INSERT INTO xb.Tweets (Id, CreatedDate, ModifiedDate, UserId, Content, LikeCount)
VALUES
(NEWID(),GETDATE(),NULL,@UserId1,'Hello word1',0),
(NEWID(),GETDATE(),NULL,@UserId1,'Hello word2',0),
(NEWID(),GETDATE(),NULL,@UserId1,'Hello word3',0),
(NEWID(),GETDATE(),NULL,@UserId2,'Hello word4',0),
(NEWID(),GETDATE(),NULL,@UserId2,'Hello word5',0),
(NEWID(),GETDATE(),NULL,@UserId2,'Hello word6',0),
(NEWID(),GETDATE(),NULL,@UserId1,'Hello word7',0),
(NEWID(),GETDATE(),NULL,@UserId1,'Hello word8',0),
(NEWID(),GETDATE(),NULL,@UserId2,'Hello word9',0),
(NEWID(),GETDATE(),NULL,@UserId2,'Hello word10',0)
END;