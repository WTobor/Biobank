SET IDENTITY_INSERT [dbo].[PROJEKT] ON
INSERT INTO [dbo].[PROJEKT] ([id_projektu],[akronim],[nazwa_projektu],[id_Admin],[status_archiwum]) VALUES (1,'TEST','test',1,'False');
SET IDENTITY_INSERT [dbo].[PROJEKT] OFF
SET IDENTITY_INSERT [dbo].[GRUPA_PROJ] ON
INSERT INTO [dbo].[GRUPA_PROJ] ([id_grupa_proj],[id_grupa],[id_projekt]) VALUES (1,1,1);
INSERT INTO [dbo].[GRUPA_PROJ] ([id_grupa_proj],[id_grupa],[id_projekt]) VALUES (2,2,1);
SET IDENTITY_INSERT [dbo].[GRUPA_PROJ] OFF
SET IDENTITY_INSERT [dbo].[SLOWNIK_ZMIENNA] ON
INSERT INTO [dbo].[SLOWNIK_ZMIENNA] ([id_slownika_zmiennych],[nazwa_zmiennej],[jednostka_zmiennej],[id_projektu]) VALUES (1,'APA', '-', 1), (2,'BSM','-',1), (3,'Ca','mg/dl',1), (4,'CASR 486','-',1), (5,'CASR 725', '-', 1), (6,'FOK','-', 1), (7,'PTH','pg/ml', 1), (8,'TAQ','-',1), (9,'witD','nmol/l', 1)
SET IDENTITY_INSERT [dbo].[SLOWNIK_ZMIENNA] OFF
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (1,'Wiesława','Kowalczyk','14210718844');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (1,1,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (1,'numer1', 'probka1','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (1,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,1);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,1);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.90', '2016-05-22',3,1);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,1);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,1);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,1);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,1);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,1);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('77.3', '2016-05-22',9,1);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (2,'Justyna','Kubiak','peselK');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (2,2,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (2,'numer2', 'probka2','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (2,2,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,2);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,2);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.77', '2016-05-22',3,2);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,2);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,2);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,2);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('38.79', '2016-05-22',7,2);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,2);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('40.5', '2016-05-22',9,2);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (3,'Janina','Marciniak','03313012355');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (3,3,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (3,'numer3', 'probka3','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (3,3,3);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,3);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,3);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.73', '2016-05-22',3,3);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,3);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,3);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,3);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('49.25', '2016-05-22',7,3);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,3);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('64.3', '2016-05-22',9,3);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (4,'Marta','Bąk','63031812428');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (4,4,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (4,'numer4', 'probka4','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (4,4,4);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,4);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,4);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.09', '2016-05-22',3,4);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,4);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,4);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,4);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,4);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,4);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('88.3', '2016-05-22',9,4);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (5,'Helena','Marciniak','84091600161');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (5,5,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (5,'numer5', 'probka5','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (5,5,5);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,5);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,5);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.79', '2016-05-22',3,5);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,5);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,5);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,5);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,5);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,5);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('72.3', '2016-05-22',9,5);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (6,'Grażyna','Kucharska','93050908954');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (6,6,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (6,'numer6', 'probka6','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (6,6,6);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,6);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,6);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.39', '2016-05-22',3,6);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,6);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,6);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,6);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,6);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,6);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('79.5', '2016-05-22',9,6);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (7,'Agnieszka','Sikora','49031823006');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (7,7,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (7,'numer7', 'probka7','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (7,7,7);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,7);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,7);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.76', '2016-05-22',3,7);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,7);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,7);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,7);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,7);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,7);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('82.6', '2016-05-22',9,7);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (8,'Bożena','Adamska','99012912049');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (8,8,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (8,'numer8', 'probka8','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (8,8,8);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,8);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,8);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.69', '2016-05-22',3,8);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,8);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,8);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,8);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('27.95', '2016-05-22',7,8);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,8);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('47.5', '2016-05-22',9,8);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (9,'Agata','Makowska','14220600441');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (9,9,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (9,'numer9', 'probka9','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (9,9,9);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,9);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,9);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.8', '2016-05-22',3,9);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,9);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,9);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,9);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('27.95', '2016-05-22',7,9);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,9);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('64.1', '2016-05-22',9,9);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (10,'Genowefa','Gajewska','92123116171');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (10,10,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (10,'numer10', 'probka10','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (10,10,10);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,10);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,10);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.05', '2016-05-22',3,10);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,10);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,10);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,10);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,10);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,10);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('43', '2016-05-22',9,10);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (11,'Helena','Kwiatkowska','62011718879');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (11,11,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (11,'numer11', 'probka11','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (11,11,11);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,11);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,11);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.07', '2016-05-22',3,11);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,11);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,11);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,11);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('57.98', '2016-05-22',7,11);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,11);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('43.9', '2016-05-22',9,11);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (12,'Monika','Wasilewska','93052110067');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (12,12,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (12,'numer12', 'probka12','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (12,12,12);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,12);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,12);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.17', '2016-05-22',3,12);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,12);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,12);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,12);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('25.24', '2016-05-22',7,12);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,12);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('44.7', '2016-05-22',9,12);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (13,'Krystyna','Sobczak','56060800399');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (13,13,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (13,'numer13', 'probka13','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (13,13,13);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,13);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,13);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.84', '2016-05-22',3,13);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,13);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,13);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,13);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,13);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,13);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('56.3', '2016-05-22',9,13);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (14,'Marianna','Górska','99050908390');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (14,14,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (14,'numer14', 'probka14','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (14,14,14);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,14);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,14);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.49', '2016-05-22',3,14);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,14);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,14);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,14);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('28.92', '2016-05-22',7,14);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,14);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('67.7', '2016-05-22',9,14);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (15,'Marzena','Kwiatkowska','52020112607');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (15,15,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (15,'numer15', 'probka15','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (15,15,15);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,15);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,15);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.29', '2016-05-22',3,15);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,15);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,15);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,15);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('192.66', '2016-05-22',7,15);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,15);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('40.2', '2016-05-22',9,15);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (16,'Karolina','Wiśniewska','04322702923');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (16,16,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (16,'numer16', 'probka16','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (16,16,16);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,16);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,16);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.09', '2016-05-22',3,16);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,16);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,16);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,16);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('54.68', '2016-05-22',7,16);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,16);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('37.5', '2016-05-22',9,16);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (17,'Teresa','Zielińska','82061524754');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (17,17,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (17,'numer17', 'probka17','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (17,17,17);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,17);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,17);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.16', '2016-05-22',3,17);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,17);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,17);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,17);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('59.86', '2016-05-22',7,17);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,17);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('23.3', '2016-05-22',9,17);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (18,'Ewa','Stępień','07301000342');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (18,18,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (18,'numer18', 'probka18','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (18,18,18);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,18);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,18);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.66', '2016-05-22',3,18);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,18);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,18);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,18);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('70.21', '2016-05-22',7,18);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,18);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('37.9', '2016-05-22',9,18);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (19,'Bożena','Zając','37030504190');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (19,19,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (19,'numer19', 'probka19','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (19,19,19);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,19);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,19);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.43', '2016-05-22',3,19);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,19);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,19);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,19);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,19);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,19);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('57.5', '2016-05-22',9,19);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (20,'Genowefa','Głowacka','66110713111');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (20,20,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (20,'numer20', 'probka20','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (20,20,20);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,20);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,20);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.05', '2016-05-22',3,20);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,20);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,20);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,20);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,20);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,20);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('39.1', '2016-05-22',9,20);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (21,'Irena','Wieczorek','79010212808');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (21,21,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (21,'numer21', 'probka21','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (21,21,21);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,21);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,21);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.83', '2016-05-22',3,21);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,21);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,21);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,21);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,21);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,21);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('60.4', '2016-05-22',9,21);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (22,'Marta','Kamińska','67052823896');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (22,22,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (22,'numer22', 'probka22','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (22,22,22);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,22);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,22);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.69', '2016-05-22',3,22);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,22);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,22);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,22);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('49.72', '2016-05-22',7,22);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,22);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('63', '2016-05-22',9,22);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (23,'Ewelina','Zielińska','77050613470');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (23,23,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (23,'numer23', 'probka23','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (23,23,23);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,23);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,23);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.52', '2016-05-22',3,23);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,23);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,23);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,23);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('62.22', '2016-05-22',7,23);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,23);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('45.9', '2016-05-22',9,23);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (24,'Halina','Walczak','25040218040');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (24,24,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (24,'numer24', 'probka24','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (24,24,24);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,24);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,24);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.03', '2016-05-22',3,24);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,24);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,24);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,24);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,24);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,24);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('48.6', '2016-05-22',9,24);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (25,'Stefania','Bąk','50100307372');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (25,25,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (25,'numer25', 'probka25','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (25,25,25);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,25);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,25);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.51', '2016-05-22',3,25);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,25);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,25);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,25);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,25);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,25);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('55.5', '2016-05-22',9,25);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (26,'Iwona','Kalinowska','69011511556');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (26,26,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (26,'numer26', 'probka26','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (26,26,26);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,26);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,26);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.15', '2016-05-22',3,26);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,26);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,26);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,26);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,26);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,26);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('39.3', '2016-05-22',9,26);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (27,'Marzena','Grabowska','44020323990');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (27,27,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (27,'numer27', 'probka27','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (27,27,27);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,27);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,27);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.25', '2016-05-22',3,27);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,27);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,27);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,27);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,27);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,27);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('56.9', '2016-05-22',9,27);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (28,'Halina','Urbańska','49011212862');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (28,28,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (28,'numer28', 'probka28','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (28,28,28);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,28);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,28);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.94', '2016-05-22',3,28);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,28);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,28);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,28);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('56.57', '2016-05-22',7,28);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,28);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('57.6', '2016-05-22',9,28);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (29,'Grażyna','Pawłowska','48080421326');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (29,29,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (29,'numer29', 'probka29','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (29,29,29);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,29);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,29);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.81', '2016-05-22',3,29);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,29);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,29);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,29);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('37.7', '2016-05-22',7,29);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,29);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('44.7', '2016-05-22',9,29);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (30,'Barbara','Kubiak','57121407836');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (30,30,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (30,'numer30', 'probka30','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (30,30,30);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,30);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,30);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.47', '2016-05-22',3,30);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',4,30);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,30);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,30);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('19.35', '2016-05-22',7,30);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,30);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('83.3', '2016-05-22',9,30);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (31,'Sylwia','Krawczyk','84052018059');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (31,31,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (31,'numer31', 'probka31','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (31,31,31);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,31);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,31);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.97', '2016-05-22',3,31);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,31);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,31);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,31);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('51.61', '2016-05-22',7,31);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,31);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('97.4', '2016-05-22',9,31);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (32,'Jolanta','Kozłowska','54042324617');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (32,32,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (32,'numer32', 'probka32','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (32,32,32);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,32);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,32);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.8', '2016-05-22',3,32);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,32);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,32);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,32);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('68.57', '2016-05-22',7,32);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,32);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('55.1', '2016-05-22',9,32);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (33,'Stanisława','Górska','77112008804');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (33,33,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (33,'numer33', 'probka33','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (33,33,33);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,33);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,33);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.86', '2016-05-22',3,33);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,33);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,33);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,33);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('56.33', '2016-05-22',7,33);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,33);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('45.1', '2016-05-22',9,33);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (34,'Marzena','Wilk','10323114049');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (34,34,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (34,'numer34', 'probka34','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (34,34,34);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,34);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,34);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.43', '2016-05-22',3,34);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,34);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,34);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,34);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('65.69', '2016-05-22',7,34);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,34);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.9', '2016-05-22',9,34);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (35,'Stanisława','Zakrzewska','20071219017');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (35,35,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (35,'numer35', 'probka35','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (35,35,35);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,35);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,35);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.48', '2016-05-22',3,35);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,35);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,35);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,35);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('52.79', '2016-05-22',7,35);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,35);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('85.6', '2016-05-22',9,35);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (36,'Stanisława','Kaczmarek','87110517680');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (36,36,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (36,'numer36', 'probka36','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (36,36,36);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,36);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,36);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.62', '2016-05-22',3,36);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,36);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,36);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,36);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('39.8', '2016-05-22',7,36);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,36);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('110.4', '2016-05-22',9,36);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (37,'Katarzyna','Lewandowska','59101908612');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (37,37,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (37,'numer37', 'probka37','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (37,37,37);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,37);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,37);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.11', '2016-05-22',3,37);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,37);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,37);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,37);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('54.92', '2016-05-22',7,37);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,37);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('57.8', '2016-05-22',9,37);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (38,'Renata','Dąbrowska','73062614014');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (38,38,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (38,'numer38', 'probka38','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (38,38,38);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,38);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,38);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.3', '2016-05-22',3,38);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,38);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,38);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,38);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('55.86', '2016-05-22',7,38);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,38);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('38', '2016-05-22',9,38);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (39,'Wanda','Przybylska','36092924825');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (39,39,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (39,'numer39', 'probka39','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (39,39,39);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,39);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,39);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.99', '2016-05-22',3,39);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,39);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,39);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,39);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('34.96', '2016-05-22',7,39);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,39);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('35.4', '2016-05-22',9,39);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (40,'Aneta','Baranowska','25043002242');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (40,40,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (40,'numer40', 'probka40','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (40,40,40);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,40);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,40);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.06', '2016-05-22',3,40);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,40);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,40);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,40);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,40);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,40);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('60.9', '2016-05-22',9,40);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (41,'Paulina','Wilk','71102912115');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (41,41,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (41,'numer41', 'probka41','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (41,41,41);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,41);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,41);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.94', '2016-05-22',3,41);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,41);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,41);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,41);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,41);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,41);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('42.7', '2016-05-22',9,41);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (42,'Janina','Czarnecka','88062618562');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (42,42,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (42,'numer42', 'probka42','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (42,42,42);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,42);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,42);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.37', '2016-05-22',3,42);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',4,42);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,42);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,42);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,42);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,42);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('78.5', '2016-05-22',9,42);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (43,'Kazimiera','Sikora','12280401037');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (43,43,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (43,'numer43', 'probka43','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (43,43,43);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,43);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,43);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.8', '2016-05-22',3,43);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,43);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,43);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,43);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('70.69', '2016-05-22',7,43);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,43);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('54.3', '2016-05-22',9,43);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (44,'Wiesława','Kowalska','13242703420');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (44,44,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (44,'numer44', 'probka44','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (44,44,44);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,44);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,44);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.12', '2016-05-22',3,44);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,44);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,44);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,44);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,44);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,44);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('52.1', '2016-05-22',9,44);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (45,'Jolanta','Nowak','89040414103');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (45,45,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (45,'numer45', 'probka45','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (45,45,45);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,45);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,45);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.84', '2016-05-22',3,45);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,45);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,45);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,45);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,45);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,45);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('76.7', '2016-05-22',9,45);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (46,'Anna','Czerwińska','74041920140');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (46,46,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (46,'numer46', 'probka46','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (46,46,46);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,46);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,46);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.62', '2016-05-22',3,46);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,46);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,46);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,46);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,46);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,46);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('39.2', '2016-05-22',9,46);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (47,'Barbara','Brzezińska','49100217297');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (47,47,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (47,'numer47', 'probka47','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (47,47,47);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,47);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,47);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.92', '2016-05-22',3,47);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,47);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,47);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,47);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,47);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,47);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('45.6', '2016-05-22',9,47);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (48,'Patrycja','Kamińska','68051203971');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (48,48,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (48,'numer48', 'probka48','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (48,48,48);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,48);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,48);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.10', '2016-05-22',3,48);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,48);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,48);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,48);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,48);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,48);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('72.5', '2016-05-22',9,48);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (49,'Edyta','Lewandowska','65010411774');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (49,49,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (49,'numer49', 'probka49','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (49,49,49);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,49);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,49);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.79', '2016-05-22',3,49);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,49);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,49);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,49);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,49);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,49);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('59', '2016-05-22',9,49);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (50,'Jadwiga','Wysocka','05221008598');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (50,50,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (50,'numer50', 'probka50','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (50,50,50);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,50);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,50);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.55', '2016-05-22',3,50);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,50);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,50);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,50);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,50);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,50);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('44.1', '2016-05-22',9,50);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (51,'Marian','Kalinowski','63110803299');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (51,51,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (51,'numer51', 'probka51','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (51,51,51);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,51);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,51);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.73', '2016-05-22',3,51);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,51);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,51);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,51);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,51);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,51);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('60.9', '2016-05-22',9,51);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (52,'Jerzy','Kaczmarek','peselM');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (52,52,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (52,'numer52', 'probka52','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (52,52,52);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,52);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,52);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.86', '2016-05-22',3,52);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,52);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,52);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,52);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('84.38', '2016-05-22',7,52);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,52);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('114.7', '2016-05-22',9,52);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (53,'Rafał','Olszewski','71041914379');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (53,53,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (53,'numer53', 'probka53','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (53,53,53);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,53);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,53);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.27', '2016-05-22',3,53);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,53);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,53);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,53);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('62.69', '2016-05-22',7,53);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,53);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('39.3', '2016-05-22',9,53);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (54,'Mateusz','Bąk','10232415453');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (54,54,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (54,'numer54', 'probka54','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (54,54,54);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,54);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,54);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.3', '2016-05-22',3,54);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,54);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,54);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,54);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('82.72', '2016-05-22',7,54);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,54);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('30.7', '2016-05-22',9,54);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (55,'Zbigniew','Kaczmarek','75060103110');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (55,55,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (55,'numer55', 'probka55','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (55,55,55);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,55);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,55);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.71', '2016-05-22',3,55);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,55);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,55);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,55);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,55);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,55);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('101.5', '2016-05-22',9,55);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (56,'Grzegorz','Wojciechowski','29121007798');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (56,56,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (56,'numer56', 'probka56','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (56,56,56);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,56);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,56);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.26', '2016-05-22',3,56);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,56);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,56);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,56);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,56);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,56);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('59.8', '2016-05-22',9,56);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (57,'Marcin','Wysocki','93061210356');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (57,57,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (57,'numer57', 'probka57','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (57,57,57);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,57);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,57);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.51', '2016-05-22',3,57);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,57);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,57);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,57);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,57);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,57);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('47.4', '2016-05-22',9,57);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (58,'Zdzisław','Kubiak','57032906875');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (58,58,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (58,'numer58', 'probka58','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (58,58,58);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,58);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,58);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.29', '2016-05-22',3,58);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,58);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,58);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,58);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,58);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,58);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('60.2', '2016-05-22',9,58);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (59,'Artur','Adamski','54042423392');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (59,59,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (59,'numer59', 'probka59','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (59,59,59);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,59);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,59);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.94', '2016-05-22',3,59);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,59);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,59);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,59);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('68.8', '2016-05-22',7,59);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,59);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('57.1', '2016-05-22',9,59);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (60,'Artur','Nowicki','98110404935');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (60,60,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (60,'numer60', 'probka60','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (60,60,60);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,60);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,60);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('13.92', '2016-05-22',3,60);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,60);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,60);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,60);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('33.99', '2016-05-22',7,60);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,60);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('49.3', '2016-05-22',9,60);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (61,'Krzysztof','Czarnecki','35090104996');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (61,61,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (61,'numer61', 'probka61','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (61,61,61);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,61);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,61);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.57', '2016-05-22',3,61);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,61);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,61);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,61);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('58.92', '2016-05-22',7,61);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,61);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('43.9', '2016-05-22',9,61);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (62,'Ryszard','Witkowski','25011514678');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (62,62,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (62,'numer62', 'probka62','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (62,62,62);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,62);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,62);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.60', '2016-05-22',3,62);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,62);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,62);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,62);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,62);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,62);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('71.7', '2016-05-22',9,62);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (63,'Mieczysław','Dudek','85122505055');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (63,63,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (63,'numer63', 'probka63','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (63,63,63);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,63);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,63);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.25', '2016-05-22',3,63);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,63);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,63);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,63);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,63);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,63);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('51.7', '2016-05-22',9,63);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (64,'Robert','Ostrowski','78081322579');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (64,64,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (64,'numer64', 'probka64','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (64,64,64);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,64);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,64);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.89', '2016-05-22',3,64);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,64);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,64);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,64);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('137.69', '2016-05-22',7,64);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,64);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('30.9', '2016-05-22',9,64);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (65,'Mirosław','Czarnecki','82071002936');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (65,65,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (65,'numer65', 'probka65','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (65,65,65);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,65);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,65);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.03', '2016-05-22',3,65);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,65);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,65);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,65);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,65);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,65);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('71.6', '2016-05-22',9,65);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (66,'Ryszard','Bąk','21061611693');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (66,66,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (66,'numer66', 'probka66','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (66,66,66);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,66);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,66);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.25', '2016-05-22',3,66);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,66);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',5,66);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,66);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('43.56', '2016-05-22',7,66);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,66);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('31.5', '2016-05-22',9,66);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (67,'Maciej','Wilk','10250510237');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (67,67,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (67,'numer67', 'probka67','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (67,67,67);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,67);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,67);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.42', '2016-05-22',3,67);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,67);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,67);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,67);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('16.07', '2016-05-22',7,67);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,67);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('54.9', '2016-05-22',9,67);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (68,'Tomasz','Jankowski','06210600896');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (68,68,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (68,'numer68', 'probka68','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (68,68,68);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,68);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,68);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.96', '2016-05-22',3,68);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,68);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,68);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,68);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',7,68);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,68);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('66.5', '2016-05-22',9,68);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (69,'Daniel','Szczepański','45011321412');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (69,69,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (69,'numer69', 'probka69','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (69,69,69);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,69);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,69);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.89', '2016-05-22',3,69);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,69);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,69);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,69);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('46.46', '2016-05-22',7,69);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,69);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('92.8', '2016-05-22',9,69);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (70,'Mateusz','Duda','32070424419');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (70,70,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (70,'numer70', 'probka70','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (70,70,70);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,70);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,70);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('13.02', '2016-05-22',3,70);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,70);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,70);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,70);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('165.21', '2016-05-22',7,70);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,70);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.7', '2016-05-22',9,70);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (71,'Zbigniew','Adamski','76082501410');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (71,71,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (71,'numer71', 'probka71','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (71,71,71);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,71);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,71);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.57', '2016-05-22',3,71);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,71);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,71);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,71);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('4.9', '2016-05-22',7,71);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,71);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('72.4', '2016-05-22',9,71);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (72,'Sławomir','Stępień','82092506257');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (72,72,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (72,'numer72', 'probka72','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (72,72,72);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,72);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,72);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11', '2016-05-22',3,72);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,72);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,72);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,72);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('62.68', '2016-05-22',7,72);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,72);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('52.5', '2016-05-22',9,72);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (73,'Andrzej','Ziółkowski','75050211834');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (73,73,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (73,'numer73', 'probka73','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (73,73,73);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,73);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,73);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.59', '2016-05-22',3,73);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,73);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,73);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,73);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('26.97', '2016-05-22',7,73);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,73);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('79.2', '2016-05-22',9,73);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (74,'Jakub','Walczak','21113010931');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (74,74,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (74,'numer74', 'probka74','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (74,74,74);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,74);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,74);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.5', '2016-05-22',3,74);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,74);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,74);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,74);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('60.8', '2016-05-22',7,74);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,74);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('79.8', '2016-05-22',9,74);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (75,'Marek','Maciejewski','69022819012');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (75,75,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (75,'numer75', 'probka75','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (75,75,75);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,75);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,75);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('13.05', '2016-05-22',3,75);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,75);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,75);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,75);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('80.83', '2016-05-22',7,75);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,75);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('79.2', '2016-05-22',9,75);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (76,'Wiesław','Grabowski','39033015794');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (76,76,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (76,'numer76', 'probka76','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (76,76,76);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,76);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,76);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.03', '2016-05-22',3,76);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,76);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,76);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,76);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('65.51', '2016-05-22',7,76);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,76);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('64.2', '2016-05-22',9,76);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (77,'Sławomir','Rutkowski','33032806353');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (77,77,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (77,'numer77', 'probka77','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (77,77,77);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,77);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,77);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.23', '2016-05-22',3,77);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,77);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,77);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,77);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('56.57', '2016-05-22',7,77);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,77);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.9', '2016-05-22',9,77);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (78,'Jakub','Wojciechowski','50022112618');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (78,78,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (78,'numer78', 'probka78','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (78,78,78);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,78);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,78);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.57', '2016-05-22',3,78);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,78);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,78);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,78);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('49.01', '2016-05-22',7,78);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,78);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('109.9', '2016-05-22',9,78);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (79,'Wiesław','Brzeziński','13242807995');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (79,79,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (79,'numer79', 'probka79','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (79,79,79);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,79);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,79);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.35', '2016-05-22',3,79);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,79);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,79);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,79);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('35.68', '2016-05-22',7,79);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,79);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('55.8', '2016-05-22',9,79);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (80,'Kamil','Pawlak','35111003633');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (80,80,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (80,'numer80', 'probka80','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (80,80,80);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,80);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,80);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.57', '2016-05-22',3,80);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,80);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',5,80);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,80);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('63.39', '2016-05-22',7,80);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,80);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('38.2', '2016-05-22',9,80);
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (81,'numer81', 'probka81','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (81,81,81);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,81);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,81);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.69', '2016-05-22',3,81);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,81);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,81);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,81);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('48.54', '2016-05-22',7,81);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,81);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('48.5', '2016-05-22',9,81);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (82,'Teresa','Jaworska','46121600332');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (82,82,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (82,'numer82', 'probka82','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (82,82,82);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,82);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,82);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.03', '2016-05-22',3,82);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,82);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,82);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,82);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('40.46', '2016-05-22',7,82);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,82);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('54', '2016-05-22',9,82);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (83,'Dorota','Wojciechowska','23093000463');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (83,83,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (83,'numer83', 'probka83','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (83,83,83);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,83);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,83);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.45', '2016-05-22',3,83);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,83);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,83);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,83);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('25.73', '2016-05-22',7,83);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,83);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('92.8', '2016-05-22',9,83);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (84,'Helena','Makowska','00270309898');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (84,84,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (84,'numer84', 'probka84','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (84,84,84);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,84);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,84);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.23', '2016-05-22',3,84);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,84);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',5,84);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,84);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('80.12', '2016-05-22',7,84);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,84);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('47.6', '2016-05-22',9,84);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (85,'Helena','Jabłońska','36101218624');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (85,85,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (85,'numer85', 'probka85','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (85,85,85);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,85);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,85);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.7', '2016-05-22',3,85);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,85);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,85);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,85);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('49.49', '2016-05-22',7,85);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,85);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('40.2', '2016-05-22',9,85);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (86,'Barbara','Kołodziej','50102618887');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (86,86,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (86,'numer86', 'probka86','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (86,86,86);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,86);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,86);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.55', '2016-05-22',3,86);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,86);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,86);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,86);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('17.46', '2016-05-22',7,86);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,86);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.6', '2016-05-22',9,86);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (87,'Maria','Gajewska','65020502848');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (87,87,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (87,'numer87', 'probka87','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (87,87,87);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,87);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,87);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.02', '2016-05-22',3,87);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,87);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,87);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,87);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.03', '2016-05-22',7,87);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,87);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('66.1', '2016-05-22',9,87);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (88,'Paulina','Zając','28061020517');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (88,88,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (88,'numer88', 'probka88','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (88,88,88);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,88);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,88);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.73', '2016-05-22',3,88);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',4,88);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,88);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,88);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('51.38', '2016-05-22',7,88);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,88);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('71.2', '2016-05-22',9,88);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (89,'Anna','Zakrzewska','66083021565');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (89,89,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (89,'numer89', 'probka89','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (89,89,89);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,89);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,89);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.97', '2016-05-22',3,89);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,89);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,89);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,89);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('38.31', '2016-05-22',7,89);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,89);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('52.2', '2016-05-22',9,89);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (90,'Zofia','Zawadzka','53070502031');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (90,90,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (90,'numer90', 'probka90','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (90,90,90);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,90);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,90);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('13.65', '2016-05-22',3,90);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,90);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,90);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,90);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('34.96', '2016-05-22',7,90);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,90);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('67', '2016-05-22',9,90);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (91,'Iwona','Baranowska','12221902555');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (91,91,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (91,'numer91', 'probka91','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (91,91,91);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,91);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,91);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.96', '2016-05-22',3,91);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,91);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,91);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,91);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('37.83', '2016-05-22',7,91);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,91);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('59', '2016-05-22',9,91);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (92,'Marta','Wróbel','02281905760');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (92,92,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (92,'numer92', 'probka92','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (92,92,92);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,92);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,92);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.64', '2016-05-22',3,92);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,92);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,92);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,92);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('28.92', '2016-05-22',7,92);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,92);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('70', '2016-05-22',9,92);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (93,'Agnieszka','Pietrzak','83091410699');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (93,93,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (93,'numer93', 'probka93','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (93,93,93);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,93);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,93);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.9', '2016-05-22',3,93);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,93);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,93);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,93);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('41.59', '2016-05-22',7,93);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,93);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('52', '2016-05-22',9,93);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (94,'Agnieszka','Wilk','10291916951');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (94,94,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (94,'numer94', 'probka94','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (94,94,94);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,94);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,94);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.17', '2016-05-22',3,94);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,94);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,94);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,94);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('61.68', '2016-05-22',7,94);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,94);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('67.4', '2016-05-22',9,94);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (95,'Bożena','Wieczorek','50020209635');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (95,95,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (95,'numer95', 'probka95','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (95,95,95);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,95);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,95);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.36', '2016-05-22',3,95);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,95);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,95);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,95);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('39.5', '2016-05-22',7,95);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,95);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('73', '2016-05-22',9,95);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (96,'Aneta','Michalska','95071318639');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (96,96,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (96,'numer96', 'probka96','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (96,96,96);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,96);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,96);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.13', '2016-05-22',3,96);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,96);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,96);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,96);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('23.03', '2016-05-22',7,96);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,96);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('65.4', '2016-05-22',9,96);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (97,'Iwona','Włodarczyk','24032310513');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (97,97,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (97,'numer97', 'probka97','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (97,97,97);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,97);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,97);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.66', '2016-05-22',3,97);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,97);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,97);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,97);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('39.19', '2016-05-22',7,97);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,97);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('80.9', '2016-05-22',9,97);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (98,'Zofia','Sawicka','79100803916');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (98,98,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (98,'numer98', 'probka98','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (98,98,98);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,98);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,98);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.74', '2016-05-22',3,98);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,98);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,98);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,98);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('45.19', '2016-05-22',7,98);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,98);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('62.7', '2016-05-22',9,98);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (99,'Małgorzata','Ziółkowska','80020704922');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (99,99,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (99,'numer99', 'probka99','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (99,99,99);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,99);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,99);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.21', '2016-05-22',3,99);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,99);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,99);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,99);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('34.1', '2016-05-22',7,99);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,99);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('92.3', '2016-05-22',9,99);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (100,'Elżbieta','Grabowska','09232303639');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (100,100,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (100,'numer100', 'probka100','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (100,100,100);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,100);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,100);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('16.64', '2016-05-22',3,100);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,100);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,100);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,100);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('40.39', '2016-05-22',7,100);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,100);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('94.8', '2016-05-22',9,100);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (101,'Sylwia','Dudek','51092216774');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (101,101,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (101,'numer101', 'probka101','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (101,101,101);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,101);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,101);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.16', '2016-05-22',3,101);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,101);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,101);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,101);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('89.26', '2016-05-22',7,101);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,101);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.1', '2016-05-22',9,101);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (102,'Katarzyna','Czerwińska','36032303158');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (102,102,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (102,'numer102', 'probka102','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (102,102,102);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,102);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,102);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.01', '2016-05-22',3,102);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,102);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,102);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,102);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('58.98', '2016-05-22',7,102);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,102);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.2', '2016-05-22',9,102);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (103,'Wanda','Szulc','91080420277');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (103,103,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (103,'numer103', 'probka103','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (103,103,103);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,103);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,103);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.7', '2016-05-22',3,103);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,103);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,103);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,103);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('55.38', '2016-05-22',7,103);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,103);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('59.5', '2016-05-22',9,103);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (104,'Anna','Wiśniewska','56103021646');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (104,104,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (104,'numer104', 'probka104','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (104,104,104);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,104);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,104);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.39', '2016-05-22',3,104);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,104);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,104);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,104);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('24.97', '2016-05-22',7,104);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,104);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('84.4', '2016-05-22',9,104);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (105,'Magdalena','Baranowska','84031717667');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (105,105,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (105,'numer105', 'probka105','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (105,105,105);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,105);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,105);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.27', '2016-05-22',3,105);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,105);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,105);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,105);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('175.86', '2016-05-22',7,105);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,105);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('49.6', '2016-05-22',9,105);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (106,'Marzena','Zielińska','52071407093');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (106,106,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (106,'numer106', 'probka106','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (106,106,106);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,106);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,106);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.7', '2016-05-22',3,106);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,106);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,106);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,106);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('65.58', '2016-05-22',7,106);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,106);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('63.8', '2016-05-22',9,106);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (107,'Magdalena','Grabowska','70070812773');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (107,107,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (107,'numer107', 'probka107','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (107,107,107);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,107);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,107);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.71', '2016-05-22',3,107);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,107);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,107);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,107);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('55.68', '2016-05-22',7,107);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,107);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('71.1', '2016-05-22',9,107);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (108,'Patrycja','Włodarczyk','42121517917');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (108,108,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (108,'numer108', 'probka108','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (108,108,108);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,108);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,108);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.96', '2016-05-22',3,108);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,108);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,108);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,108);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('49.09', '2016-05-22',7,108);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,108);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('72.9', '2016-05-22',9,108);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (109,'Halina','Malinowska','21121105278');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (109,109,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (109,'numer109', 'probka109','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (109,109,109);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,109);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,109);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.44', '2016-05-22',3,109);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,109);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,109);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,109);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('90.46', '2016-05-22',7,109);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,109);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('80.5', '2016-05-22',9,109);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (110,'Beata','Pawlak','64032106877');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (110,110,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (110,'numer110', 'probka110','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (110,110,110);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,110);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,110);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.75', '2016-05-22',3,110);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,110);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,110);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,110);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('35.3', '2016-05-22',7,110);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,110);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('75.3', '2016-05-22',9,110);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (111,'Grażyna','Szulc','82082810490');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (111,111,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (111,'numer111', 'probka111','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (111,111,111);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,111);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,111);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.28', '2016-05-22',3,111);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,111);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,111);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,111);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('76.97', '2016-05-22',7,111);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,111);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('48.6', '2016-05-22',9,111);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (112,'Iwona','Wróbel','47022008164');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (112,112,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (112,'numer112', 'probka112','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (112,112,112);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,112);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,112);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.33', '2016-05-22',3,112);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,112);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,112);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,112);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('60.78', '2016-05-22',7,112);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,112);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('102.1', '2016-05-22',9,112);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (113,'Anna','Jasińska','91100307108');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (113,113,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (113,'numer113', 'probka113','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (113,113,113);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,113);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,113);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.81', '2016-05-22',3,113);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,113);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,113);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,113);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('99.75', '2016-05-22',7,113);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,113);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('76.3', '2016-05-22',9,113);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (114,'Zofia','Dąbrowska','14300116132');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (114,114,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (114,'numer114', 'probka114','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (114,114,114);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,114);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,114);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.76', '2016-05-22',3,114);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,114);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,114);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,114);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('40.7', '2016-05-22',7,114);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,114);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('66.1', '2016-05-22',9,114);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (115,'Elżbieta','Jasińska','85092321019');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (115,115,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (115,'numer115', 'probka115','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (115,115,115);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,115);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,115);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.56', '2016-05-22',3,115);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,115);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,115);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,115);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('50.9', '2016-05-22',7,115);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,115);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('56.3', '2016-05-22',9,115);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (116,'Genowefa','Szymczak','98082506363');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (116,116,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (116,'numer116', 'probka116','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (116,116,116);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,116);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,116);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('12.32', '2016-05-22',3,116);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,116);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,116);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,116);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('32.3', '2016-05-22',7,116);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,116);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('69.9', '2016-05-22',9,116);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (117,'Marzena','Grabowska','40111403376');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (117,117,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (117,'numer117', 'probka117','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (117,117,117);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,117);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,117);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.95', '2016-05-22',3,117);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,117);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,117);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,117);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('59.88', '2016-05-22',7,117);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,117);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('59.4', '2016-05-22',9,117);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (118,'Barbara','Sikorska','94080315235');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (118,118,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (118,'numer118', 'probka118','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (118,118,118);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,118);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,118);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.76', '2016-05-22',3,118);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,118);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,118);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,118);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('51.79', '2016-05-22',7,118);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,118);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('55.8', '2016-05-22',9,118);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (119,'Ewelina','Wasilewska','82021611799');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (119,119,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (119,'numer119', 'probka119','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (119,119,119);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,119);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,119);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.3', '2016-05-22',3,119);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,119);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',5,119);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,119);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('84.2', '2016-05-22',7,119);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,119);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('93.3', '2016-05-22',9,119);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (120,'Bożena','Urbańska','37110216607');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (120,120,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (120,'numer120', 'probka120','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (120,120,120);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,120);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,120);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.88', '2016-05-22',3,120);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,120);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,120);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,120);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('83.3', '2016-05-22',7,120);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,120);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('79', '2016-05-22',9,120);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (121,'Natalia','Malinowska','28031601658');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (121,121,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (121,'numer121', 'probka121','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (121,121,121);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,121);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,121);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.95', '2016-05-22',3,121);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,121);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,121);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,121);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('153.23', '2016-05-22',7,121);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,121);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.6', '2016-05-22',9,121);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (122,'Iwona','Szewczyk','33052214552');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (122,122,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (122,'numer122', 'probka122','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (122,122,122);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,122);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,122);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.94', '2016-05-22',3,122);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,122);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,122);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,122);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('42.19', '2016-05-22',7,122);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,122);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('69.6', '2016-05-22',9,122);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (123,'Katarzyna','Maciejewska','53011808604');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (123,123,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (123,'numer123', 'probka123','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (123,123,123);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,123);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,123);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.97', '2016-05-22',3,123);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,123);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,123);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,123);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('38.9', '2016-05-22',7,123);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,123);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('77.9', '2016-05-22',9,123);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (124,'Sylwia','Zakrzewska','86112123958');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (124,124,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (124,'numer124', 'probka124','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (124,124,124);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,124);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,124);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.47', '2016-05-22',3,124);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,124);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,124);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,124);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('66.78', '2016-05-22',7,124);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,124);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('75.8', '2016-05-22',9,124);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (125,'Grażyna','Kowalczyk','38121120161');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (125,125,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (125,'numer125', 'probka125','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (125,125,125);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,125);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,125);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.13', '2016-05-22',3,125);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,125);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,125);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,125);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('34.1', '2016-05-22',7,125);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,125);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('80.1', '2016-05-22',9,125);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (126,'Jadwiga','Mazurek','79062311111');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (126,126,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (126,'numer126', 'probka126','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (126,126,126);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,126);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,126);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.32', '2016-05-22',3,126);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,126);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,126);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,126);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('55.08', '2016-05-22',7,126);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,126);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('59.5', '2016-05-22',9,126);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (127,'Halina','Ostrowska','65020124329');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (127,127,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (127,'numer127', 'probka127','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (127,127,127);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,127);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,127);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.76', '2016-05-22',3,127);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,127);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,127);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,127);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('38.3', '2016-05-22',7,127);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,127);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('88', '2016-05-22',9,127);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (128,'Iwona','Zalewska','08272003499');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (128,128,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (128,'numer128', 'probka128','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (128,128,128);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,128);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,128);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.6', '2016-05-22',3,128);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,128);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,128);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,128);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('106.7', '2016-05-22',7,128);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,128);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('67', '2016-05-22',9,128);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (129,'Marianna','Pawlak','12222919851');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (129,129,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (129,'numer129', 'probka129','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (129,129,129);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,129);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,129);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.36', '2016-05-22',3,129);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,129);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,129);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,129);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('17.9', '2016-05-22',7,129);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,129);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('68.4', '2016-05-22',9,129);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (130,'Jadwiga','Kucharska','50061604105');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (130,130,1,1);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (130,'numer130', 'probka130','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (130,130,130);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,130);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,130);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.96', '2016-05-22',3,130);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,130);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,130);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,130);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('58.4', '2016-05-22',7,130);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,130);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('74.2', '2016-05-22',9,130);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (131,'Edward','Walczak','97010715893');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (131,131,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (131,'numer131', 'probka131','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (131,131,131);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,131);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,131);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('7.3', '2016-05-22',3,131);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,131);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,131);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,131);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('261.5', '2016-05-22',7,131);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,131);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('98.8', '2016-05-22',9,131);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (132,'Andrzej','Michalak','90121608616');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (132,132,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (132,'numer132', 'probka132','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (132,132,132);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,132);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,132);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.56', '2016-05-22',3,132);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,132);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,132);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,132);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('51.2', '2016-05-22',7,132);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,132);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('48.7', '2016-05-22',9,132);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (133,'Jakub','Bąk','82011005278');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (133,133,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (133,'numer133', 'probka133','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (133,133,133);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,133);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,133);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.71', '2016-05-22',3,133);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,133);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,133);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,133);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('38', '2016-05-22',7,133);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,133);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('51.8', '2016-05-22',9,133);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (134,'Mateusz','Głowacki','64073018250');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (134,134,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (134,'numer134', 'probka134','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (134,134,134);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,134);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,134);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.96', '2016-05-22',3,134);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,134);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,134);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,134);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('45.5', '2016-05-22',7,134);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,134);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('78.9', '2016-05-22',9,134);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (135,'Paweł','Jankowski','86060408051');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (135,135,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (135,'numer135', 'probka135','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (135,135,135);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,135);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,135);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.74', '2016-05-22',3,135);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,135);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,135);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,135);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('56.9', '2016-05-22',7,135);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,135);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('80.8', '2016-05-22',9,135);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (136,'Dariusz','Chmielewski','48111022492');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (136,136,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (136,'numer136', 'probka136','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (136,136,136);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,136);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,136);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.59', '2016-05-22',3,136);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,136);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,136);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,136);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('26.9', '2016-05-22',7,136);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,136);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('86.5', '2016-05-22',9,136);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (137,'Mieczysław','Zalewski','43092009133');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (137,137,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (137,'numer137', 'probka137','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (137,137,137);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,137);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,137);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.37', '2016-05-22',3,137);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,137);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,137);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,137);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('40.1', '2016-05-22',7,137);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,137);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('111', '2016-05-22',9,137);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (138,'Maciej','Michalski','42061515732');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (138,138,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (138,'numer138', 'probka138','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (138,138,138);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',1,138);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',2,138);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.46', '2016-05-22',3,138);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',4,138);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,138);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',6,138);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.28', '2016-05-22',7,138);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('', '2016-05-22',8,138);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('74.9', '2016-05-22',9,138);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (139,'Jan','Krawczyk','34080401576');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (139,139,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (139,'numer139', 'probka139','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (139,139,139);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,139);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,139);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.08', '2016-05-22',3,139);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,139);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,139);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,139);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('52.99', '2016-05-22',7,139);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,139);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('61.5', '2016-05-22',9,139);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (140,'Henryk','Zieliński','20080406192');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (140,140,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (140,'numer140', 'probka140','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (140,140,140);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,140);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,140);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('13.5', '2016-05-22',3,140);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,140);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,140);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,140);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('53.88', '2016-05-22',7,140);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',8,140);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('101.2', '2016-05-22',9,140);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (141,'Krzysztof','Kalinowski','81042403217');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (141,141,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (141,'numer141', 'probka141','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (141,141,141);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,141);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,141);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.9', '2016-05-22',3,141);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,141);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,141);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,141);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('25.94', '2016-05-22',7,141);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,141);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('112.3', '2016-05-22',9,141);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (142,'Andrzej','Szulc','60122621839');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (142,142,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (142,'numer142', 'probka142','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (142,142,142);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,142);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,142);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.44', '2016-05-22',3,142);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,142);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,142);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,142);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('109.92', '2016-05-22',7,142);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,142);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('71.5', '2016-05-22',9,142);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (143,'Sławomir','Duda','01212713151');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (143,143,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (143,'numer143', 'probka143','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (143,143,143);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,143);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,143);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.88', '2016-05-22',3,143);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,143);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,143);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,143);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('64.08', '2016-05-22',7,143);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,143);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('87.7', '2016-05-22',9,143);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (144,'Marian','Zalewski','71011014656');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (144,144,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (144,'numer144', 'probka144','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (144,144,144);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,144);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,144);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.54', '2016-05-22',3,144);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,144);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,144);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,144);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('52.09', '2016-05-22',7,144);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,144);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('83.4', '2016-05-22',9,144);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (145,'Waldemar','Zakrzewski','51022506652');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (145,145,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (145,'numer145', 'probka145','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (145,145,145);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,145);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,145);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.57', '2016-05-22',3,145);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,145);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,145);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,145);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('58.98', '2016-05-22',7,145);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,145);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('108.6', '2016-05-22',9,145);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (146,'Grzegorz','Rutkowski','42021421778');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (146,146,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (146,'numer146', 'probka146','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (146,146,146);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,146);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,146);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.44', '2016-05-22',3,146);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,146);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,146);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,146);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('22.06', '2016-05-22',7,146);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,146);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('81.3', '2016-05-22',9,146);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (147,'Mieczysław','Woźniak','35071517577');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (147,147,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (147,'numer147', 'probka147','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (147,147,147);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,147);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,147);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.2', '2016-05-22',3,147);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,147);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,147);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,147);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('51.19', '2016-05-22',7,147);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,147);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('84.9', '2016-05-22',9,147);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (148,'Grzegorz','Duda','13231813055');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (148,148,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (148,'numer148', 'probka148','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (148,148,148);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,148);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,148);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.8', '2016-05-22',3,148);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,148);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,148);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,148);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('42.49', '2016-05-22',7,148);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,148);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('79.7', '2016-05-22',9,148);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (149,'Marian','Piotrowski','63081311892');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (149,149,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (149,'numer149', 'probka149','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (149,149,149);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,149);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,149);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.5', '2016-05-22',3,149);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,149);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,149);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,149);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('31.7', '2016-05-22',7,149);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,149);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('67.1', '2016-05-22',9,149);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (150,'Kamil','Wiśniewski','89082221330');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (150,150,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (150,'numer150', 'probka150','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (150,150,150);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,150);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,150);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.22', '2016-05-22',3,150);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,150);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,150);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,150);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('30.78', '2016-05-22',7,150);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,150);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('51.6', '2016-05-22',9,150);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (151,'Damian','Pawlak','24010800317');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (151,151,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (151,'numer151', 'probka151','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (151,151,151);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',1,151);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',2,151);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('8.51', '2016-05-22',3,151);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,151);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,151);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,151);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('26.26', '2016-05-22',7,151);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,151);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('74.7', '2016-05-22',9,151);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (152,'Leszek','Rutkowski','47100424174');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (152,152,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (152,'numer152', 'probka152','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (152,152,152);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,152);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,152);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.45', '2016-05-22',3,152);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,152);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,152);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,152);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('46.99', '2016-05-22',7,152);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,152);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('79.7', '2016-05-22',9,152);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (153,'Grzegorz','Szymański','03211815612');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (153,153,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (153,'numer153', 'probka153','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (153,153,153);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,153);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,153);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.11', '2016-05-22',3,153);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,153);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,153);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,153);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('48.79', '2016-05-22',7,153);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,153);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('62.2', '2016-05-22',9,153);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (154,'Dawid','Kalinowski','58100200152');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (154,154,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (154,'numer154', 'probka154','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (154,154,154);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,154);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,154);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.59', '2016-05-22',3,154);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,154);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,154);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,154);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('62.58', '2016-05-22',7,154);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,154);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('58.4', '2016-05-22',9,154);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (155,'Marek','Majewski','74111711977');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (155,155,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (155,'numer155', 'probka155','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (155,155,155);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,155);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,155);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.69', '2016-05-22',3,155);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,155);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,155);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,155);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('102.81', '2016-05-22',7,155);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,155);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('86.2', '2016-05-22',9,155);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (156,'Przemysław','Włodarczyk','32043001898');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (156,156,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (156,'numer156', 'probka156','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (156,156,156);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,156);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,156);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.02', '2016-05-22',3,156);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,156);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,156);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,156);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('47.29', '2016-05-22',7,156);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,156);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('54.3', '2016-05-22',9,156);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (157,'Maciej','Wysocki','07261703736');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (157,157,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (157,'numer157', 'probka157','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (157,157,157);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,157);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,157);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.64', '2016-05-22',3,157);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,157);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,157);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,157);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('43.39', '2016-05-22',7,157);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,157);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('77.9', '2016-05-22',9,157);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (158,'Mariusz','Zalewski','98013009370');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (158,158,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (158,'numer158', 'probka158','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (158,158,158);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,158);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,158);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.87', '2016-05-22',3,158);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,158);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,158);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,158);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('40.39', '2016-05-22',7,158);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,158);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('67.4', '2016-05-22',9,158);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (159,'Ryszard','Andrzejewski','59110213194');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (159,159,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (159,'numer159', 'probka159','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (159,159,159);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,159);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,159);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.41', '2016-05-22',3,159);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,159);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,159);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,159);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('37.4', '2016-05-22',7,159);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,159);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('80.8', '2016-05-22',9,159);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (160,'Mieczysław','Pietrzak','99100120079');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (160,160,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (160,'numer160', 'probka160','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (160,160,160);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,160);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,160);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('11.13', '2016-05-22',3,160);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,160);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,160);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,160);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('97.35', '2016-05-22',7,160);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,160);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('74.6', '2016-05-22',9,160);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (161,'Łukasz','Brzeziński','40020620778');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (161,161,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (161,'numer161', 'probka161','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (161,161,161);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,161);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,161);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.43', '2016-05-22',3,161);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,161);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,161);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,161);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('43.09', '2016-05-22',7,161);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,161);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('60.6', '2016-05-22',9,161);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (162,'Dariusz','Sawicki','98102325215');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (162,162,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (162,'numer162', 'probka162','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (162,162,162);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,162);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,162);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.3', '2016-05-22',3,162);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,162);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,162);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,162);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('44.29', '2016-05-22',7,162);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,162);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('86.5', '2016-05-22',9,162);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (163,'Jarosław','Wiśniewski','57010708019');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (163,163,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (163,'numer163', 'probka163','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (163,163,163);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',1,163);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CC', '2016-05-22',2,163);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.64', '2016-05-22',3,163);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,163);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,163);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,163);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('46.69', '2016-05-22',7,163);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',8,163);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('99.2', '2016-05-22',9,163);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (164,'Mateusz','Przybylski','06241615155');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (164,164,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (164,'numer164', 'probka164','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (164,164,164);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,164);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,164);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.39', '2016-05-22',3,164);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,164);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,164);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AA', '2016-05-22',6,164);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('63.48', '2016-05-22',7,164);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,164);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('57.7', '2016-05-22',9,164);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (165,'Michał','Makowski','81031315659');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (165,165,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (165,'numer165', 'probka165','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (165,165,165);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,165);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,165);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.17', '2016-05-22',3,165);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,165);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,165);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,165);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('19.8', '2016-05-22',7,165);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,165);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('118.6', '2016-05-22',9,165);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (166,'Sławomir','Lewandowski','02261711114');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (166,166,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (166,'numer166', 'probka166','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (166,166,166);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,166);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,166);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.17', '2016-05-22',3,166);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,166);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,166);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,166);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('35.6', '2016-05-22',7,166);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,166);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('58.2', '2016-05-22',9,166);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (167,'Marcin','Borkowski','12301100411');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (167,167,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (167,'numer167', 'probka167','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (167,167,167);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,167);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,167);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.46', '2016-05-22',3,167);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,167);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,167);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,167);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('52.09', '2016-05-22',7,167);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,167);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('71.8', '2016-05-22',9,167);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (168,'Zdzisław','Kamiński','74100316110');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (168,168,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (168,'numer168', 'probka168','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (168,168,168);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,168);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,168);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('10.72', '2016-05-22',3,168);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',4,168);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('TT', '2016-05-22',5,168);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',6,168);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('66.48', '2016-05-22',7,168);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,168);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('94.7', '2016-05-22',9,168);
SET IDENTITY_INSERT [dbo].[PACJENT] ON
INSERT INTO [dbo].[PACJENT]([id_pacjent],[imie],[nazwisko],[pesel]) VALUES (169,'Mateusz','Michalak','14271111291');
SET IDENTITY_INSERT [dbo].[PACJENT] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] ON
INSERT INTO [dbo].[PACJ_PROJ]([id_pacj_proj],[id_pacjent],[id_projektu],[id_grupa_proj]) VALUES (169,169,1,2);
SET IDENTITY_INSERT [dbo].[PACJ_PROJ] OFF
SET IDENTITY_INSERT [dbo].[PROBKA] ON
INSERT INTO [dbo].[PROBKA]([id_probki],[numer],[nazwa],[data],[id_slownika_statusow],[id_projektu],[id_slownika_materialow]) VALUES (169,'numer169', 'probka169','2016-05-22', 1, 1, 1);
SET IDENTITY_INSERT [dbo].[PROBKA] OFF
SET IDENTITY_INSERT [dbo].[PACJ_PROB] ON
INSERT INTO [dbo].[PACJ_PROB] ([id_pacj_prob],[id_probki],[id_pacjent])VALUES (169,169,169);
SET IDENTITY_INSERT [dbo].[PACJ_PROB] OFF
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',1,169);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('CT', '2016-05-22',2,169);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('9.4', '2016-05-22',3,169);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',4,169);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GT', '2016-05-22',5,169);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('GG', '2016-05-22',6,169);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('28.52', '2016-05-22',7,169);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('AG', '2016-05-22',8,169);
INSERT INTO [dbo].[WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('62.7', '2016-05-22',9,169);
