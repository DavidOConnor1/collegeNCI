CREATE TABLE Crops (
    CropID int not null,
    CropName String (20),
    PricePerKilo double,
    Weight int,
    PRIMARY KEY (CropID)
);

CREATE INDEX idx_CropName
ON Crops (CropName);


CREATE TABLE Animals(
    AnimalID int not null,
    Type VARCHAR(20),
    Breed VARCHAR (20),
    Gender VARCHAR (10),
    StageOfDevelopment VARCHAR (10),
    PRIMARY KEY (AnimalID)
);

Create TABLE AnimalFeed(
    AnimalFeedID int not null,
    FeedName VARCHAR (20),
    Brand VARCHAR (20),
    PRICEperKilogram INT,
    weightofFeed INT, 
    PRIMARY KEY (AnimalFeedID)
);

CREATE TABLE soilMaterial(
    SoilMaterialID int not NULL,
    SMname VARCHAR (20),
   acronyms VARCHAR (3),
   weightMeasurement VARCHAR (10),
   soilWeight int,
   pricePerSMWeight INT,
   PRIMARY KEY (SoilMaterialID)
);

CREATE TABLE Farm_Inventory(

)