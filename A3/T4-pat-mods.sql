/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T4-pat-mods.sql

--Student ID: 34589821
--Student Name: zijie wang


/* Comments for your marker:




*/

/*(a)*/

ALTER TABLE official
    ADD role VARCHAR2(
        30
    ) DEFAULT 'General';

ALTER TABLE official
    ADD CONSTRAINT chk_role CHECK (
        role IN ( 'General', 'Administrator', 'Head Coach', 'Coach', 'Physician' )
    );

UPDATE official
SET
    role = 'Administrator'
WHERE
    (off_id IN (
        SELECT
            off_cdm
        FROM
            official
    ));

COMMIT;

SELECT
    *
FROM
    official;

DESC OFFICIAL;

/*(b)*/

DROP TABLE complaint CASCADE CONSTRAINT PURGE;

DROP TABLE complaint_category CASCADE CONSTRAINT PURGE;

CREATE TABLE complaint (
    complaint_id NUMBER(4) NOT NULL,
    trip_id NUMBER(4) NOT NULL,
    off_id NUMBER(4) NOT NULL,
    category_id NUMBER(4) NOT NULL,
    complaint_dt DATE NOT NULL,
    detailed_comment VARCHAR2(500),
    valid_flag CHAR(1) DEFAULT 'N' NOT NULL CHECK (valid_flag IN ('Y', 'N'))
);

COMMENT ON COLUMN complaint.complaint_id IS
    'Unique identifier for the complaint';

COMMENT ON COLUMN complaint.trip_id IS
    'Identifier for the trip related to the complaint';

COMMENT ON COLUMN complaint.off_id IS
    'Identifier for the official lodging the complaint';

COMMENT ON COLUMN complaint.category_id IS
    'Identifier for the complaint category, referencing the category table';

COMMENT ON COLUMN complaint.complaint_dt IS
    'Date and time when the complaint was lodged';

COMMENT ON COLUMN complaint.detailed_comment IS
    'Additional detailed comments provided by the official about the complaint';

COMMENT ON COLUMN complaint.valid_flag IS
    'Indicates if the complaint is valid (Y for Yes, N for No)';

ALTER TABLE complaint
    ADD CONSTRAINT complaint_pk PRIMARY KEY (
        complaint_id
    );

ALTER TABLE complaint
    ADD CONSTRAINT complaint_uq UNIQUE (
        trip_id,
        off_id,
        category_id,
        complaint_dt
    );

CREATE TABLE complaint_category (
    category_id NUMBER(4) NOT NULL,
    category_name VARCHAR(35) NOT NULL,
    demerit_point NUMBER(2) NOT NULL
);

COMMENT ON COLUMN complaint_category.category_id IS
    'Unique identifier for the complaint category';

COMMENT ON COLUMN complaint_category.category_name IS
    'Name of the complaint category';

COMMENT ON COLUMN complaint_category.demerit_point IS
    'Demerit points assigned for this category, representing the extent of the complaint';

ALTER TABLE complaint_category
    ADD CONSTRAINT complaint_category_pk PRIMARY KEY (
        category_id
    );

ALTER TABLE complaint_category
    ADD CONSTRAINT complaint_category_uq UNIQUE (
        category_name,
        demerit_point
    );

ALTER TABLE complaint
    ADD CONSTRAINT trip_complaint_fk FOREIGN KEY (
        trip_id
    )
        REFERENCES trip (
            trip_id
        );

ALTER TABLE complaint
    ADD CONSTRAINT official_complaint_fk FOREIGN KEY (
        off_id
    )
        REFERENCES official (
            off_id
        );
    
ALTER TABLE complaint
    ADD CONSTRAINT complaint_category_complaint_fk FOREIGN KEY (
        category_id
    )
        REFERENCES complaint_category (
            category_id
        );

INSERT INTO complaint_category (
    category_id,
    category_name,
    demerit_point
) VALUES (
    1,
    'late arrival',
    1
);

INSERT INTO complaint_category (
    category_id,
    category_name,
    demerit_point
) VALUES (
    2,
    'failing to assist',
    1
);

INSERT INTO complaint_category (
    category_id,
    category_name,
    demerit_point
) VALUES (
    3,
    'rude behaviour',
    2
);

INSERT INTO complaint_category (
    category_id,
    category_name,
    demerit_point
) VALUES (
    4,
    'poor driving',
    2
);

COMMIT;

DESC complaint;

SELECT
    *
FROM
    complaint_category;

DESC complaint_category;