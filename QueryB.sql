-- INSERT INTO patients VALUES (4,"New Misbah","House no. 13 Bouston USA");
-- INSERT INTO patients VALUES (5,"New Ali","House no. 15 Sedona USA");
-- SELECT * FROM patients;

-- UPDATE patients SET Name = "updated Misbah" WHERE Patient_id = 4;
-- UPDATE patients SET NAME = "updated Ali" WHERE Patient_id = 5;
-- SELECT * FROM patients;

-- DELETE FROM checkups WHERE Patient_id = 3;
-- SELECT * FROM checkups;

-- SELECT * FROM medicines;

-- SELECT * FROM patients JOIN checkups WHERE patients.Patient_id=checkups.Patient_id;

-- SELECT * FROM equipments JOIN checkups WHERE equipments.equip_id=checkups.Patient_id;

-- SELECT COUNT(NAME),SUM(Quantity),AVG(Quantity) FROM medicines;

-- SELECT * FROM patients,checkups;