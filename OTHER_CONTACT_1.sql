CREATE TABLE OTHER_CONTACT_1 (
    ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    CHANNEL_TYPE VARCHAR2(4) NOT NULL,
    IDENTIFICATION VARCHAR2(128)
);

ALTER TABLE OTHER_CONTACT_1 ADD CONSTRAINT PK_OTHER_CONTACT_1 PRIMARY KEY (ID);