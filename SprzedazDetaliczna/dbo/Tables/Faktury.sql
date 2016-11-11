CREATE TABLE [dbo].[Faktury] (
    [Nr_faktury]       INT  NOT NULL,
    [Nr_paragonu]      INT  NOT NULL,
    [ID_odbiorcy]      INT  NOT NULL,
    [Data_wystawienia] DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([Nr_faktury] ASC),
    CONSTRAINT [FK_Faktury_Odbiorcy] FOREIGN KEY ([ID_odbiorcy]) REFERENCES [dbo].[Odbiorcy] ([Id_odbiorcy]),
    CONSTRAINT [FK_Faktury_Paragony] FOREIGN KEY ([Nr_paragonu]) REFERENCES [dbo].[Paragony] ([Id])
);

