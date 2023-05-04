create database ferreteria;
use ferreteria;
#----creando entidades sin FK
create table proveedor(id_proveedor int not null,
proveedor varchar (30),
primary key (id_proveedor));

create table cargos(id_cargo int not null,
cargo varchar (30),
primary key(id_cargo));

create table departamento(id_departamento int not null,
departamento varchar(30),
primary key(id_departamento));

create table zona(id_zona int not null,
zona int,
primary key(id_zona));

create table municipio(id_municipio int not null,
municipio varchar(30),
primary key(id_municipio));

create table ciudad(id_ciudad int not null,
ciudad varchar(30),
primary key(id_ciudad));

create table colonia(id_colonia int not null,
colonia varchar(30),
primary key(id_colonia));

create table tipo_herramienta(id_tipo_herramienta int not null,
tipo varchar(30),
primary key(id_tipo_herramienta));

#------creando entidades con FK
create table marca(id_marca int not null,
marca varchar(30),
id_proveedor int,
primary key(id_marca),
foreign key(id_marca) references proveedor(id_proveedor));

create table herramienta(id_herramienta int not null,
costo float,
precio float,
id_marca int,
id_tipo_herramienta int,
primary key(id_herramienta),
foreign key(id_marca) references marca(id_marca),
foreign key(id_tipo_herramienta) references tipo_herramienta(id_tipo_herramienta));

create table inventario(id_inventario int not null,
stock int,
herramientas int,
primary key(id_inventario),
foreign key(herramientas) references herramienta(id_herramienta));

create table colaboradores(id_colaboradores int not null,
nombres varchar(30),
apellidos varchar(30),
cargo int,
primary key(id_colaboradores),
foreign key(cargo) references cargos(id_cargo));

create table cliente(id_cliente int not null,
nombres varchar(30),
apellidos varchar(30),
departamento int,
municipio int,
zona int,
ciudad int,
colonia int,
nit varchar(15),
primary key(id_cliente),
foreign key(departamento) references departamento(id_departamento),
foreign key(municipio) references municipio(id_municipio),
foreign key(zona) references zona(id_zona),
foreign key(ciudad) references ciudad(id_ciudad),
foreign key(colonia) references colonia(id_colonia));

create table factura(id_factura integer not null,
cliente int,
inventario int,
colaborador int,
primary key(id_factura),
foreign key(cliente) references cliente(id_cliente),
foreign key(inventario) references inventario(id_inventario),
foreign key(colaborador) references colaboradores(id_colaboradores));

#----añadiendo información, entidades sin fk
insert into proveedor(id_proveedor, proveedor)
values(1,'Importadora Central S.A');
insert into proveedor(id_proveedor, proveedor)
values(2,'Importadora Amigos');
insert into proveedor(id_proveedor, proveedor)
values(3,'Importadora Express');
insert into proveedor(id_proveedor, proveedor)
values(4,'Importadora Arenal');
insert into proveedor(id_proveedor, proveedor)
values(5,'Importadora Unida');

insert into cargos(id_cargo, cargo)
values(1,'Gerente');
insert into cargos(id_cargo, cargo)
values(2,'cajero');
insert into cargos(id_cargo, cargo)
values(3,'Conserje');
insert into cargos(id_cargo, cargo)
values(4,'Contador');
insert into cargos(id_cargo, cargo)
values(5,'Guardia');

insert into departamento(id_departamento, departamento)
values(1,'Guatemala');
insert into departamento(id_departamento, departamento)
values(2,'Peten');
insert into departamento(id_departamento, departamento)
values(3,'Solola');
insert into departamento(id_departamento, departamento)
values(4,'Chiquimula');
insert into departamento(id_departamento, departamento)
values(5,'Alta Verapaz');

insert into zona(id_zona, zona)
values(1,1);
insert into zona(id_zona, zona)
values(2,2);
insert into zona(id_zona, zona)
values(3,3);
insert into zona(id_zona, zona)
values(4,4);
insert into zona(id_zona, zona)
values(5,5);

insert into municipio(id_municipio, municipio)
values(1,'Guatemala');
insert into municipio(id_municipio, municipio)
values(2,'San MIguel Petapa');
insert into municipio(id_municipio, municipio)
values(3,'Fraijanes');
insert into municipio(id_municipio, municipio)
values(4,'Villa NUeva');
insert into municipio(id_municipio, municipio)
values(5,'Villa Canales');

insert into ciudad(id_ciudad, ciudad)
values(1,'Guatemala');
insert into ciudad(id_ciudad, ciudad)
values(2,'Quetzal');
insert into ciudad(id_ciudad, ciudad)
values(3,'Antigua Guatemala');
insert into ciudad(id_ciudad, ciudad)
values(4,'Itza');
insert into ciudad(id_ciudad, ciudad)
values(5,'TIkal');

