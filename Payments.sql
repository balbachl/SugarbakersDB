CREATE TABLE Payments(
        ID int NOT NULL,
	[CustomerID] int NOT NULL,
	PmtDate datetime NOT NULL,
	Amt money NULL,
 CONSTRAINT PK_payments PRIMARY KEY CLUSTERED (ID),
 CONSTRAINT FK_PaymentsCustomer FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
);
