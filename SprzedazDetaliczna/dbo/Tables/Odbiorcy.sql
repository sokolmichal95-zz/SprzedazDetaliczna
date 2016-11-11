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

