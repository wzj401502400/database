/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-pat-json.sql

--Student ID: 34589821
--Student Name: zijie wang


/* Comments for your marker:




*/

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE 
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    JSON_OBJECT(
        '_id' VALUE d.driver_id,
        'name' VALUE LTRIM(RTRIM(d.driver_given || ' ' || d.driver_family)),
        'licence_num' VALUE d.driver_licence,
        'no_of_trips' VALUE COUNT(t.trip_id),
        'suspended' VALUE d.driver_suspended,
        'trips_info' VALUE JSON_ARRAYAGG(
            JSON_OBJECT(
                'trip_id' VALUE t.trip_id,
                'veh_vin' VALUE t.veh_vin,
                'pick-up' VALUE JSON_OBJECT(
                    'location_id' VALUE lp.locn_id,
                    'location_name' VALUE lp.locn_name,
                    'intended_datetime' VALUE TO_CHAR(t.trip_int_pickupdt, 'DD/MM/YYYY HH24:MI'),
                    'actual_datetime' VALUE TO_CHAR(t.trip_act_pickupdt, 'DD/MM/YYYY HH24:MI')
                ),
                'drop off' VALUE JSON_OBJECT(
                    'location_id' VALUE ld.locn_id,
                    'location_name' VALUE ld.locn_name,
                    'intended_datetime' VALUE TO_CHAR(t.trip_int_dropoffdt, 'DD/MM/YYYY HH24:MI'),
                    'actual_datetime' VALUE TO_CHAR(t.trip_act_dropoffdt, 'DD/MM/YYYY HH24:MI')
                )
            )
            ORDER BY t.trip_id DESC
        ) FORMAT JSON ) 
        || ',' AS JSON_DOCUMENT
FROM
    driver d
    JOIN trip t ON d.driver_id = t.driver_id
    JOIN location lp ON t.pickup_locn_id = lp.locn_id
    JOIN location ld ON t.dropoff_locn_id = ld.locn_id
GROUP BY
    d.driver_id, 
    d.driver_given, 
    d.driver_family, 
    d.driver_licence,
    d.driver_suspended
HAVING
    COUNT(t.trip_id) > 0
ORDER BY
    d.driver_id;