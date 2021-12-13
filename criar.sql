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
    staffId INTEGER PRIMARY KEY,
    staffName TEXT,
    birthDate DATE
    --age AS CURDATE() - birthDate
    --CHECK (age>=18)
    
);
CREATE TABLE GUARD(
    guardId INTEGER PRIMARY KEY,
    startingDate DATE NOT NULL CHECK (startingDate > '09.11.2001'),
    --experience INTEGER,
    assignedTo INTEGER,
    FOREIGN KEY (guardId) REFERENCES STAFF(staffId),
    FOREIGN KEY (assignedTo) REFERENCES CORRIDOR(corridorId)
);
CREATE TABLE DOCTOR(
    doctorId INTEGER PRIMARY KEY,
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
    corridorId INTEGER PRIMARY KEY,
    --numOfCells INTEGER, --DERIVES FROM LAYOUT
    layout INTEGER NOT NULL,
    blockId INTEGER,
    FOREIGN KEY (blockId) REFERENCES PRISON_BLOCK(blockID)
);
CREATE TABLE CELL(
    cellNumber INTEGER PRIMARY KEY,
    cellType INTEGER NOT NULL,
    --capacity INTEGER NOT NULL, --DERIVES FROM CELLTYPE
    corridorId INTEGER,
    FOREIGN KEY (corridorId) REFERENCES CORRIDOR(corridorId)
);
CREATE TABLE INMATE(
    inmateId INTEGER PRIMARY KEY,
    inmateName TEXT NOT NULL,
    birthDate DATE NOT NULL,
    --age INTEGER AS CURDATE()-birthDate,
    --CHECK (age>=18),
    inCell INTEGER,
    sizePrison INTEGER CHECK (sizePrison < 500),
    FOREIGN KEY (inCell) REFERENCES CELL(cellNumber)
    
);
CREATE TABLE VISIT(

    visitorId INTEGER PRIMARY KEY,
    relationToInmate TEXT

);
CREATE TABLE ASSIGNED_DOCTOR(
    doctorID INTEGER,
    blockID INTEGER,

    FOREIGN KEY (doctorId) REFERENCES DOCTOR(doctorId),    
    FOREIGN KEY (blockId) REFERENCES PRISON_BLOCK(blockId)
   
);
CREATE TABLE MEDICAL_APPOINTMENT(
    appointmentDate DATE NOT NULL,
    reason TEXT,
    doctorId INTEGER,
    inmateId INTEGER PRIMARY KEY,

    --CHECK (appointmentDate > SENTENCE.startingDate)

    FOREIGN KEY (doctorId) REFERENCES DOCTOR(doctorId),
    FOREIGN KEY (inmateId) REFERENCES INMATE(inmateId)
);
CREATE TABLE SENTENCE(
    inmateId INTEGER,
    crimeId INTEGER,
    
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
    supervised INTEGER PRIMARY KEY,
    FOREIGN KEY (supervised) REFERENCES GUARD (guardId)
);
CREATE TABLE VISITS(
    visitorId INTEGER NOT NULL,
    visitDate DATE NOT NULL,    
    inmateId INTEGER NOT NULL,

    PRIMARY KEY (visitorId,visitDate),
    FOREIGN KEY (visitorId) REFERENCES VISIT(visitorId),
    FOREIGN KEY (inmateId) REFERENCES INMATE(inmateId)

    -- TODO implement visitor/inmate limit = 1
 
);
CREATE TABLE CRIME(
    crimeId INTEGER PRIMARY KEY,
    crimeDescription TEXT,
    CHECK (length(crimeDescription) >= 3 AND length(crimeDescription) <= 180) 
);

