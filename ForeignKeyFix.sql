



ALTER TABLE transporter DROP FOREIGN KEY transporter_FK1, DROP FOREIGN KEY transporter_FK2 ;
    DELETE FROM transporter WHERE idtransporter=7;
ALTER TABLE transporter ADD CONSTRAINT transporter_FK1 FOREIGN KEY (personId) 
REFERENCES person (idperson)
        ON DELETE CASCADE,
    ADD CONSTRAINT transporter_FK2
        FOREIGN KEY (hangarId) 
        REFERENCES hangar (idhangar)
        ON DELETE CASCADE ;