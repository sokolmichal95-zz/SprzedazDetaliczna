CREATE TABLE [dbo].[Kasjerzy] (
    [Nr_kasjera] INT           NOT NULL,
    [Imie]       VARCHAR (MAX) NOT NULL,
    [Nazwisko]   VARCHAR (MAX) NOT NULL,
    [Grupa]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Nr_kasjera] ASC),
    CONSTRAINT [FK_Kasjerzy_Grupy_kasjerow] FOREIGN KEY ([Grupa]) REFERENCES [dbo].[Grupy_kasjerow] ([Id])
);

