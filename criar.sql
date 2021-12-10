CREATE TABLE VISIT(

    DATE date
    INTEGER visitorId
    TEXT relationToInmate
    PRIMARY KEY (date)
    PRIMARY KEY (visitorId)

)

CREATE TABLE ASSIGNED_DOCTOR (
    FOREIGN KEY (staffID) REFERENCES DOCTOR(staffID)
    
    FOREIGN KEY (blockID) REFERENCES BLOCK(blockID)
   
);

CREATE TABLE MEDICAL_APPOINTMENT (
    DATE date
    TEXT reason
    FOREIGN KEY (staffID) REFERENCES DOCTOR(staffID)
    FOREIGN KEY (inmateId) REFERENCES INMATE(inmateId)
)


CREATE TABLE SENTENCE (

    FOREIGN KEY (inmateId) REFERENCES INMATE(inmateId)
    FOREIGN KEY (crimeId) REFERENCES CRIME(crimeId)
    INTEGER duration AS years
    DATE startingDate
    DATE releaseDate AS startingDate + duration

    INTEGER severity CASE
        WHEN duration<=5 THEN 1
        WHEN duration>5 AND duration<=10 THEN 2
        WHEN duration>10 AND duration<=20 THEN 3
        WHEN duration>20 AND duration<=40 THEN 4
        ELSE 5
    END;

)