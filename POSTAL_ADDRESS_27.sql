CREATE TABLE POSTAL_ADDRESS_27 (
    ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY, -- KHÓA CHÍNH
    ADDRESS_TYPE_NUMBER NUMBER, -- KHÓA NGOẠI
    CARE_OF VARCHAR2(140),
    DEPARTMENT VARCHAR2(70),
    SUB_DEPARTMENT VARCHAR2(70),
    STREET_NAME VARCHAR2(140),
    BUILDING_NUMBER VARCHAR2(16),
    BUILDING_NAME VARCHAR2(140),
    BUILDING_FLOOR VARCHAR2(70),
    UNIT_NUMBER VARCHAR2(16),
    POST_BOX VARCHAR2(16),
    ROOM VARCHAR2(70),
    POST_CODE VARCHAR2(16),
    TOWN_NAME VARCHAR2(140),
    TOWN_LOCATION_NAME VARCHAR2(140),
    DISTRICT_NAME VARCHAR2(140),
    COUNTRY_SUB_DIVISION VARCHAR2(35),
    COUNTRY_CODE CHAR(2), -- KHÓA NGOẠI
    ADDRESS_LINE VARCHAR2(70)
);

ALTER TABLE POSTAL_ADDRESS_27 ADD (
    CONSTRAINT PK_POSTAL_ADDRESS_27 PRIMARY KEY (ID),
    CONSTRAINT FK_POSTAL_ADDRESS_27_ADDRESS_TYPE_3_CHOICE FOREIGN KEY (ADDRESS_TYPE_NUMBER) REFERENCES ADDRESS_TYPE_3_CHOICE (ID),
    CONSTRAINT FK_POSTAL_ADDRESS_27_COUNTRIES FOREIGN KEY (COUNTRY_CODE) REFERENCES COUNTRIES (COUNTRY_CODE_A2)
);