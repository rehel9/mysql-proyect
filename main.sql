CREATE TABLE `Productos`(
    `id` INT  NOT NULL PRIMARY KEY,
    `nombre` VARCHAR(255) NOT NULL,
    `marca` VARCHAR(255) NOT NULL,
    `precio` INT NOT NULL,
    `peso_neto` INT NOT NULL,
    FOREIGN KEY(`marca`) REFERENCES `Marcas`(`id`)
);
CREATE TABLE `Marcas`(
    `id` INT NOT NULL PRIMARY KEY,
    `nombre` VARCHAR(255) NOT NULL,
    `productos` VARCHAR(255) NOT NULL
);
CREATE TABLE `Sucursal`(
    `id` INT NOT NULL PRIMARY KEY,
    `nombre` VARCHAR(255) NOT NULL,
    `direccion` VARCHAR(255) NOT NULL,
    `disponibilidad` VARCHAR(255) NOT NULL,
    `empleados` INT NOT NULL,
    FOREIGN KEY(`empleados`) REFERENCES `Empleado`(`id`)
);
CREATE TABLE `Empleado`(
    `id` INT NOT NULL PRIMARY KEY,
    `nombre` INT NOT NULL,
    `apellido` INT NOT NULL,
    `edad` INT NOT NULL,
    `años_servicio` INT NOT NULL,
    `sueldo` INT NOT NULL,
    `sucursal` INT NOT NULL
);

INSERT INTO Marcas VALUES(001, 'Rockaleta', 'Paleta Rockaleta');
INSERT INTO Marcas VALUES(002, 'Rockaleta', 'Rockaleta bites');
INSERT INTO Marcas VALUES(003, 'Rockaleta', 'Paleta Rockaleta Junior');
INSERT INTO Marcas VALUES(004, 'Rockaleta', 'Rockaleta bola');
INSERT INTO Marcas VALUES(005, 'Rockaleta', 'Mancha-t');
INSERT INTO Marcas VALUES(006, 'Inspireka', 'Konstru-Y');
INSERT INTO Marcas VALUES(007, 'nspireka', 'Moldeable');
INSERT INTO Marcas VALUES(008, 'Inspireka', 'Arena Magica');
INSERT INTO Marcas VALUES(009, 'Inspireka', 'Pinta Frut');
INSERT INTO Marcas VALUES(010, 'nspireka', 'Armables');
INSERT INTO Marcas VALUES(011, 'Tix Tix', 'Paleta');
INSERT INTO Marcas VALUES(012, 'Tix Tix', 'Candy rolls');
INSERT INTO Marcas VALUES(013, 'Tix Tix', 'Gum');
INSERT INTO Marcas VALUES(014, 'Tix Tix','Tubi');
INSERT INTO Marcas VALUES(015, 'Tix Tix', 'Pastillon');
INSERT INTO Marcas VALUES(016, 'Tix Tix', 'Chupa barrita');
INSERT INTO Marcas VALUES(017, 'Tix Tix', 'Fizz');
INSERT INTO Marcas VALUES(018, 'Milch', 'Barrita avellana');
INSERT INTO Marcas VALUES(019, 'Milch', 'Avellana gigante');
INSERT INTO Marcas VALUES(020, 'Milch', 'Tablilla de chocolate');

select * from Marcas;

/*
INSERT INTO productos VALUES(32584, ‘Paleta Rockaleta’ ,001, 10.00, 24.00); 
INSERT INTO productos VALUES(65466, ‘Rockaleta bites’ ,001, 10.50, 30.00); 
INSERT INTO productos VALUES(23156, ‘Paleta Rockaleta Junior ’,001, 7.00, 12.50); 
INSERT INTO productos VALUES(54484, ‘Rockaleta bola’,001, 10.00, 16.00); 
INSERT INTO productos VALUES(98132, ‘Mancha-T’,001, 7.00, 50.00); 
INSERT INTO productos VALUES(89794, ‘Konstru-Y’,002, 15.00, 49.00); 
INSERT INTO productos VALUES(56465, ‘Moldeable’ ’,002, 15.00, 42.00); 
INSERT INTO productos VALUES(32584, ‘Rockaleta paleta’,001, 10.00, 24.00); 
INSERT INTO productos VALUES(32584, ‘Rockaleta paleta’,001, 10.00, 24.00); 
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘Superama´, ´PLAZA CONSTITUCIÓN NO.1´, ´abierto´, ´35´ );
INSERT INTO sucursal VALUES(872, ‘Bodega Aurrera´, ´PLAZA CONSTITUCIÓN NO.1´, ´abierto´, ´20´ );
INSERT INTO sucursal VALUES(872, ‘ ’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘Walmart’, ‘AV. 20 DE NOVIEMBRE NO.1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);
INSERT INTO sucursal VALUES(872, ‘ Walmart’, ‘AV. 20 DE NOVIEMBRE NO. 1060’, ‘abierto’,’133’);

*/
