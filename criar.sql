DROP TABLE IF EXISTS VISIT;
DROP TABLE IF EXISTS ASSIGNED_DOCTOR;
DROP TABLE IF EXISTS MEDICAL_APPOINTMENT;
DROP TABLE IF EXISTS SENTENCE;
CREATE TABLE VISIT(

    visitDate DATE,
    visitorId INTEGER,
    relationToInmate TEXT,
    PRIMARY KEY (visitDate,visitorId)

);

CREATE TABLE ASSIGNED_DOCTOR(
    staffID INTEGER,
    blockID INTEGER,

    FOREIGN KEY (staffId) REFERENCES DOCTOR(staffId),    
    FOREIGN KEY (blockId) REFERENCES PRISON_BLOCK(blockId)
   
);

CREATE TABLE MEDICAL_APPOINTMENT(
    appointmentDate DATE,
    reason TEXT,
    staffID INTEGER,
    inmateId INTEGER,
    FOREIGN KEY (staffId) REFERENCES DOCTOR(staffId),
    FOREIGN KEY (inmateId) REFERENCES INMATE(inmateId)
);


CREATE TABLE SENTENCE(
    inmateId INTEGER,
    crimeId INTEGER,
    
    duration INTEGER,
    startingDate DATE,
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
CREATE TABLE STAFF(
    staffId INTEGER PRIMARY KEY NOT NULL,
    nome TEXT,
    birthDate DATE,
    age AS CURDATE() - birthDate,
    
)