/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T3-pat-dml.sql

--Student ID: 34589821
--Student Name: zijie wang

/* Comments for your marker:




*/

/*(a)*/

DROP SEQUENCE official_seq;

DROP SEQUENCE trip_seq;

CREATE SEQUENCE official_seq START WITH 100 INCREMENT BY 10;

CREATE SEQUENCE trip_seq START WITH 100 INCREMENT BY 10;

/*(b)*/

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    official_seq.NEXTVAL,
    'Franklin',
    'Gateau',
    (SELECT cr_ioc_code FROM country_region WHERE upper(cr_name) = upper('St Vincent and the Grenadines')),
    official_seq.CURRVAL
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1C4SDHCT9FC614231',
    'TK6260F',
    TO_DATE('2017', 'YYYY'),
    30000,
    6,
    (SELECT vm_model_id FROM vehicle_model NATURAL JOIN manufacturer WHERE upper(vm_model) = 'ALPHARD' AND upper(man_name) = 'TOYOTA')
);

COMMIT;

/*(c)*/

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    trip_seq.NEXTVAL,
    6,
    TO_DATE('30-JUL-2024 12:30', 'DD-MON-YYYY HH24:MI'),
    NULL,
    TO_DATE('30-JUL-2024 12:30', 'DD-MON-YYYY HH24:MI') + (1.5 / 24),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE upper(driver_licence) = upper('55052a543210')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT lang_iso_code FROM language WHERE upper(lang_name) = upper('English')),
    official_seq.CURRVAL
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    trip_seq.NEXTVAL,
    6,
    TO_DATE('30-JUL-2024 20:00', 'DD-MON-YYYY HH24:MI'),
    NULL,
    TO_DATE('30-JUL-2024 20:00', 'DD-MON-YYYY HH24:MI') + (1.25 / 24),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE upper(driver_licence) = upper('55052a543210')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT lang_iso_code FROM language WHERE upper(lang_name) = upper('English')),
    official_seq.CURRVAL
);

COMMIT;

/*(d)*/

UPDATE trip
SET
    trip_act_pickupdt = TO_DATE(
        '30-JUL-2024 12:30',
        'DD-MON-YYYY HH24:MI'
    ),
    trip_act_dropoffdt = TO_DATE(
        '30-JUL-2024 12:30',
        'DD-MON-YYYY HH24:MI'
    ) + (
        1.75 / 24
    )
WHERE
    trip_int_pickupdt = TO_DATE('30-JUL-2024 12:30', 'DD-MON-YYYY HH24:MI')
    AND trip_int_dropoffdt = (TO_DATE('30-JUL-2024 12:30', 'DD-MON-YYYY HH24:MI') + (1.5 / 24))
    AND pickup_locn_id = (
        SELECT
            locn_id
        FROM
            location
        WHERE
            upper(locn_name) = upper('Olympic and Paralympic Village')
    )
    AND dropoff_locn_id = (
        SELECT
            locn_id
        FROM
            location
        WHERE
            upper(locn_name) = upper('Porte de la Chapelle Arena')
    )
    AND driver_id = ((
        SELECT
            driver_id
        FROM
            driver
        WHERE
            upper(driver_licence) = upper('55052a543210')
    ))
    AND veh_vin = '1C4SDHCT9FC614231';

COMMIT;

DELETE FROM trip
WHERE
    driver_id = (
        SELECT
            driver_id
        FROM
            driver
        WHERE
            upper(driver_licence) = upper('55052a543210')
    )
    AND trip_int_pickupdt >= TO_DATE('30-JUL-2024 17:00', 'DD-MON-YYYY HH24:MI')
    AND trip_int_pickupdt < TO_DATE('31-JUL-2024 00:00', 'DD-MON-YYYY HH24:MI');

COMMIT;