/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-pat-insert.sql

--Student ID: 34589821
--Student Name: zijie wang

/* Comments for your marker: Some test data is from manual look-up




*/

--------------------------------------
--INSERT INTO official
--------------------------------------

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    10,
    'Mike',
    'Li',
    'VIN',
    10
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    11,
    'jason',
    'Zhang',
    'VIN',
    10
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    12,
    'Jay',
    'zHAO',
    'VIN',
    10
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    13,
    'Fei',
    'Li',
    'MAS',
    13
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    14,
    'sheng',
    'huang',
    'MAS',
    13
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    15,
    'zhe',
    'cao',
    'MAS',
    13
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    16,
    'alie',
    'Qin',
    'FRA',
    16
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    17,
    'kai',
    'nigula',
    'FRA',
    16
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    18,
    'apolo',
    'anglea',
    'LBA',
    18
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    19,
    'Tom',
    'Hadis',
    'USA',
    19
);

--------------------------------------
--INSERT INTO vehicle
--------------------------------------

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1GMSDDCT2EC624KKS',
    'AG23123',
    TO_DATE('2022', 'YYYY'),
    23000,
    12,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '8H5KDHCT0ECC12231',
    'LJEMS11',
    TO_DATE('2017', 'YYYY'),
    49000,
    12,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '3232HHDT7FC213M31',
    'UKDS911',
    TO_DATE('2023', 'YYYY'),
    11000,
    12,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1D5GDHCT9FC614231',
    'SA19823',
    TO_DATE('2018', 'YYYY'),
    42300,
    6,
    7
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '2M4SAECTMFC627163',
    'MMS1999',
    TO_DATE('2018', 'YYYY'),
    22300,
    6,
    7
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'CL5GDECF9123L1231',
    'MCZL800',
    TO_DATE('2022', 'YYYY'),
    21000,
    8,
    8
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '6EJMDHCT9FC614AAA',
    'LOSMAS8',
    TO_DATE('2015', 'YYYY'),
    72000,
    8,
    8
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'OTCAEGET2FC71SHDK',
    'CKXJ9LT',
    TO_DATE('2024', 'YYYY'),
    500,
    8,
    8
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'CC5GSECF9MA612251',
    'SNDKS1I',
    TO_DATE('2019', 'YYYY'),
    35000,
    12,
    9
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '9E4DDHGT9HC612L21',
    '626266F',
    TO_DATE('2018', 'YYYY'),
    39000,
    12,
    9
);

