-- Tabla de usuarios
CREATE TABLE Usuarios (
    id_Usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre     TEXT,
    email      TEXT    UNIQUE
                       NOT NULL,
    password   TEXT    NOT NULL
);


-- Tabla de productos
CREATE TABLE Productos (
    id_Producto     INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_Producto TEXT    NOT NULL,
    Precio          REAL    NOT NULL
);


-- Tabla de carritos
CREATE TABLE Carritos (
    id_Carrito        INTEGER PRIMARY KEY AUTOINCREMENT,
    id_Usuario        INTEGER REFERENCES Usuarios (id_Usuario),
    id_Producto       INTEGER REFERENCES Productos (id_Producto),
    Cantidad_Producto NUMERIC NOT NULL,
    Precio_Total      REAL    NOT NULL
);