  Create table Users (
    UID int,
    LastName varchar(255),
    FirstName varchar(255),
    Email varchar(255)
);
  Create table Logins (
    LID int,
    UID int,
    Username varchar(255),
    Password varchar(255),
    PRIMARY KEY (LID),
    FOREIGN KEY (UID) REFERENCES Users(UID)
);
  Create table Jobs (
    JID int,
    JobName varchar(255),
    Company varchar(255),
    Description nvarchar(max),
    DatePosted DateTime,
    PRIMARY KEY (JID),
);

  Create table UserAppliedJobs (
    UAID int, 
    UID int,
	JID int,
    DateApplied DateTime,
    PRIMARY KEY (UAID),
    FOREIGN KEY (UID) REFERENCES Users(UID),
    FOREIGN KEY (JID) REFERENCES Jobs(JID)
);
