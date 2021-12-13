PRAGMA foreign_keys = on;

DROP TABLE IF EXISTS VISIT;
DROP TABLE IF EXISTS ASSIGNED_DOCTOR;
DROP TABLE IF EXISTS MEDICAL_APPOINTMENT;
DROP TABLE IF EXISTS SENTENCE;
DROP TABLE IF EXISTS STAFF;
DROP TABLE IF EXISTS GUARD;
DROP TABLE IF EXISTS PRISON_BLOCK;
DROP TABLE IF EXISTS CORRIDOR;
DROP TABLE IF EXISTS CELL;
DROP TABLE IF EXISTS INMATE;
DROP TABLE IF EXISTS TEAM_SUPERVISOR;
DROP TABLE IF EXISTS VISITS;
DROP TABLE IF EXISTS CRIME;
DROP TABLE IF EXISTS DOCTOR;

CREATE TABLE STAFF(
    staffId INTEGER PRIMARY KEY NOT NULL,
    staffName TEXT,
    birthDate DATE
    --age AS CURDATE() - birthDate
    --CHECK (age>=18)
    
);
CREATE TABLE GUARD(
    guardId INTEGER PRIMARY KEY NOT NULL,
    startingDate DATE NOT NULL,
    CHECK (startingDate > '09.11.2001')
    --experience INTEGER,
    assignedTo INTEGER NOT NULL,
    FOREIGN KEY (guardId) REFERENCES STAFF(staffId),
    FOREIGN KEY (assignedTo) REFERENCES CORRIDOR(corridorId)
);
CREATE TABLE DOCTOR(
    doctorId INTEGER PRIMARY KEY NOT NULL,
    licenseNumber INTEGER UNIQUE,
    specialty TEXT,
    FOREIGN KEY (doctorId) REFERENCES STAFF(staffId)
);
CREATE TABLE PRISON_BLOCK(
    blockID INTEGER PRIMARY KEY,
    supervisor INTEGER UNIQUE,
    FOREIGN KEY (supervisor) REFERENCES GUARD(guardId),

    CHECK (supervisor <= 1)
);
CREATE TABLE CORRIDOR(
    corridorId INTEGER PRIMARY KEY NOT NULL,
    --numOfCells INTEGER, --DERIVES FROM LAYOUT
    layout INTEGER NOT NULL,
    blockId INTEGER NOT NULL,
    FOREIGN KEY (blockId) REFERENCES PRISON_BLOCK(blockID)
);
CREATE TABLE CELL(
    cellNumber INTEGER PRIMARY KEY NOT NULL,
    cellType INTEGER NOT NULL,
    --capacity INTEGER NOT NULL, --DERIVES FROM CELLTYPE
    corridorId INTEGER NOT NULL,
    FOREIGN KEY (corridorId) REFERENCES CORRIDOR(corridorId)
);
CREATE TABLE INMATE(
    inmateId INTEGER PRIMARY KEY NOT NULL,
    inmateName TEXT NOT NULL,
    birthDate DATE NOT NULL,
    --age INTEGER AS CURDATE()-birthDate,
    --CHECK (age>=18),
    inCell INTEGER,
    FOREIGN KEY (inCell) REFERENCES CELL(cellNumber)
    sizePrison INTEGER CHECK (sizePrison < 500)
);
CREATE TABLE VISIT(

    visitorId INTEGER NOT NULL,
    relationToInmate TEXT,
    PRIMARY KEY (visitDate,visitorId)

);
CREATE TABLE ASSIGNED_DOCTOR(
    doctorID INTEGER NOT NULL,
    blockID INTEGER NOT NULL,

    FOREIGN KEY (doctorId) REFERENCES DOCTOR(doctorId),    
    FOREIGN KEY (blockId) REFERENCES PRISON_BLOCK(blockId)
   
);
CREATE TABLE MEDICAL_APPOINTMENT(
    appointmentDate DATE NOT NULL,
    reason TEXT,
    doctorId INTEGER NOT NULL,
    inmateId INTEGER PRIMARY KEY NOT NULL,

    --CHECK (appointmentDate > SENTENCE.startingDate)

    FOREIGN KEY (doctorId) REFERENCES DOCTOR(doctorId),
    FOREIGN KEY (inmateId) REFERENCES INMATE(inmateId)
);
CREATE TABLE SENTENCE(
    inmateId INTEGER NOT NULL,
    crimeId INTEGER NOT NULL,
    
    duration INTEGER NOT NULL,
    startingDate DATE NOT NULL,
    --releaseDate AS startingDate + duration DATE,

    FOREIGN KEY (inmateId) REFERENCES INMATE(inmateId),
    FOREIGN KEY (crimeId) REFERENCES CRIME(crimeId)

    /*severity CASE
        WHEN duration<=5 THEN 1
        WHEN duration>5 AND duration<=10 THEN 2
        WHEN duration>10 AND duration<=20 THEN 3
        WHEN duration>20 AND duration<=40 THEN 4
        ELSE 5
    END as INTEGER;
    */
    

);
CREATE TABLE TEAM_SUPERVISOR(
    supervisor INTEGER NOT NULL,
    supervised INTEGER PRIMARY KEY NOT NULL,
    FOREIGN KEY (supervised) REFERENCES GUARD (guardId)
);
CREATE TABLE VISITS(
    visitorId INTEGER NOT NULL,
    visitDate DATE NOT NULL,    
    inmateId INTEGER NOT NULL,

    PRIMARY KEy (visitorId,visitDate),
    FOREIGN KEY (visitorId) REFERENCES VISIT(visitorId),
    FOREIGN KEY (inmateId) REFERENCES INMATE(inmateId)

    -- TODO implement visitor/inmate limit = 1
 
);
CREATE TABLE CRIME(
    crimeId INTEGER PRIMARY KEY NOT NULL,
    crimeDescription TEXT
    CHECK (length(crimeDescription) >= 3 AND length(crimeDescription) <= 180) 
);

