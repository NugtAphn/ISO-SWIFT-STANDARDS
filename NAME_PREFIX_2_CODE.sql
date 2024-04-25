CREATE TABLE NAME_PREFIX_2_CODE (
    CODE_SET CHAR(4) CHECK (LENGTH(CODE_SET) = 4),
    CODE_NAME VARCHAR2(20) NOT NULL,
    DEFINITION VARCHAR2(100) NOT NULL,
    CONSTRAINT PK_NAME_PREFIX_2_CODE PRIMARY KEY (CODE_SET)
);

INSERT INTO NAME_PREFIX_2_CODE (CODE_SET, CODE_NAME, DEFINITION) VALUES ('DOCT', 'Doctor', 'Title of the person is Doctor or Dr');
INSERT INTO NAME_PREFIX_2_CODE (CODE_SET, CODE_NAME, DEFINITION) VALUES ('MADM', 'Madam', 'Title of the person is Madam');
INSERT INTO NAME_PREFIX_2_CODE (CODE_SET, CODE_NAME, DEFINITION) VALUES ('MISS', 'Miss', 'Title of the person is Miss');
INSERT INTO NAME_PREFIX_2_CODE (CODE_SET, CODE_NAME, DEFINITION) VALUES ('MIST', 'Mister', 'Title of the person is Mister or Mr');
INSERT INTO NAME_PREFIX_2_CODE (CODE_SET, CODE_NAME, DEFINITION) VALUES ('MIKS', 'GenderNeutral', 'Title of the person is gender neutral (Mx)');