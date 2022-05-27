
-- @block

CREATE TABLE Marca(
    id_marca INT PRIMARY KEY,
    nombre VARCHAR(255),
    productos VARCHAR(255)
);

-- @block

CREATE TABLE Producto(
    id_prod INT PRIMARY KEY,
    nombre VARCHAR(255),
    id_marca INT NOT NULL,
    precio DECIMAL(4,2),
    peso_neto DECIMAL(4,2),
    FOREIGN KEY(id_marca) REFERENCES Marca(id_marca) 
);

-- @block

CREATE TABLE Empleado(
    id_emp INT PRIMARY KEY,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    edad INT,
    años_servicio INT,
    sueldo INT,
    id_sucursal INT NOT NULL,
    FOREIGN KEY(id_sucursal) REFERENCES Sucursal(id_sucursal)
);

-- @block

CREATE TABLE Sucursal(
    id_sucursal INT PRIMARY KEY,
    nombre VARCHAR(255),
    dir VARCHAR(255),
    disponibilidad VARCHAR(255),
    empleados VARCHAR(255),
    marca INT 
);


-- @block

INSERT INTO Marca (id_marca, nombre, productos)
VALUES
    (001, 'Rockaleta', 'Paleta Rockaleta'),
    (002, 'Rockaleta', 'Rockaleta bites'),
    (003, 'Rockaleta', 'Paleta Rockaleta Junior'),
    (004, 'Rockaleta', 'Rockaleta bola'),
    (005, 'Rockaleta', 'Mancha-t'),
    (006, 'Inspireka', 'Konstru-Y'),
    (007, 'nspireka', 'Moldeable'),
    (008, 'Inspireka', 'Arena Magica'),
    (009, 'Inspireka', 'Pinta Frut'),
    (010, 'nspireka', 'Armables'),
    (011, 'Tix Tix', 'Paleta'),
    (012, 'Tix Tix', 'Candy rolls'),
    (013, 'Tix Tix', 'Gum'),
    (014, 'Tix Tix','Tubi'),
    (015, 'Tix Tix', 'Pastillon'),
    (016, 'Tix Tix', 'Chupa barrita'),
    (017, 'Tix Tix', 'Fizz'),
    (018, 'Milch', 'Barrita avellana'),
    (019, 'Milch', 'Avellana gigante'),
    (020, 'Milch', 'Tablilla de chocolate');

--@block

SELECT * FROM Marca;

-- @block
INSERT INTO Producto (id_prod, nombre, id_marca, precio, peso_neto)
VALUES
    (32584, 'Paleta Rockaleta' ,001, 10.00, 24.00),
    (65466, 'Rockaleta bites' ,001, 10.50, 30.00),
    (23156, 'Paleta Rockaleta Junior ',001, 7.00, 12.50), 
    (54484, 'Rockaleta bola',001, 10.00, 16.00),
    (98132, 'Mancha-T',001, 7.00, 50.00),
    (89794, 'Konstru-Y',002, 15.00, 49.00), 
    (56465, 'Moldeable' ,002, 15.00, 42.00), 
    (32614, 'Rockaleta paleta',001, 10.00, 24.00), 
    (31244, 'Rockaleta paleta',001, 10.00, 24.00);

-- @block 
SELECT * FROM Producto;

-- @block
INSERT INTO Sucursal (id_sucursal, nombre, dir, disponibilidad, empleados)
VALUES
    (872, 'Walmart', 'AV. 20 DE NOVIEMBRE NO. 1060', 'abierto','133'),
    (560, 'Superama', 'PLAZA CONSTITUCIÓN NO.1', 'abierto', '35' ),
    (691, 'Bodega Aurrera', 'CALLE ZARAGOZA NO. 1010', 'abierto', '20'),
    (987, 'Zorro ', 'AV. 20 DE NOVIEMBRE NO. 1060', 'cerrado','40'),
    (123, ' Costco', 'AV. 20 DE NOVIEMBRE NO. 1060', 'abierto','149'),
    (456, 'Neto', 'AV. INDEPENDENCIA NO. 545', 'cerrado','77'),
    (789, ' Tiendas 3B', 'BLVD. BENITO JUAREZ NO. 1466-A', 'abierto','97'),
    (729, 'Sams Club ', 'AV. 5 DE MAYO NO. 1652', 'abierto','32'),
    (753, 'Soriana', 'AV. INDEPENDENCIA NO. 985-A', 'abierto','150'),
    (951, 'Chedraui', 'BLVD. BENITO JUAREZ S / N', 'cerrado','24'),
    (852, 'Oxxo', 'AV. 5 DE MAYO NO 1100-A', 'abierto','143'),
    (369, 'City Club', 'AV. 5 DE MAYO NO 1253', 'cerrado','27'),
    (135, 'Comercial Mexicana', 'AV. INDEPENDENCIA NO 145', 'abierto','97'),
    (741, 'H-E-B', 'AV. 20 DE NOV. NO. 881 ESQ. ALDAMA', 'abierto','71'),
    (031, 'Abarrotes Doña Chuy', 'CALLE ALDAMA NO.50', 'abierto','43'),
    (001, 'LilyHoods', 'Av. Motomami23/24 colonia Saoke 6969', 'cerrado','105'),
    (561, ' Walmart', 'Paseo de los Gorylovers NO. 56', 'abierto','36'),
    (222, ' 7 eleven', 'INDEPENDENCIA 748', 'cerrado','34'),
    (632, 'Abarrotes Doña Concha', 'AV Ecatepec de Morelos 9666', 'abierto','25'),
    (454, 'Amazon', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (133, 'Liliana', 'Hernandez', 'abierto','73'),
    (35, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (20, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (40, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (149, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (77, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (97, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (71, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (43, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (105, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (36, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (34, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (25, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (73, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (28, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (16, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (41, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (23, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73'),
    (666, ' Walmart', 'AV. INDEPENDENCIA NO. 545-D', 'abierto','73');   
