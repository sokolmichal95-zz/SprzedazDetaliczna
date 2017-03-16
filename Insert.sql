--Czas_pracy
INSERT INTO [dbo].[Czas_pracy] ([Id], [Nr_kasjera], [Data_wejscia], [Data_wyjscia]) VALUES (NULL, NULL, NULL, NULL)
--Faktury
INSERT INTO [dbo].[Faktury] ([Nr_faktury], [Nr_paragonu], [ID_odbiorcy], [Data_wystawienia]) VALUES (NULL, NULL, NULL, NULL)
--Grupy_kasjerow
INSERT INTO [dbo].[Grupy_kasjerow] ([Id], [Grupa]) VALUES (NULL, NULL)
--Kasjerzy
INSERT INTO [dbo].[Kasjerzy] ([Nr_kasjera], [Imie], [Nazwisko], [Grupa]) VALUES (NULL, NULL, NULL, NULL)
--Logowania
INSERT INTO [dbo].[Logowania] ([Id], [Nr_kasy], [Data], [Nr_kasjera]) VALUES (NULL, NULL, NULL, NULL)
--Odbiorcy
INSERT INTO [dbo].[Odbiorcy] ([Id_odbiorcy], [NIP], [PESEL], [Miejscowosc], [Ulica], [Nr_budynku], [Nr_lokalu]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL)
--Paragony
INSERT INTO [dbo].[Paragony] ([Id], [Nr_paragonu], [Id_towaru], [Id_kasjera], [Ilosc], [Statusy_platnosci]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL)
--Statusy_platnosci
INSERT INTO [dbo].[Statusy_platnosci] ([Id], [Platnosc]) VALUES (1, N'Gotówka')
INSERT INTO [dbo].[Statusy_platnosci] ([Id], [Platnosc]) VALUES (2, N'Karta platnicza')
INSERT INTO [dbo].[Statusy_platnosci] ([Id], [Platnosc]) VALUES (3, N'Platnosc opózniona')
--Towary
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (1, N'5908543603137', N'a', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (2, N'5908543603144', N'b', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (3, N'5908543603151', N'c', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (4, N'5908543603168', N'd', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (5, N'5908543603175', N'e', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (6, N'5908543603182', N'f', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (7, N'5908543603199', N'g', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (8, N'5908543603205', N'h', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (9, N'5908543603212', N'i', 1)
INSERT INTO [dbo].[Towary] ([Id], [EAN], [Nazwa_towaru], [Wartosc]) VALUES (10, N'5908543603229', N'j', 1)
