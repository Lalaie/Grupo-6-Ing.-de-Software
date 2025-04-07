DROP TABLE Hotel
DROP TABLE Habitacion
DROP TABLE Cliente
DROP TABLE Reserva
DROP TABLE Usuario
DROP TABLE Administrador

-- Creación de la tabla "Hotel"
CREATE TABLE Hotel (
    hotel_id INT PRIMARY KEY, -- Clave primaria
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    catego VARCHAR(50) -- Categoría del hotel
);

-- Creación de la tabla "Habitación"
CREATE TABLE Habitacion (
    habitacion_id INT PRIMARY KEY, -- Clave primaria
    hotel_id INT NOT NULL, -- Clave foránea para relacionar con la tabla "Hotel"
    tipo VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id) -- Relación con la tabla "Hotel"
);

-- Creación de la tabla "Cliente"
CREATE TABLE Cliente (
    cliente_id INT PRIMARY KEY, -- Clave primaria
    nombre VARCHAR(100) NOT NULL,
    apellidoP VARCHAR(100) NOT NULL,
    apellidoM VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(15),
    direccion VARCHAR (30)
);

-- Creación de la tabla "Reserva"
CREATE TABLE Reserva (
    reserva_id INT PRIMARY KEY, -- Clave primaria
    cliente_id INT NOT NULL, -- Clave foránea para relacionar con la tabla "Cliente"
    habitacion_id INT NOT NULL, -- Clave foránea para relacionar con la tabla "Habitación"
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    cantidad_personas INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id), -- Relación con la tabla "Cliente"
    FOREIGN KEY (habitacion_id) REFERENCES Habitacion(habitacion_id) -- Relación con la tabla "Habitación"
);

-- Creación de la tabla "Usuario"
CREATE TABLE Usuario (
    usuario_id INT PRIMARY KEY, -- Clave primaria
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(15)
);

-- Creación de la tabla "Administrador"
CREATE TABLE Administrador (
    admin_id INT PRIMARY KEY, -- Clave primaria
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(15)
);