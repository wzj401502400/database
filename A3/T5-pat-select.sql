/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-pat-select.sql

--Student ID: 34589821
--Student Name: zijie wang


/* Comments for your marker:




*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    locn_id,
    locn_name,
    locn_address,
    locntype_description,
    sum(
        CASE
            WHEN trip.pickup_locn_id = locn_id THEN
                1
            ELSE
                0
        END) + sum(
        CASE
            WHEN trip.dropoff_locn_id = locn_id THEN
                1
            ELSE
                0
        END)        AS "PICKUP/DROPOFF_COUNT"
FROM
    location_type
    NATURAL JOIN location
    NATURAL JOIN trip
GROUP BY
    locn_id,
    locn_name,
    locn_address,
    locntype_description
ORDER BY
    "PICKUP/DROPOFF_COUNT" DESC,
    locn_id;
    
/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    d.driver_id,
    d.driver_given
    || ' '
    || d.driver_family AS fullname,
    CASE
        WHEN nvl(sum(
            CASE
                WHEN t.trip_act_dropoffdt >= to_date('01-AUG-2024 00:00', 'DD-MON-YYYY HH24:MI')
                AND t.trip_act_dropoffdt < to_date('08-AUG-2024 00:00', 'DD-MON-YYYY HH24:MI')
                THEN
                    (t.trip_act_dropoffdt - t.trip_act_pickupdt) * 24 * 45.42
                ELSE
                    0
            END
        ), 0) = 0
        THEN
            'No Trips'
        ELSE
            lpad(to_char(nvl(sum(
                CASE
                    WHEN t.trip_act_dropoffdt >= to_date('01-AUG-2024 00:00', 'DD-MON-YYYY HH24:MI')
                    AND t.trip_act_dropoffdt < to_date('08-AUG-2024 00:00', 'DD-MON-YYYY HH24:MI')
                    THEN
                        (t.trip_act_dropoffdt - t.trip_act_pickupdt) * 24 * 45.42
                    ELSE
                        0
                END
            ), 0), '$9999.99'), 20)
    END                AS total_period_payment
FROM
    driver d
    LEFT JOIN trip t
    ON d.driver_id = t.driver_id
GROUP BY
    d.driver_id,
    d.driver_given,
    d.driver_family
ORDER BY
    d.driver_id;