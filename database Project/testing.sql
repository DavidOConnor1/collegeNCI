-- Insert data into Farm_Inventory table
INSERT INTO Farm_Inventory (CropID, AnimalID, AnimalFeedID, SoilMaterialID, ToolsID, QuantityOfTools, CostofAnimalFeed_Crops, weightOfanimalFeed_Crops)
VALUES
    (101, 201, 301, 401, 501, 10, 500.0, 200.0),
    (102, 202, 302, 402, 502, 15, 600.0, 300.0),
    (103, 203, 303, 403, 503, 20, 800.0, 400.0),
    (104, 204, 304, 404, 504, 5, 200.0, 100.0),
    (105, 205, 305, 405, 505, 10, 300.0, 150.0),
    (106, 206, 306, 407, 506, 8, 400.0, 200.0), -- Corrected SoilMaterialID to match an existing value
    (107, 207, 307, 408, 507, 12, 450.0, 180.0), -- Corrected SoilMaterialID to match an existing value
    (108, 208, 308, 408, 508, 7, 350.0, 140.0); -- Corrected SoilMaterialID to match an existing value


    -------------------------------------------------
    CREATE TABLE Crops (
    CropID int not null,
    CropName VARCHAR (20),
    PricePerTon DOUBLE,
    CropWeight int,
    PRIMARY KEY (CropID)
);

CREATE INDEX idx_CropName ON Crops (CropName);


CREATE TABLE Animals(
    AnimalID int not null,
    AnimalType VARCHAR(10),
    Breed VARCHAR (20),
    Gender VARCHAR (10),
    StageOfDevelopment VARCHAR (10),
    PRIMARY KEY (AnimalID)
);

CREATE INDEX idx_AnimalType ON Animals(AnimalType);

CREATE TABLE AnimalFeed(
    AnimalFeedID int not null,
    FeedName VARCHAR (20),
    Brand VARCHAR (20),
    PRICEperKilogram INT,
    weightofFeed INT, 
    PRIMARY KEY (AnimalFeedID)
);


CREATE INDEX idx_Brand on AnimalFeed(Brand);


CREATE TABLE soilMaterial(
    SoilMaterialID int not NULL,
    SMname VARCHAR (20),
   acronyms VARCHAR (3),
   weightMeasurement VARCHAR (10),
   soilWeight int,
   pricePerSMWeight INT,
   PRIMARY KEY (SoilMaterialID)
);


CREATE INDEX idx_acronyms on soilMaterial(acronyms);

CREATE TABLE Tools(
    ToolsID int not null,
    ToolType VARCHAR(12),
    ToolName VARCHAR(20),
    QuantityofTool INT,
    PricePerTool int,
    PRIMARY KEY (ToolsID)
);


CREATE TABLE Farm_Inventory(
    CropID int,
    AnimalID int,
    AnimalFeedID int,
    SoilMaterialID int,
    ToolsID int,
    QuantityOfTools int,
    CostofAnimalFeed_Crops DECIMAL,
    weightOfanimalFeed_Crops DECIMAL,
    FOREIGN KEY (CropID) REFERENCES Crops(CropID),
    FOREIGN KEY (AnimalID) REFERENCES Animals(AnimalID),
    FOREIGN KEY (AnimalFeedID) REFERENCES AnimalFeed(AnimalFeedID),
    FOREIGN KEY (SoilMaterialID) REFERENCES soilMaterial(SoilMaterialID),
    FOREIGN KEY (ToolsID) REFERENCES Tools(ToolsID)
);



INSERT INTO Crops (CropID, CropName, PricePerTon, CropWeight)
VALUES 
(101, 'Maize', 182.0, 30),
(102, 'Beans', 285.0, 35),
(103, 'Peas', 500.0, 10),
(104, 'Oilseedrape', 700.0, 80),
(105, 'Maize', 182.0, 30),
(106, 'Oats', 170.0, 1400),
(107, 'Maize', 182.0, 30),
(108, 'Maize', 182.0, 30);
INSERT INTO Animals (AnimalID, AnimalType, Breed, Gender, StageOfDevelopment)
VALUES
(201, 'Cow', 'Holstein', 'Female', 'Adult'),
(202, 'Chicken', 'Rhode Island Red', 'Female', 'Adult'),
(203, 'Pig', 'Berkshire', 'Male', 'Child'),
(204, 'Sheep', 'Suffolk', 'Male', 'Child'),
(205, 'Goat', 'Boer', 'Female', 'Adolescent'),
(206, 'Horse', 'Arabian', 'Male', 'Adult'),
(207, 'Duck', 'Mallard', 'Female', 'Child'),
(208, 'Turkey', 'Broad Breasted White', 'Female', 'Adolescent');

INSERT INTO AnimalFeed (AnimalFeedID, FeedName, Brand, PRICEperKilogram, weightofFeed)
VALUES 
(301, 'Cattle Feed', 'CatShop', 50, 25),
(302, 'Chicken Feed', 'Nature''s Best', 40, 50),
(303, 'Cow Feed', 'LivestockPlus', 45, 50),
(304, 'Sheep Feed', 'HealthyHarvest', 55, 20),
(305, 'Horse Feed', 'PureFeed', 60, 30),
(306, 'Goat Feed', 'Vitality', 50, 22),
(307, 'Birds Feed', 'RangeReady', 70, 15),
(308, 'Turkey Feed', 'FieldFare', 65, 40);

INSERT INTO soilMaterial (SoilMaterialID, SMname, acronyms, weightMeasurement, soilWeight, pricePerSMWeight)
VALUES 
(401, 'Sandy Soil', 'SND', 'Kilograms', 1000, 10),
(402, 'Silt Soil', 'SLT', 'Kilograms', 800, 12),
(403, 'Clay Soil', 'CLY', 'Kilograms', 1200, 15),
(404, 'Sandy Loam Soil', 'SNL', 'Kilograms', 1100, 11),
(405, 'Silt Loam Soil', 'STL', 'Kilograms', 850, 13),
(406, 'Clay Loam Soil', 'CLL', 'Kilograms', 1300, 17),
(407, 'Loamy Sand Soil', 'LMS', 'Kilograms', 900, 10),
(408, 'Silty Clay Soil', 'SLC', 'Kilograms', 950, 14);

INSERT INTO Tools (ToolsID, ToolType, ToolName, QuantityofTool, PricePerTool)
VALUES 
(501, 'Manual', 'Shovel', 15, 25),
(502, 'Manual', 'Rake', 20, 15),
(503, 'Machine', 'Chainsaw', 5, 150),
(504, 'Machine', 'Tractor', 2, 7500),
(505, 'Machine', 'Leaf Blower', 10, 60),
(506, 'Manual', 'Pruning Shears', 25, 20),--------not counted
(507, 'Machine', 'Tiller', 3, 300),
(508, 'Manual', 'Hoe', 15, 20);