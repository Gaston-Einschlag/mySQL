-- Ejercitacion
-- Realizar una abstraccion de un sistema que quieran realizar (se puede trabajar con el ejercicio que usamos para el checkpoint de Javascript, el sistema de cafe bootstrap).









-- Buscar datos en la tabla.
-- Realizar 5 tipos de consultas distintas sobre la tabla creada.


-- Crear una base de datos que almacene productos.
-- Esta tabla debe contener al menos 5 campos que hagan referencia a un producto. El id deben ser int, autoincremental y not nulo
CREATE DATABASE manifestoCafe;

USE manifestoCafe;
CREATE TABLE products (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, product VARCHAR(30), price FLOAT(2), origin VARCHAR(30), quantity INT, productdescription VARCHAR(200), stock BOOLEAN);



-- Insertar datos
-- Por lo menos se deben ingresar 8 productos a la base de datos
INSERT INTO products (id, product, price, origin, quantity, productdescription, stock)
VALUES ("001", "Minas Gerais", "1390.00", "Brasil", "250", "Azúcar mascabo, fruta madura y chocolate.", "1");

INSERT INTO products (id, product, price, origin, quantity, productdescription, stock)
VALUES ("002", "Matagalpa", "1950.00", "Nicaragua", "250", "Chocolate con leche, manteca de cacao y nuez.", "0");

INSERT INTO products (id, product, price, origin, quantity, productdescription, stock)
VALUES ("003", "Minas Gerais", "4490.00", "Brasil", "1000", "Azúcar mascabo, fruta madura y chocolate.",  "0");

INSERT INTO products (id, product, price, origin, quantity, productdescription, stock)
VALUES ("004", "Descubrí+", "3890.00", "Nicaragua, Mexico, Vietnam", "750", "1 Mexico 250g, 1 Nicaragua 250g, 1 Vietnam 250g, Todos estos cafés fueron recién tostados para vos.", "1");

INSERT INTO products (id, product, price, origin, quantity, productdescription, stock)
VALUES ("005", "Chuspa", "1100.00", "Blend", "250", "Notas a Crema & Caramelo", "1");

INSERT INTO products (id, product, price, origin, quantity, productdescription, stock)
VALUES ("006", "Cajamarca", "1650.00", "Perú", "250", "Dulce, ciruela y frutas cítricas.", "1");

INSERT INTO products (id, product, price, origin, quantity, productdescription, stock)
VALUES ("007", "Crema", "920.00", "Brasil", "250", "Aroma intenso a chocolate, cuerpo redondo intenso a chocolate amargo, retrogusto intenso", "1");

INSERT INTO products (id, product, price, origin, quantity, productdescription, stock)
VALUES ("008", "Santander", "4890.00", "Colombia", "1000", "Azúcar morena, miel y cacao.", "1");



-- Actualizar registros
-- Por lo menos realizar 3 actaulizaciones de registros
-- first update
SELECT id, stock
FROM products;

UPDATE products
SET stock = 0
WHERE id = 7;

SELECT id, stock
FROM products;

-- second update
SELECT id, price
FROM products;

UPDATE products
SET price = 5820
WHERE id = 008;

SELECT id, price
FROM products;

-- third update
SELECT id, origin  
FROM products;

UPDATE products
SET origin = 'Nicaragua'
WHERE id = 005;

SELECT id, origin
FROM products;



-- Eliminar registro
-- Eliminar un registro (cuando los profes pasen a ver su base de dato)
SELECT id, stock  
FROM products;


DELETE FROM products 
WHERE stock = 0;

SELECT id, stock  
FROM products;