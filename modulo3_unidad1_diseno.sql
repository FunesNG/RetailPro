-- Creacion de tabla de Clientes

CREATE TABLE Clientes(
IDClientes INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
Nombre VARCHAR (100) NOT NULL,
PerfilBio TEXT NOT NULL,
FechaRegistro DATETIME NOT NULL
);

-- Creacion de tabla de productos

CREATE TABLE Productos(
IDProducto INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
Descripcion VARCHAR (500) NOT NULL,
Precio DECIMAL (10,2) NOT NULL,
EstaActivo VARCHAR (5) NOT NULL
);
