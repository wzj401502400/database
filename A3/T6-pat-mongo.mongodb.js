// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-pat-mongo.mongodb.js

// Student ID: 34589821
// Student Name: zijie wang

//Comments for your marker:

// ===================================================================================
// Do not add new comments to this playground
// OR modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("jwan0509");

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection

db.trip.drop();

// Create collection and insert documents

db.trip.insertMany([{"_id":2001,"name":"Pierre Martin","licence_num":"120501123456","no_of_trips":2,"suspended":"N","trips_info":[{"trip_id":14,"veh_vin":"1GMSDDCT2EC624KKS","pick-up":{"location_id":107,"location_name":"North Paris Arena","intended_datetime":"22/07/2024 13:50","actual_datetime":"22/07/2024 13:52"},"drop off":{"location_id":108,"location_name":"Parc des Princes","intended_datetime":"22/07/2024 14:35","actual_datetime":"22/07/2024 14:50"}},{"trip_id":13,"veh_vin":"9E4DDHGT9HC612L21","pick-up":{"location_id":105,"location_name":"South Paris Arena","intended_datetime":"23/07/2024 11:35","actual_datetime":"23/07/2024 11:40"},"drop off":{"location_id":108,"location_name":"Parc des Princes","intended_datetime":"23/07/2024 12:35","actual_datetime":"23/07/2024 12:50"}}]},
{"_id":2002,"name":"Marie Dupont","licence_num":"34082A789012","no_of_trips":1,"suspended":"N","trips_info":[{"trip_id":24,"veh_vin":"2M4SAECTMFC627163","pick-up":{"location_id":112,"location_name":"Roland Garros Stadium","intended_datetime":"10/08/2024 10:00","actual_datetime":"10/08/2024 10:00"},"drop off":{"location_id":113,"location_name":"Olympic and Paralympic village","intended_datetime":"10/08/2024 11:35","actual_datetime":"10/08/2024 11:32"}}]},
{"_id":2003,"name":"Louis Dubois","licence_num":"45112B654321","no_of_trips":1,"suspended":"N","trips_info":[{"trip_id":10,"veh_vin":"1GMSDDCT2EC624KKS","pick-up":{"location_id":109,"location_name":"Paris La Defense Arena","intended_datetime":"20/07/2024 08:35","actual_datetime":"20/07/2024 08:35"},"drop off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"20/07/2024 09:35","actual_datetime":"20/07/2024 09:35"}}]},
{"_id":2004,"name":"Antoine Lefevre","licence_num":"670495098765","no_of_trips":1,"suspended":"N","trips_info":[{"trip_id":12,"veh_vin":"9E4DDHGT9HC612L21","pick-up":{"location_id":109,"location_name":"Paris La Defense Arena","intended_datetime":"20/07/2024 08:35","actual_datetime":"20/07/2024 10:40"},"drop off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"20/07/2024 09:35","actual_datetime":"20/07/2024 11:50"}}]},
{"_id":2006,"name":"Arman","licence_num":"23072b567890","no_of_trips":3,"suspended":"N","trips_info":[{"trip_id":23,"veh_vin":"2M4SAECTMFC627163","pick-up":{"location_id":118,"location_name":"Sainte-Chapelle","intended_datetime":"27/07/2024 06:15","actual_datetime":"27/07/2024 06:20"},"drop off":{"location_id":120,"location_name":"The Basilica of the Sacred Heart of Paris","intended_datetime":"27/07/2024 09:30","actual_datetime":"27/07/2024 09:25"}},{"trip_id":22,"veh_vin":"2M4SAECTMFC627163","pick-up":{"location_id":116,"location_name":"Louvre Museum","intended_datetime":"26/07/2024 08:20","actual_datetime":"26/07/2024 08:23"},"drop off":{"location_id":118,"location_name":"Sainte-Chapelle","intended_datetime":"26/07/2024 09:40","actual_datetime":"26/07/2024 09:38"}},{"trip_id":21,"veh_vin":"2M4SAECTMFC627163","pick-up":{"location_id":112,"location_name":"Roland Garros Stadium","intended_datetime":"25/07/2024 09:10","actual_datetime":"25/07/2024 09:10"},"drop off":{"location_id":116,"location_name":"Louvre Museum","intended_datetime":"25/07/2024 10:35","actual_datetime":"25/07/2024 10:35"}}]},
{"_id":2010,"name":"Naoki Fujimoto","licence_num":"110685765432","no_of_trips":4,"suspended":"N","trips_info":[{"trip_id":25,"veh_vin":"9E4DDHGT9HC612L21","pick-up":{"location_id":112,"location_name":"Roland Garros Stadium","intended_datetime":"10/08/2024 10:00","actual_datetime":"10/08/2024 10:02"},"drop off":{"location_id":113,"location_name":"Olympic and Paralympic village","intended_datetime":"10/08/2024 11:35","actual_datetime":"10/08/2024 11:32"}},{"trip_id":16,"veh_vin":"8H5KDHCT0ECC12231","pick-up":{"location_id":103,"location_name":"Champ de Mars Arena","intended_datetime":"24/07/2024 08:00","actual_datetime":"24/07/2024 08:10"},"drop off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"24/07/2024 09:30","actual_datetime":"24/07/2024 09:32"}},{"trip_id":15,"veh_vin":"CC5GSECF9MA612251","pick-up":{"location_id":103,"location_name":"Champ de Mars Arena","intended_datetime":"24/07/2024 08:00","actual_datetime":"24/07/2024 08:00"},"drop off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"24/07/2024 09:30","actual_datetime":"24/07/2024 09:30"}},{"trip_id":11,"veh_vin":"9E4DDHGT9HC612L21","pick-up":{"location_id":109,"location_name":"Paris La Defense Arena","intended_datetime":"20/07/2024 08:35","actual_datetime":"20/07/2024 08:40"},"drop off":{"location_id":110,"location_name":"Pierre Mauroy Stadium","intended_datetime":"20/07/2024 09:35","actual_datetime":"20/07/2024 09:36"}}]},
{"_id":2011,"name":"Mathieu Girard","licence_num":"22102A456789","no_of_trips":2,"suspended":"N","trips_info":[{"trip_id":28,"veh_vin":"OTCAEGET2FC71SHDK","pick-up":{"location_id":108,"location_name":"Parc des Princes","intended_datetime":"28/07/2024 10:35","actual_datetime":"28/07/2024 10:33"},"drop off":{"location_id":118,"location_name":"Sainte-Chapelle","intended_datetime":"28/07/2024 11:35","actual_datetime":"28/07/2024 11:50"}},{"trip_id":26,"veh_vin":"CC5GSECF9MA612251","pick-up":{"location_id":112,"location_name":"Roland Garros Stadium","intended_datetime":"27/07/2024 09:35","actual_datetime":"27/07/2024 09:39"},"drop off":{"location_id":113,"location_name":"Olympic and Paralympic village","intended_datetime":"27/07/2024 10:35","actual_datetime":"27/07/2024 10:50"}}]},
{"_id":2012,"name":"Mansour","licence_num":"33022B678901","no_of_trips":2,"suspended":"N","trips_info":[{"trip_id":29,"veh_vin":"CL5GDECF9123L1231","pick-up":{"location_id":119,"location_name":"Arc de Triomphe","intended_datetime":"02/08/2024 08:20","actual_datetime":"02/08/2024 08:30"},"drop off":{"location_id":111,"location_name":"Porte de La Chapelle Arena","intended_datetime":"02/08/2024 09:35","actual_datetime":"02/08/2024 09:30"}},{"trip_id":27,"veh_vin":"6EJMDHCT9FC614AAA","pick-up":{"location_id":108,"location_name":"Parc des Princes","intended_datetime":"28/07/2024 10:35","actual_datetime":"28/07/2024 10:32"},"drop off":{"location_id":118,"location_name":"Sainte-Chapelle","intended_datetime":"28/07/2024 11:35","actual_datetime":"28/07/2024 11:50"}}]},
{"_id":2013,"name":"Lei Xiong","licence_num":"441270890123","no_of_trips":2,"suspended":"N","trips_info":[{"trip_id":20,"veh_vin":"1D5GDHCT9FC614231","pick-up":{"location_id":101,"location_name":"Bordeaux Stadium","intended_datetime":"05/08/2024 09:20","actual_datetime":"05/08/2024 09:10"},"drop off":{"location_id":121,"location_name":"Saint-Quentin-en-Yvelines Velodrome","intended_datetime":"05/08/2024 09:55","actual_datetime":"05/08/2024 09:55"}},{"trip_id":19,"veh_vin":"1D5GDHCT9FC614231","pick-up":{"location_id":101,"location_name":"Bordeaux Stadium","intended_datetime":"04/08/2024 09:20","actual_datetime":"04/08/2024 09:20"},"drop off":{"location_id":121,"location_name":"Saint-Quentin-en-Yvelines Velodrome","intended_datetime":"04/08/2024 09:55","actual_datetime":"04/08/2024 09:56"}}]},
{"_id":2014,"name":"Claire Robert","licence_num":"55052a543210","no_of_trips":1,"suspended":"N","trips_info":[{"trip_id":100,"veh_vin":"1C4SDHCT9FC614231","pick-up":{"location_id":113,"location_name":"Olympic and Paralympic village","intended_datetime":"30/07/2024 12:30","actual_datetime":"30/07/2024 12:30"},"drop off":{"location_id":111,"location_name":"Porte de La Chapelle Arena","intended_datetime":"30/07/2024 14:00","actual_datetime":"30/07/2024 14:15"}}]},
{"_id":2015,"name":"Nathalie Renaud","licence_num":"660725432109","no_of_trips":2,"suspended":"N","trips_info":[{"trip_id":18,"veh_vin":"3232HHDT7FC213M31","pick-up":{"location_id":120,"location_name":"The Basilica of the Sacred Heart of Paris","intended_datetime":"21/07/2024 20:00","actual_datetime":"21/07/2024 20:00"},"drop off":{"location_id":116,"location_name":"Louvre Museum","intended_datetime":"21/07/2024 21:00","actual_datetime":"21/07/2024 21:01"}},{"trip_id":17,"veh_vin":"3232HHDT7FC213M31","pick-up":{"location_id":116,"location_name":"Louvre Museum","intended_datetime":"21/07/2024 07:00","actual_datetime":"21/07/2024 07:00"},"drop off":{"location_id":120,"location_name":"The Basilica of the Sacred Heart of Paris","intended_datetime":"21/07/2024 08:00","actual_datetime":"21/07/2024 08:00"}}]},
]);

// List all documents you added

db.trip.find();

// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

db.trip.find(
  {
    "$or": [
      { "trips_info.drop off.location_name": "Champions Park" },
      { "trips_info.drop off.location_name": "Porte de La Chapelle Arena" }
    ]
  },
  {
    "name": 1,
    "licence_num": 1,
    "_id": 0
  }
);

// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Show document before the new trip is added and the driver is suspended

db.trip.find({ "_id": 2004 });

// Add new trip and set the driver to suspended

db.trip.updateOne(
  { "_id": 2004 },
  {
    "$push": {
      "trips_info": {
        "trip_id": 9,
        "veh_vin": "9E4DDHGT9HC612L21",
        "pick-up": {
          "location_id": 117,
          "location_name": "Tuileries Garden",
          "intended_datetime": "10/08/2024 20:50",
          "actual_datetime": "10/08/2024 21:13"
        },
        "drop off": {
          "location_id": 118,
          "location_name": "Sainte-Chapelle",
          "intended_datetime": "10/08/2024 22:00",
          "actual_datetime": "10/08/2024 22:20"
        }
      }
    },
    "$inc": { "no_of_trips": 1 },
    "$set": { "suspended": "Y"}
  }
);

// Illustrate/confirm changes made

db.trip.find({ "_id": 2004 });
