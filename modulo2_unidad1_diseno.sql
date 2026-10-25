-- Creacion de tabla de Clientes

CREATE TABLE Clientes(
IDClientes INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
Nombre VARCHAR (100) NOT NULL,
PerfilBio TEXT NOT NULL,
FechaRegistro DATE NOT NULL
);
-- Se uso INT en idclientes para que sea un numero entero junto con IDENTITY para que cada registro se autosume 1 en 1 y para que sea unico e irrepetible y se especifico que es la primary key de esta tabla.
-- En Nombre se uso VARCHAR 100 para permitir texto y que el tope de caracteres sea 100
-- En PerfilBio se usó TEXT para permitir un texto larga, breve bio o notas
-- FechaRegistro se uso DATE para que hayan datos unicamente de fecha.
-- En todos los campos creados se uso NOT NULL para que no existan datos nulos dentro de ellos.


-- Creacion de tabla de productos

CREATE TABLE Productos(
IDProducto INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
Descripcion VARCHAR (500) NOT NULL,
Precio DECIMAL (10,2) NOT NULL,
EstaActivo VARCHAR (5) NOT NULL
);

-- Se uso INT en IDProducto para que sea un numero entero junto con IDENTITY para que cada registro se autosume 1 en 1 y para que sea unico e irrepetible y se especifico que es la primary key de esta tabla.
-- En Descripcion se uso VARCHAR 500 para permitir texto y que el tope de caracteres sea 500.
-- En Precio se usó DECIMAL para permitir numeros donde: se restringio a 10 digitos seguido de la "," un 2 para la cantidad decimales.
-- EstaActivo se uso VARCHAR 2 para permitir que se pueda saber con unicamente 2 caracteres si se encuentra disponible. Basta con un "No" o un "Si" para completar.
