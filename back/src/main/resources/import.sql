INSERT INTO regiones  (id,nombre) VALUES(1,'Sudamérica')
INSERT INTO regiones  (id,nombre) VALUES(2,'Centroamérica')
INSERT INTO regiones  (id,nombre) VALUES(3,'Norteamérica')
INSERT INTO regiones  (id,nombre) VALUES(4,'Europa')
INSERT INTO regiones  (id,nombre) VALUES(5,'Asia')
INSERT INTO regiones  (id,nombre) VALUES(6,'Africa')
INSERT INTO regiones  (id,nombre) VALUES(7,'Oceanía')
INSERT INTO regiones  (id,nombre) VALUES(8,'Antártida')


INSERT INTO clientes (nombre, apellido, email, create_at,region_id) VALUES('Camilo', 'Rodriguez', 'profesor@gmail.com', '2017-08-28',1);
INSERT INTO clientes (nombre, apellido, email, create_at,region_id) VALUES('John', 'Doe', 'john.doe@gmail.com', '2017-08-28',2);
INSERT INTO clientes (nombre, apellido, email, create_at,region_id) VALUES('Diana', 'Tarazona', 'diana.tarazona@gmail.com', '2017-08-28',3);
INSERT INTO clientes (nombre, apellido, email, create_at,region_id) VALUES('Diego', 'Rangel', 'diego.rangel@gmail.com', '2017-08-28',4);
INSERT INTO clientes (nombre, apellido, email, create_at,region_id) VALUES('Karol', 'Reyes', 'karlo.reyes@gmail.com', '2017-08-28',5);
INSERT INTO clientes (nombre, apellido, email, create_at,region_id) VALUES('Julian', 'Nieto', 'julian.nieto@gmail.com', '2017-08-28',6);
INSERT INTO clientes (nombre, apellido, email, create_at,region_id) VALUES('Jairo', 'Bermudez', 'jairo.bermudez@gmail.com', '2017-08-28',7);

INSERT INTO productos (nombre, precio, create_at) VALUES("Panasonic Pantall LCD",1500000,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES("Sony camara digital DSC-W23455",2800000,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES("Apple ipod",1500000,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES("Table samsung galaxy A7",1200000,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES("Acer laptod 25'-1tb", 3000000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES("Garming For runner 245",1500000,NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES("Nikon Pro X589",2850000,NOW());


INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES("Factura de equipos de oficina",null,1,NOW());

INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1,1,1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2,1,4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1,1,5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1,1,7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES("Factura Bicicleta","Alguna nota importante",1,NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3,2,6);

INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) VALUES ("camilo","$2a$10$jNFVzVbRZwMrxAa7W0iYV.Y71NU2n4KZ7VE2GU2MOauu7WngCeDSe",true,"Camilo","Rodriguez","cerodriguez@gamil.com");
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) VALUES ("admin","$2a$10$RxngK./MqZHdeDn/rFZZk.1OlEDRi1czuvojQ20kVD0047G/WQPJu",true,"Admin","Root","admin@gamil.com");


INSERT INTO roles (nombre) VALUES("ROLE_USER");
INSERT INTO roles (nombre) VALUES("ROLE_ADMIN");

INSERT INTO usuarios_roles (usuario_id,role_id) VALUES(1,1)
INSERT INTO usuarios_roles (usuario_id,role_id) VALUES(2,1)
INSERT INTO usuarios_roles (usuario_id,role_id) VALUES(2,2)
