INSERT INTO regiones  (id,nombre) VALUES(1,'Sudamérica');
INSERT INTO regiones  (id,nombre) VALUES(2,'Centroamérica');
INSERT INTO regiones  (id,nombre) VALUES(3,'Norteamérica');
INSERT INTO regiones  (id,nombre) VALUES(4,'Europa');
INSERT INTO regiones  (id,nombre) VALUES(5,'Asia');
INSERT INTO regiones  (id,nombre) VALUES(6,'Africa');
INSERT INTO regiones  (id,nombre) VALUES(7,'Oceanía');
INSERT INTO regiones  (id,nombre) VALUES(8,'Antártida');


INSERT INTO clientes (id,nombre, apellido, email, create_at,region_id) VALUES(1,'Camilo', 'Rodriguez', 'profesor@gmail.com', '2017-08-28',1);
INSERT INTO clientes (id,nombre, apellido, email, create_at,region_id) VALUES(2,'John', 'Doe', 'john.doe@gmail.com', '2017-08-28',2);
INSERT INTO clientes (id,nombre, apellido, email, create_at,region_id) VALUES(3,'Diana', 'Tarazona', 'diana.tarazona@gmail.com', '2017-08-28',3);
INSERT INTO clientes (id,nombre, apellido, email, create_at,region_id) VALUES(4,'Diego', 'Rangel', 'diego.rangel@gmail.com', '2017-08-28',4);
INSERT INTO clientes (id,nombre, apellido, email, create_at,region_id) VALUES(5,'Karol', 'Reyes', 'karlo.reyes@gmail.com', '2017-08-28',5);
INSERT INTO clientes (id,nombre, apellido, email, create_at,region_id) VALUES(6,'Julian', 'Nieto', 'julian.nieto@gmail.com', '2017-08-28',6);
INSERT INTO clientes (id,nombre, apellido, email, create_at,region_id) VALUES(7,'Jairo', 'Bermudez', 'jairo.bermudez@gmail.com', '2017-08-28',7);

INSERT INTO productos (id,nombre, precio, create_at) VALUES(1,'Panasonic Pantall LCD',1500000,NOW());
INSERT INTO productos (id,nombre, precio, create_at) VALUES(2,'Sony camara digital DSC-W23455',2800000,NOW());
INSERT INTO productos (id,nombre, precio, create_at) VALUES(3,'Apple ipod',1500000,NOW());
INSERT INTO productos (id,nombre, precio, create_at) VALUES(4,'Table samsung galaxy A7',1200000,NOW());
INSERT INTO productos (id,nombre, precio, create_at) VALUES(5,'Acer laptod 25-1tb', 3000000, NOW());
INSERT INTO productos (id,nombre, precio, create_at) VALUES(6,'Garming For runner 245',1500000,NOW());
INSERT INTO productos (id,nombre, precio, create_at) VALUES(7,'Nikon Pro X589',2850000,NOW());


INSERT INTO facturas (id,descripcion, observacion, cliente_id, create_at) VALUES(1,'Factura de equipos de oficina',null,1,NOW());

INSERT INTO facturas_items (id,cantidad, factura_id, producto_id) VALUES(1,1,1,1);
INSERT INTO facturas_items (id,cantidad, factura_id, producto_id) VALUES(2,2,1,4);
INSERT INTO facturas_items (id,cantidad, factura_id, producto_id) VALUES(3,1,1,5);
INSERT INTO facturas_items (id,cantidad, factura_id, producto_id) VALUES(4,1,1,7);

INSERT INTO facturas (id,descripcion, observacion, cliente_id, create_at) VALUES(2,'Factura Bicicleta','Alguna nota importante',1,NOW());
INSERT INTO facturas_items (id,cantidad, factura_id, producto_id) VALUES(5,3,2,6);

INSERT INTO usuarios (id,username,password,enabled,nombre,apellido,email) VALUES (1,'camilo','$2a$10$RjoqVQboUw3fjhX7m67usuZ210DAgy/W6Bt2SYr1zyqLPBTb61NnC',true,'Camilo','Rodriguez','cerodriguez@gamil.com');
INSERT INTO usuarios (id,username,password,enabled,nombre,apellido,email) VALUES (2,'admin','$2a$10$RjoqVQboUw3fjhX7m67usuZ210DAgy/W6Bt2SYr1zyqLPBTb61NnC',true,'Admin','Root','admin@gamil.com');


INSERT INTO roles (id,nombre) VALUES(1,'ROLE_USER');
INSERT INTO roles (id,nombre) VALUES(2,'ROLE_ADMIN');

INSERT INTO usuarios_roles (usuario_id,role_id) VALUES(1,1)
INSERT INTO usuarios_roles (usuario_id,role_id) VALUES(2,1)
INSERT INTO usuarios_roles (usuario_id,role_id) VALUES(2,2)

