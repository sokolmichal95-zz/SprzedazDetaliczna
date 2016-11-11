CREATE TABLE [dbo].[Czas_pracy] (
    [Id]           INT      NOT NULL,
    [Nr_kasjera]   INT      NOT NULL,
    [Data_wejscia] DATETIME NOT NULL,
    [Data_wyjscia] DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Czas_pracy_Kasjerzy] FOREIGN KEY ([Nr_kasjera]) REFERENCES [dbo].[Kasjerzy] ([Nr_kasjera])
);

