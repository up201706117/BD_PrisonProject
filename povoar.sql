
PRAGMA foreign_keys = on;

INSERT INTO STAFF (staffId, staffName, birthDate) values (001, 'Stephan Ayscough' ,'13.08.1943');
INSERT INTO STAFF (staffId, staffName, birthDate) values (002, 'Thane Letham', '27.12.1914');
INSERT INTO STAFF (staffId, staffName, birthDate) values (003, 'Tiphanie Boome', '21.03.1972');
INSERT INTO STAFF (staffId, staffName, birthDate) values (004, 'Corie Backshill', '25.06.1958');
INSERT INTO STAFF (staffId, staffName, birthDate) values (005, 'Bran Howling', '21.05.1910');
INSERT INTO STAFF (staffId, staffName, birthDate) values (006, 'Kat Treat', '24.12.1927');
INSERT INTO STAFF (staffId, staffName, birthDate) values (007, 'Lenee Trundell', '24.10.1914');
INSERT INTO STAFF (staffId, staffName, birthDate) values (008, 'Karia Corzon', '01.04.1967');
INSERT INTO STAFF (staffId, staffName, birthDate) values (009, 'Celesta Jozwicki', '25.03.1976');
INSERT INTO STAFF (staffId, staffName, birthDate) values (010, 'Ravid Lightewood', '06.04.1918');

INSERT INTO DOCTOR (doctorId, licenseNumber, specialty) values (001, '65-626-5153', 'neurology');
INSERT INTO DOCTOR (doctorId, licenseNumber, specialty) values (002, '35-745-9388', 'psychiatry');
INSERT INTO DOCTOR (doctorId, licenseNumber, specialty) values (003, '36-754-9470', 'surgery');

INSERT INTO PRISON_BLOCK (blockId, supervisor) values (01, NULL);
INSERT INTO PRISON_BLOCK (blockId, supervisor) values (02, NULL);

INSERT INTO CORRIDOR (corridorId, layout, blockId) values (01, 120, 01);
INSERT INTO CORRIDOR (corridorId, layout, blockId) values (02, 103, 01);
INSERT INTO CORRIDOR (corridorId, layout, blockId) values (03, 202, 02);
INSERT INTO CORRIDOR (corridorId, layout, blockId) values (04, 101, 02);


INSERT INTO CELL (cellNumber, cellType, corridorId) values (001, 'solitary',01);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (002, 'solitary',01);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (003, 'normal',01);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (004, 'normal',02);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (005, 'normal',02);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (006, 'normal',02);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (007, 'normal',03);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (008, 'normal',03);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (009, 'normal',03);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (010, 'normal',03);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (011, 'normal',04);
INSERT INTO CELL (cellNumber, cellType, corridorId) values (012, 'normal',04);

INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (001, 'Korie Conechie', '21.01.1986', 01);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (002, 'Roley Gages', '05.03.1956', 002);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (003, 'Delbert Scates', '25.05.1947', 002);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (004, 'Morlee Treske', '19.03.1904', 002);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (005, 'Justinian Clunan', '30.12.1988', 002);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (006, 'Ferrell Calvey', '31.05.1987', 003);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (007, 'Emlynne Filkin', '21.07.1924', 003);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (008, 'Hussein Jewel', '03.07.1996', 003);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (009, 'Karalynn Larby', '17.08.1959', 003);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (010, 'Olympia Shutler','06.06.1950', 004);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (011, 'Willi Risebrow', '05.07.1911', 004);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (012, 'Gracia Torald', '08.04.1904', 004);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (013, 'Jermayne Stave', '03.09.1950', 004);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (014, 'Linn Galletley', '07.09.1932', 004);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (015, 'Giles Pizzie', '28.12.1957', 005);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (016, 'Fianna Seston', '30.03.1979', 005);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (017, 'Georas Duding', '29.07.1961', 005);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (018, 'Dal Crollman', '23.03.1943', 005);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (019, 'Glynis Spooner', '19.01.1999', 006);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (020, 'Pierre Honeywood', '15.04.1947', 006);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (021, 'Zane Anthon', '23.03.1913', 006);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (022, 'Gabbie Janning', '11.04.1916', 006);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (023, 'Eadith Cockill', '28.02.1942', 007);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (024, 'Glyn Nehl', '17.02.1990', 007);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (025, 'Felita Trill', '06.08.1913', 007);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (026, 'Sosanna Eates', '13.09.1940', 007);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (027, 'Arleyne Yashaev', '27.09.1979', 008);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (028, 'Holmes Beevers', '17.02.1966', 008);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (029, 'Frederique Pudding', '16.08.1900', 009);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (030, 'Staffard Belly', '01.07.1922', 009);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (031, 'Parry Anglish', '14.10.1958', 009);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (032, 'Boothe Buchett', '26.10.1917', 009);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (033, 'Amelia Flement', '12.06.1951', 010);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (034, 'Jody Tye', '11.05.1947', 010);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (035, 'Orson Nardi', '23.06.1949', 010);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (036, 'Alvira Basilotta', '01.03.1957', 010);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (037, 'Melissa Mackro', '30.12.1921', 011);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (038, 'Rosaleen Currom', '15.01.1957', 011);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (039, 'Mora Fatkin', '25.11.2001', 011);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (040, 'Durand Dowthwaite', '20.10.1982', 011);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (041, 'Sorcha Gwinnel', '05.10.1910', 012);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (042, 'Lem Oade', '10.05.1930', 012);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (043, 'Garald Mapholm', '31.10.1988', 012);
INSERT INTO INMATE (inmateId, inmateName, birthDate, inCell) values (044, 'Marna Sextie', '19.05.1958', 012);

INSERT INTO VISIT (visitorId, relationToInmate) values (001,'mother');
INSERT INTO VISIT (visitorId, relationToInmate) values (002,'sister');
INSERT INTO VISIT (visitorId, relationToInmate) values (003,'spouse');


INSERT INTO ASSIGNED_DOCTOR (doctorId, blockId) values (001,002);
INSERT INTO ASSIGNED_DOCTOR (doctorId, blockId) values (002,01);
INSERT INTO ASSIGNED_DOCTOR (doctorId, blockId) values (003,002);

INSERT INTO GUARD (guardId, startingDate, assignedTo) values (004, '08.08.2005',01);
INSERT INTO GUARD (guardId, startingDate, assignedTo) values (005, '02.05.2012',01);
INSERT INTO GUARD (guardId, startingDate, assignedTo) values (006, '31.08.2011',04);
INSERT INTO GUARD (guardId, startingDate, assignedTo) values (007, '01.09.2017',02);
INSERT INTO GUARD (guardId, startingDate, assignedTo) values (008, '07.11.2006',02);
INSERT INTO GUARD (guardId, startingDate, assignedTo) values (009, '24.10.2003',03);
INSERT INTO GUARD (guardId, startingDate, assignedTo) values (010, '06.09.2012',03);

INSERT INTO CRIME(crimeId, crimeDescription) values (01, '1st degree murder');
INSERT INTO CRIME(crimeId, crimeDescription) values (02, '2nd degree murder');
INSERT INTO CRIME(crimeId, crimeDescription) values (03, '3rd degree murder');
INSERT INTO CRIME(crimeId, crimeDescription) values (04, 'carjaking');
INSERT INTO CRIME(crimeId, crimeDescription) values (05, 'burglary');
INSERT INTO CRIME(crimeId, crimeDescription) values (06, 'bank robbery');
INSERT INTO CRIME(crimeId, crimeDescription) values (07, 'theft');
INSERT INTO CRIME(crimeId, crimeDescription) values (08, 'tax evasion');

INSERT INTO VISITS(visitorId, inmateId, visitDate) values (001, 001, '08.10.2005');
INSERT INTO VISITS(visitorId, inmateId, visitDate) values (002, 002, '04.08.2020');
INSERT INTO VISITS(visitorId, inmateId, visitDate) values (003, 003, '08.03.2012');
INSERT INTO VISITS(visitorId, inmateId, visitDate) values (003, 003, '08.08.2014');

INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (001, 01, '14.01.2004', 80);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (002, 01, '14.07.2005', 230);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (003, 02, '14.08.2011', 39);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (004, 02, '16.11.2013', 35);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (005, 02, '27.09.2014', 20);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (006, 02, '26.04.2014', 23);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (007, 02, '26.09.2002', 33);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (008, 02, '06.11.2012', 31);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (009, 03, '18.08.2018', 14);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (010, 03, '14.06.2010', 11);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (011, 03, '29.08.2005', 17);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (012, 03, '25.01.2020', 35);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (013, 03, '25.12.2009', 12);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (014, 03, '12.07.2018', 22);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (015, 04, '22.11.2009', 08);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (016, 04, '31.10.2021', 13);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (017, 04, '22.09.2001', 34);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (018, 04, '07.04.2005', 32);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (019, 04, '13.08.2015', 27);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (020, 04, '05.12.2008', 15);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (021, 05, '10.01.2019', 38);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (022, 05, '03.09.2018', 11);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (023, 05, '07.03.2007', 02);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (024, 05, '20.08.2015', 05);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (025, 05, '18.11.2007', 09);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (026, 05, '23.02.2008', 10);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (027, 06, '03.06.2002', 15);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (028, 06, '26.01.2011', 01);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (029, 06, '16.02.2021', 33);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (030, 06, '02.06.2006', 32);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (031, 06, '11.03.2005', 14);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (032, 06, '29.04.2014', 15);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (033, 07, '27.09.2014', 29);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (034, 07, '08.11.2006', 25);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (035, 07, '29.09.2005', 13);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (036, 07, '04.06.2008', 22);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (037, 07, '27.10.2013', 09);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (038, 07, '02.08.2020', 19);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (039, 02, '09.02.2007', 07);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (040, 03, '07.07.2018', 05);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (041, 04, '06.11.2013', 34);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (042, 05, '13.08.2021', 24);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (043, 06, '20.10.2013', 01);
INSERT INTO SENTENCE(inmateId, crimeId, startingDate, duration) values (044, 07, '23.09.2003', 15);

INSERT INTO TEAM_SUPERVISOR(supervisor, supervised) values (004, 005);
INSERT INTO TEAM_SUPERVISOR(supervisor, supervised) values (004, 005);
INSERT INTO TEAM_SUPERVISOR(supervisor, supervised) values (004, 007);
INSERT INTO TEAM_SUPERVISOR(supervisor, supervised) values (004, 008);
INSERT INTO TEAM_SUPERVISOR(supervisor, supervised) values (009, 010);
INSERT INTO TEAM_SUPERVISOR(supervisor, supervised) values (004, 006);

INSERT INTO MEDICAL_APPOINTMENT(doctorId, inmateId, medicalAppointmentDate, reason) values (001, 014, '05.08.2019',"Broken leg");
INSERT INTO MEDICAL_APPOINTMENT(doctorId, inmateId, medicalAppointmentDate, reason) values (001, 030, '02.03.2008',"Headache");
INSERT INTO MEDICAL_APPOINTMENT(doctorId, inmateId, medicalAppointmentDate, reason) values (002, 001, '05.12.2001',"Puncture Wound");
INSERT INTO MEDICAL_APPOINTMENT(doctorId, inmateId, medicalAppointmentDate, reason) values (003, 044, '21.06.2016',"Blunt Trauma");
INSERT INTO MEDICAL_APPOINTMENT(doctorId, inmateId, medicalAppointmentDate, reason) values (003, 033, '06.06.2002',"Passed Out");
INSERT INTO MEDICAL_APPOINTMENT(doctorId, inmateId, medicalAppointmentDate, reason) values (004, 004, '29.09.2015',"Shoulder Pain");

UPDATE PRISON_BLOCK SET supervisor = 004 WHERE blockId = 001;
UPDATE PRISON_BLOCK SET supervisor = 009 WHERE blockId = 002;