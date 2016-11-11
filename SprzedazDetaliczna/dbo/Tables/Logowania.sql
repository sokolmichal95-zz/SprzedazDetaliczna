CREATE TABLE [dbo].[Logowania] (
    [Id]         INT      NOT NULL,
    [Nr_kasy]    INT      NOT NULL,
    [Data]       DATETIME NOT NULL,
    [Nr_kasjera] INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Logowania_Kasjerzy] FOREIGN KEY ([Nr_kasjera]) REFERENCES [dbo].[Kasjerzy] ([Nr_kasjera])
);