--------------------------------------
--INSERT INTO trip
--------------------------------------

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
    10,
    12,
    TO_DATE('20-JUL-2024 08:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 08:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 09:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 09:35', 'DD-MON-YYYY HH24:MI'),
    '1GMSDDCT2EC624KKS',
    2003,
    109,
    110,
    'en',
    10
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
    11,
    12,
    TO_DATE('20-JUL-2024 08:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 08:40', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 09:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 09:36', 'DD-MON-YYYY HH24:MI'),
    '9E4DDHGT9HC612L21',
    2010,
    109,
    110,
    'en',
    10
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
    12,
    12,
    TO_DATE('20-JUL-2024 08:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 10:40', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 09:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('20-JUL-2024 11:50', 'DD-MON-YYYY HH24:MI'),
    '9E4DDHGT9HC612L21',
    2004,
    109,
    110,
    'en',
    10
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
    13,
    12,
    TO_DATE('23-JUL-2024 11:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('23-JUL-2024 11:40', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('23-JUL-2024 12:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('23-JUL-2024 12:50', 'DD-MON-YYYY HH24:MI'),
    '9E4DDHGT9HC612L21',
    2001,
    105,
    108,
    'de',
    11
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
    14,
    12,
    TO_DATE('22-JUL-2024 13:50', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('22-JUL-2024 13:52', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('22-JUL-2024 14:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('22-JUL-2024 14:50', 'DD-MON-YYYY HH24:MI'),
    '1GMSDDCT2EC624KKS',
    2001,
    107,
    108,
    'de',
    11
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
    15,
    12,
    TO_DATE('24-JUL-2024 08:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('24-JUL-2024 08:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('24-JUL-2024 09:30', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('24-JUL-2024 09:30', 'DD-MON-YYYY HH24:MI'),
    'CC5GSECF9MA612251',
    2010,
    103,
    110,
    'ja',
    12
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
    16,
    12,
    TO_DATE('24-JUL-2024 08:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('24-JUL-2024 08:10', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('24-JUL-2024 09:30', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('24-JUL-2024 09:32', 'DD-MON-YYYY HH24:MI'),
    '8H5KDHCT0ECC12231',
    2010,
    103,
    110,
    'ja',
    12
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
    17,
    12,
    TO_DATE('21-JUL-2024 07:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('21-JUL-2024 07:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('21-JUL-2024 08:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('21-JUL-2024 08:00', 'DD-MON-YYYY HH24:MI'),
    '3232HHDT7FC213M31',
    2015,
    116,
    120,
    'pt',
    13
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
    18,
    12,
    TO_DATE('21-JUL-2024 20:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('21-JUL-2024 20:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('21-JUL-2024 21:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('21-JUL-2024 21:01', 'DD-MON-YYYY HH24:MI'),
    '3232HHDT7FC213M31',
    2015,
    120,
    116,
    'pt',
    13
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
    19,
    6,
    TO_DATE('04-AUG-2024 09:20', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('04-AUG-2024 09:20', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('04-AUG-2024 09:55', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('04-AUG-2024 09:56', 'DD-MON-YYYY HH24:MI'),
    '1D5GDHCT9FC614231',
    2013,
    101,
    121,
    'zh',
    14
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
    20,
    6,
    TO_DATE('05-AUG-2024 09:20', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('05-AUG-2024 09:10', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('05-AUG-2024 09:55', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('05-AUG-2024 09:55', 'DD-MON-YYYY HH24:MI'),
    '1D5GDHCT9FC614231',
    2013,
    101,
    121,
    'zh',
    14
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
    21,
    6,
    TO_DATE('25-JUL-2024 09:10', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('25-JUL-2024 09:10', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('25-JUL-2024 10:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('25-JUL-2024 10:35', 'DD-MON-YYYY HH24:MI'),
    '2M4SAECTMFC627163',
    2006,
    112,
    116,
    'kk',
    15
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
    22,
    6,
    TO_DATE('26-JUL-2024 08:20', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('26-JUL-2024 08:23', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('26-JUL-2024 09:40', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('26-JUL-2024 09:38', 'DD-MON-YYYY HH24:MI'),
    '2M4SAECTMFC627163',
    2006,
    116,
    118,
    'kk',
    15
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
    23,
    6,
    TO_DATE('27-JUL-2024 06:15', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('27-JUL-2024 06:20', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('27-JUL-2024 09:30', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('27-JUL-2024 09:25', 'DD-MON-YYYY HH24:MI'),
    '2M4SAECTMFC627163',
    2006,
    118,
    120,
    'kk',
    15
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
    24,
    6,
    TO_DATE('10-AUG-2024 10:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('10-AUG-2024 10:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('10-AUG-2024 11:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('10-AUG-2024 11:32', 'DD-MON-YYYY HH24:MI'),
    '2M4SAECTMFC627163',
    2002,
    112,
    113,
    'en',
    16
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
    25,
    12,
    TO_DATE('10-AUG-2024 10:00', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('10-AUG-2024 10:02', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('10-AUG-2024 11:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('10-AUG-2024 11:32', 'DD-MON-YYYY HH24:MI'),
    '9E4DDHGT9HC612L21',
    2010,
    112,
    113,
    'en',
    16
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
    26,
    12,
    TO_DATE('27-JUL-2024 09:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('27-JUL-2024 09:39', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('27-JUL-2024 10:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('27-JUL-2024 10:50', 'DD-MON-YYYY HH24:MI'),
    'CC5GSECF9MA612251',
    2011,
    112,
    113,
    'en',
    16
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
    27,
    8,
    TO_DATE('28-JUL-2024 10:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('28-JUL-2024 10:32', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('28-JUL-2024 11:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('28-JUL-2024 11:50', 'DD-MON-YYYY HH24:MI'),
    '6EJMDHCT9FC614AAA',
    2012,
    108,
    118,
    'fr',
    17
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
    28,
    8,
    TO_DATE('28-JUL-2024 10:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('28-JUL-2024 10:33', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('28-JUL-2024 11:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('28-JUL-2024 11:50', 'DD-MON-YYYY HH24:MI'),
    'OTCAEGET2FC71SHDK',
    2011,
    108,
    118,
    'fr',
    17
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
    29,
    8,
    TO_DATE('02-AUG-2024 08:20', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('02-AUG-2024 08:30', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('02-AUG-2024 09:35', 'DD-MON-YYYY HH24:MI'),
    TO_DATE('02-AUG-2024 09:30', 'DD-MON-YYYY HH24:MI'),
    'CL5GDECF9123L1231',
    2012,
    119,
    111,
    'ar',
    18
);

COMMIT;
