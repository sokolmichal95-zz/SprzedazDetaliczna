CREATE TABLE [dbo].[Towary] (
    [Id]           INT           NOT NULL,
    [EAN]          VARCHAR (13)  NOT NULL,
    [Nazwa_towaru] VARCHAR (MAX) NOT NULL,
    [Wartosc]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