insert into colonia(id_colonia, colonia)
values(1,'San Raimundo');
insert into colonia(id_colonia, colonia)
values(2,'Villa Nueva');
insert into colonia(id_colonia, colonia)
values(3,'Prados');
insert into colonia(id_colonia, colonia)
values(4,'Villa Hermosa');
insert into colonia(id_colonia, colonia)
values(5,'San Cristobal');

insert into tipo_herramienta(id_tipo_herramienta, tipo)
values(1,'Martillo');
insert into tipo_herramienta(id_tipo_herramienta, tipo)
values(2,'Pala');
insert into tipo_herramienta(id_tipo_herramienta, tipo)
values(3,'Destornillador');
insert into tipo_herramienta(id_tipo_herramienta, tipo)
values(4,'Machete');
insert into tipo_herramienta(id_tipo_herramienta, tipo)
values(5,'Piocha');

#----añadiendo información, entidades con fk
insert into marca(id_marca, marca, id_proveedor)
values(1,'Philips',1);
insert into marca(id_marca, marca, id_proveedor)
values(2,'CAT',2);
insert into marca(id_marca, marca, id_proveedor)
values(3,'Truped',3);
insert into marca(id_marca, marca, id_proveedor)
values(4,'Vikingo',4);
insert into marca(id_marca, marca, id_proveedor)
values(5,'DeWalt',5);

insert into herramienta(id_herramienta, costo, precio, id_marca, id_tipo_herramienta)
values(1,15.50,11.20,1,1);
insert into herramienta(id_herramienta, costo, precio, id_marca, id_tipo_herramienta)
values(2,15.50,11.20,2,2);
insert into herramienta(id_herramienta, costo, precio, id_marca, id_tipo_herramienta)
values(3,15.50,11.20,3,3);
insert into herramienta(id_herramienta, costo, precio, id_marca, id_tipo_herramienta)
values(4,15.50,11.20,4,4);
insert into herramienta(id_herramienta, costo, precio, id_marca, id_tipo_herramienta)
values(5,15.50,11.20,5,5);

insert into inventario(id_inventario, stock, herramientas)
values(1,155,1);
insert into inventario(id_inventario, stock, herramientas)
values(2,55,2);
insert into inventario(id_inventario, stock, herramientas)
values(3,455,3);
insert into inventario(id_inventario, stock, herramientas)
values(4,15,4);
insert into inventario(id_inventario, stock, herramientas)
values(5,435,5);

insert into colaboradores(id_colaboradores, nombres, apellidos,cargo)
values(1,'Juan Pedrito','Hernzandez',1);
insert into colaboradores(id_colaboradores, nombres, apellidos,cargo)
values(2,'María','José',2);
insert into colaboradores(id_colaboradores, nombres, apellidos,cargo)
values(3,'José','María',3);
insert into colaboradores(id_colaboradores, nombres, apellidos,cargo)
values(4,'Gabriel','Cortez',4);
insert into colaboradores(id_colaboradores, nombres, apellidos,cargo)
values(5,'Karla','Catú',5);

insert into cliente(id_cliente, nombres, apellidos,departamento,municipio,zona,ciudad,colonia,nit)
values(1,'Abelardo','Franco',5,3,4,2,1,1214589-9);
insert into cliente(id_cliente, nombres, apellidos,departamento,municipio,zona,ciudad,colonia,nit)
values(2,'Camilo','Ortega',4,2,2,1,1,1217859-9);
insert into cliente(id_cliente, nombres, apellidos,departamento,municipio,zona,ciudad,colonia,nit)
values(3,'Josué','Quintero',1,3,3,5,2,1565789-9);
insert into cliente(id_cliente, nombres, apellidos,departamento,municipio,zona,ciudad,colonia,nit)
values(4,'Visente','Hernandez',4,1,5,3,1,1455789-9);
insert into cliente(id_cliente, nombres, apellidos,departamento,municipio,zona,ciudad,colonia,nit)
values(5,'Julia','Perez',1,3,2,4,2,1774189-9);

insert into factura(id_factura, cliente, inventario,colaborador)
values(1,4,3,2);
insert into factura(id_factura, cliente, inventario,colaborador)
values(2,2,1,5);
insert into factura(id_factura, cliente, inventario,colaborador)
values(3,3,2,3);
insert into factura(id_factura, cliente, inventario,colaborador)
values(4,1,5,4);
insert into factura(id_factura, cliente, inventario,colaborador)
values(5,5,1,3);