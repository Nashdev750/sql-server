USE [database]
GO

/****** Object:  Table [dbo].[users]    Script Date: 12/8/2023 10:19:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [userSchema].[users](
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [fullname] NVARCHAR(50) NOT NULL,
    [email] NVARCHAR(50) UNIQUE NOT NULL,
    [password] NVARCHAR(200) NOT NULL,
    [created_at] DATETIME DEFAULT GETDATE() NOT NULL
) ON [PRIMARY];
GO