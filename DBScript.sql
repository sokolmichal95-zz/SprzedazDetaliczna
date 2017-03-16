CREATE TABLE [dbo].[Grupy_kasjerow] (
    [Id]    INT           NOT NULL,
    [Grupa] VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[Odbiorcy] (
    [Id_odbiorcy] INT           NOT NULL,
    [NIP]         VARCHAR (10)  NULL,
    [PESEL]       VARCHAR (11)  NULL,
    [Miejscowosc] VARCHAR (MAX) NOT NULL,
    [Ulica]       VARCHAR (MAX) NOT NULL,
    [Nr_budynku]  INT           NOT NULL,
    [Nr_lokalu]   INT           NULL,
    CONSTRAINT [PK_Odbiorcy] PRIMARY KEY CLUSTERED ([Id_odbiorcy] ASC)
);
CREATE TABLE [dbo].[Kasjerzy] (
    [Nr_kasjera] INT           NOT NULL,
    [Imie]       VARCHAR (MAX) NOT NULL,
    [Nazwisko]   VARCHAR (MAX) NOT NULL,
    [Grupa]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Nr_kasjera] ASC),
    CONSTRAINT [FK_Kasjerzy_Grupy_kasjerow] FOREIGN KEY ([Grupa]) REFERENCES [dbo].[Grupy_kasjerow] ([Id])
);
CREATE TABLE [dbo].[Czas_pracy] (
    [Id]           INT      NOT NULL,
    [Nr_kasjera]   INT      NOT NULL,
    [Data_wejscia] DATETIME NOT NULL,
    [Data_wyjscia] DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Czas_pracy_Kasjerzy] FOREIGN KEY ([Nr_kasjera]) REFERENCES [dbo].[Kasjerzy] ([Nr_kasjera])
);
CREATE TABLE [dbo].[Faktury] (
    [Nr_faktury]       INT  NOT NULL,
    [Nr_paragonu]      INT  NOT NULL,
    [ID_odbiorcy]      INT  NOT NULL,
    [Data_wystawienia] DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([Nr_faktury] ASC),
    CONSTRAINT [FK_Faktury_Odbiorcy] FOREIGN KEY ([ID_odbiorcy]) REFERENCES [dbo].[Odbiorcy] ([Id_odbiorcy]),
    CONSTRAINT [FK_Faktury_Paragony] FOREIGN KEY ([Nr_paragonu]) REFERENCES [dbo].[Paragony] ([Id])
);

CREATE TABLE [dbo].[Logowania] (
    [Id]         INT      NOT NULL,
    [Nr_kasy]    INT      NOT NULL,
    [Data]       DATETIME NOT NULL,
    [Nr_kasjera] INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Logowania_Kasjerzy] FOREIGN KEY ([Nr_kasjera]) REFERENCES [dbo].[Kasjerzy] ([Nr_kasjera])
);

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
CREATE TABLE [dbo].[Statusy_platnosci] (
    [Id]       INT           NOT NULL,
    [Platnosc] VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[Towary] (
    [Id]           INT           NOT NULL,
    [EAN]          VARCHAR (13)  NOT NULL,
    [Nazwa_towaru] VARCHAR (MAX) NOT NULL,
    [Wartosc]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

