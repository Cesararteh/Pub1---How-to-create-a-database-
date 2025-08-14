CREATE SCHEMA vitivinicola;
USE vitivinicola;

-- Crear tablas
CREATE TABLE productos (
id_producto int primary key not null,
nombre varchar(50) not null,
tipo_producto varchar(40) not null,
ano_produccion year not null,
precio_unitario float not null,
stock_actual int not null);
CREATE TABLE clientes (
id_cliente int primary key not null,
nombre_cliente varchar(50) not null,
correo varchar(70) not null,
telefono int not null,
ciudad varchar(40) not null,
pais varchar(50) not null);
CREATE TABLE pedidos (
id_pedido int primary key not null,
fecha_pedido datetime not null default current_timestamp,
id_cliente varchar(70) not null, -- Clave foranea
total_pedido int not null);
CREATE TABLE detalle_pedido (
id_pedido int not null,   -- Clave foranea
id_producto int not null,  -- Clave foranea
cantidad int not null,
precio_unitario int not null);
CREATE TABLE proveedores (
id_proveedor int primary key not null,
nombre_proveedor varchar(50) not null,
producto_suministrado varchar(70) not null,
telefono int not null);
CREATE TABLE produccion (
id_lote int primary key not null,
id_producto varchar(50) not null, -- Clave foranea
fecha_producida date not null,
cantidad_producida int not null,
responsable varchar(50) not null);
CREATE TABLE c_calidad (
id_control int primary key not null,
id_lote varchar(50) not null, -- Clave foranea
densidad float not null,
ph decimal(4,2) not null,
grado_alcohol decimal(5,2) not null,
resultado varchar(15) not null);

