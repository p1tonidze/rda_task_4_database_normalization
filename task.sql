CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Warehouses (
    ID INT PRIMARY KEY,
    WarehouseName VARCHAR(50),
    WarehouseAddress VARCHAR(50),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION
);

CREATE TABLE ProductInventory (
    ID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    WarehouseAmount INT,
    WarehouseID INT,
	FOREIGN KEY (WarehouseID) REFERENCES Warehouse(ID) ON DELETE NO ACTION,
);

INSERT INTO Warehouses (ID, WarehouseName, WarehouseAddress, CountryID)
VALUES (1, 'Warehouse-1', 'City-1, Street-1', 1);

INSERT INTO Warehouses (ID, WarehouseName, WarehouseAddress, CountryID)
VALUES (2, 'Warehouse-2', 'City-2, Street-2', 2);

INSERT INTO ProductInventory (ID, ProductName, WarehouseAmount, WarehouseID)
VALUES (1, 'AwersomeProduct', 2, 1);

INSERT INTO ProductInventory (ID, ProductName, WarehouseAmount, WarehouseID)
VALUES (2, 'AwersomeProduct', 5, 2);
