CREATE TABLE [dbo].[Paragony] (
    [Id]                INT NOT NULL,
    [Nr_paragonu]       INT NOT NULL,
    [Id_towaru]         INT NOT NULL,
    [Id_kasjera]        INT NOT NULL,
    [Ilosc]             INT NOT NULL,
    [Statusy_platnosci] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Paragony_Kasjerzy] FOREIGN KEY ([Id_kasjera]) REFERENCES [dbo].[Kasjerzy] ([Nr_kasjera]),
    CONSTRAINT [FK_Paragony_Statusy_platnosci] FOREIGN KEY ([Statusy_platnosci]) REFERENCES [dbo].[Statusy_platnosci] ([Id]),
    CONSTRAINT [FK_Paragony_Towary] FOREIGN KEY ([Id_towaru]) REFERENCES [dbo].[Towary] ([Id])
);

