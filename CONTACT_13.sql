CREATE TABLE CONTACT_13 (
    ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    CODE_ID CHAR(4) CHECK (LENGTH(CODE_ID) = 4), -- KHÓA NGOẠI : NAME_PREFIX_2_CODE
    CONTACT_NAME VARCHAR2(140),
    PHONE_NUMBER VARCHAR2(33) CHECK (REGEXP_LIKE(PHONE_NUMBER, '^\+\d{1,3}-[\d()+-]{1,30}$')),
    MOBILE_PHONE VARCHAR2(33) CHECK (REGEXP_LIKE(MOBILE_PHONE, '^\+\d{1,3}-[\d()+-]{1,30}$')),
    FAX_NUMBER VARCHAR2(33) CHECK (REGEXP_LIKE(FAX_NUMBER, '^\+\d{1,3}-[\d()+-]{1,30}$')),
    URL_ADDRESS VARCHAR2(2048),
    EMAIL_ADDRESS VARCHAR2(256),
    EMAIL_PURPOSE VARCHAR2(35),
    JOB_TITLE VARCHAR2(35),
    RESPONSIBILITY VARCHAR2(35),
    DEPARTMENT VARCHAR2(70),
    OTHER_ID NUMBER, -- KHÓA NGOẠI : OTHER_CONTACT_1
    PREFERRED_METHOD_ID CHAR(4) CHECK ( LENGTH (PREFERRED_METHOD_ID) = 4) -- KHÓA NGOẠI : PREFERRED_CONTACT_METHOD_2_CODE
);

ALTER TABLE CONTACT_13 ADD (
    CONSTRAINT PK_CONTACT_13 PRIMARY KEY (ID),
    CONSTRAINT FK_CONTACT_13_NAME_PREFIX_2_CODE FOREIGN KEY (CODE_ID) REFERENCES NAME_PREFIX_2_CODE (CODE_SET),
    CONSTRAINT FK_CONTACT_13_PREFERRED_CONTACT_METHOD_2_CODE FOREIGN KEY (PREFERRED_METHOD_ID) REFERENCES PREFERRED_CONTACT_METHOD_2_CODE (CODE_SET),
    CONSTRAINT FK_CONTACT_13_OTHER_CONTACT_1 FOREIGN KEY (OTHER_ID) REFERENCES OTHER_CONTACT_1 (ID)
);