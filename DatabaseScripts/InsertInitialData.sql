SET IDENTITY_INSERT [dbo].[UPRAWNIENIA] ON
GO
-- stworzyc UPRAWNIENIA - ADMIN
INSERT INTO [dbo].[UPRAWNIENIA] ([id_uprawnienia], [nazwa_uprawnienia]) VALUES (1, 'Admin'), (2, 'Lekarz'),(3, 'Laborant')
SET IDENTITY_INSERT [dbo].[UPRAWNIENIA] OFF
GO
-- stworzyc JEDNOSTKA - test
INSERT INTO [dbo].[JEDNOSTKA] ([nazwa_nadrz],[nazwa_podrz]) VALUES ('test', 'test')
-- stworzyc UZYTK - Admin ADMIN
INSERT INTO [dbo].[UZYTK] ([imie],[nazwisko],[login],[haslo],[id_uprawnienia],[e_mail],[id_jednostka],[aktywny]) VALUES ('Admin', 'Admin', 'Admin', 'Admin', 1, 'weronika.tobor@op.pl', 1, 'True')
-- stworzyc UZYTK - Lekarz Lekarz
INSERT INTO [dbo].[UZYTK] ([imie],[nazwisko],[login],[haslo],[id_uprawnienia],[e_mail],[id_jednostka],[aktywny]) VALUES ('Lekarz', 'Lekarz', 'Lekarz', 'Lekarz', 2, 'weronika.tobor@op.pl', 1, 'True')
-- stworzyc UZYTK - Laborant Laborant
INSERT INTO [dbo].[UZYTK] ([imie],[nazwisko],[login],[haslo],[id_uprawnienia],[e_mail],[id_jednostka],[aktywny]) VALUES ('Laborant', 'Laborant', 'Laborant', 'Laborant', 3, 'weronika.tobor@op.pl', 1, 'True')
-- stworzyc SLOWNIK_METOD - pcr itp
INSERT INTO [dbo].[SLOWNIK_METOD] ([nazwa_metody],[id_uzytk]) VALUES ('PCR', 1), ('sekwencjonowanie', 1), ('SNaPshot', 1), ('realtime PCR', 1)
-- stworzyc slownik_statusow - wykonane, niewykonane
INSERT INTO [dbo].[SLOWNIK_STATUSOW] ([nazwa_statusu]) VALUES ('wykonano'), ('niewykonano')
-- grupa - kontrolna i badawcza
INSERT INTO [dbo].[GRUPA] ([nazwa_grupy]) VALUES ('kontrolna'), ('badawcza')
-- materiał: krew pełna, osocze
INSERT INTO [dbo].[SLOWNIK_MATERIALOW]([nazwa_materialu]) VALUES('krew pełna'), ('osocze')