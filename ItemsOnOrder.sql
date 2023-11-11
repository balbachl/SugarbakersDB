 CREATE TABLE ItemsonOrder(
	[ItemID] int NOT NULL,
	[ProductsID] int NOT NULL,
	Quantity int NULL,
	UnitPrice money NULL,
	LineItemTotal AS UnitPrice * Quantity,
	ShipDate datetime NULL,
        [OrdersID] INT NOT NULL, 
    CONSTRAINT FK_OrdersItems FOREIGN KEY([OrdersID]) REFERENCES Orders(OrdersID),
    CONSTRAINT FK_ProductItems FOREIGN KEY(ProductsID) REFERENCES Products(ProductsID), 
    CONSTRAINT [PK_ItemsonOrder] PRIMARY KEY ([ItemID]));
