-- SQLBook: Code


CREATE TABLE Farm_Inventory.Crops (
    CropID int not null,
    CropName VARCHAR (20),
    PricePerTon DOUBLE,
    CropWeight int,
    PRIMARY KEY (CropID)
);

CREATE INDEX idx_CropName1 ON Crops (CropName);


CREATE TABLE Farm_Inventory.Animals(
    AnimalID int not null,
    AnimalType VARCHAR(10),
    Breed VARCHAR (20),
    Gender VARCHAR (10),
    StageOfDevelopment VARCHAR (10),
    PRIMARY KEY (AnimalID)
);

CREATE INDEX idx_AnimalType2 ON Animals(AnimalType);

Create TABLE Farm_Inventory.AnimalFeed(
    AnimalFeedID int not null,
    FeedName VARCHAR (20),
    Brand VARCHAR (20),
    PRICEperKilogram INT,
    weightofFeed INT, 
    PRIMARY KEY (AnimalFeedID)
);

CREATE INDEX idx_Brand3 on AnimalFeed(Brand);


CREATE TABLE Farm_Inventory.soilMaterial(
    SoilMaterialID int not NULL,
    SMname VARCHAR (20),
   acronyms VARCHAR (3),
   weightMeasurement VARCHAR (10),
   soilWeight int,
   pricePerSMWeight INT,
   PRIMARY KEY (SoilMaterialID)
);


CREATE INDEX idx_acronyms2 on soilMaterial(acronyms);

CREATE TABLE Farm_Inventory.Tools(
    ToolsID int not null,
    ToolType VARCHAR(12),
    ToolName VARCHAR(20),
    QuantityofTool INT,
    PricePerTool int,
    PRIMARY KEY (ToolsID)
);


CREATE TABLE Farm_Inventory(
    Foreign Key (SoilMaterialID) REFERENCES soilMaterial(SoilMaterialID),
    Foreign Key (AnimalFeedID) REFERENCES AnimalFeed(AnimalFeedID),
    Foreign Key (AnimalID) REFERENCES Animals(AnimalID),
    Foreign Key (CropID) REFERENCES Crops(CropID),
    Foreign Key (ToolsID) REFERENCES Tools(ToolsID),
    QuantityOfTools int,
    CostofAnimalFeed&Crops DECIMAL,
    weightOfanimalFeed&Crops DECIMAL
);

INSERT INTO Crops VALUES('927', 'Maize', '182', '30');
INSERT INTO Crops VALUES('103', 'Beans', '285', '35');
INSERT INTO Crops VALUES('923', 'Peas', '500', '10');
INSERT INTO Crops VALUES('13', 'Oilseedrape', '700', '80');
INSERT INTO Crops VALUES('83', 'beets', '40', '301');
INSERT INTO Crops VALUES('283', 'potatoes', '530', '30');

INSERT INTO Animals Values('3521', 'Cow', 'Dexter Cattle', 'Male', 'Calf');
INSERT INTO Animals Values('321', 'Sheep', 'Scottish BlackFace', 'female', 'lamb');
INSERT INTO Animals Values('21', 'Pig', 'Large White', 'Male', 'piglet');
INSERT INTO Animals Values('99', 'Cow', 'Angus', 'female', 'mature');
INSERT INTO Animals Values('111', 'Pig', 'Landrace', 'female', 'gilt');


INSERT INTO AnimalFeed VALUES('333', '', '', '','');
INSERT INTO AnimalFeed VALUES('124', '', '', '','');
INSERT INTO AnimalFeed VALUES('456', '', '', '','');
INSERT INTO AnimalFeed VALUES('', '', '', '','');