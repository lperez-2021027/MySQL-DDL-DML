create database control_musica;
use control_musica;
##---creado tablas sin FK
create table usuario(id_usuario int not null,
nombres varchar (30),
apellidos varchar (30),
nombre_usuario varchar (15),
contraseña varchar (30),
pais varchar (20),
fecha_nacimiento date,
correo_electronico varchar (30),
primary key (id_usuario));

create table metodo_pago(id_metodo int not null,
nombre varchar (30),
primary key(id_metodo));

create table tipo_plan(id_plan int not null,
nombre varchar (30),
precio float,
vencimiento date,
primary key(id_plan));

create table genero(id_genero int not null,
nombre varchar (30),
primary key(id_genero));
##--------creando tablas con FK

create table cuenta(id_cuenta int not null,
id_metodo int,
id_plan int,
id_usuario int,
primary key(id_cuenta),
foreign key(id_metodo) references metodo_pago(id_metodo),
foreign key(id_plan) references tipo_plan(id_plan),
foreign key(id_usuario) references usuario(id_usuario));

##---olvide que artista es tabla sin FK :c
create table artista(id_artista int not null, 
nombre varchar (35),
primary key(id_artista));

create table album(id_album int not null,
nombre varchar(30),
id_artista int,
primary key(id_album),
foreign key (id_artista) references artista(id_artista));

create table sencillo(id_sencillo int not null,
duracion float,
id_album int,
id_artista int,
primary key(id_sencillo),
foreign key (id_album) references album(id_album),
foreign key (id_artista) references artista(id_artista));

create table genero_album(id_genero_album int not null,
id_album int,
id_genero int,
primary key(id_genero_album),
foreign key(id_album) references album(id_album),
foreign key(id_genero) references genero(id_genero));

create table genero_sencillo(id_genero_sencillo int not null,
id_sencillo int,
id_genero int,
primary key(id_genero_sencillo),
foreign key(id_sencillo) references sencillo(id_sencillo),
foreign key(id_genero) references genero(id_genero));

create table asignar_lista(id_asignar_lista int not null,
id_cuenta int,
nombre_lista varchar(30),
primary key(id_asignar_lista),
foreign key(id_cuenta) references cuenta(id_cuenta));

create table lista_reproduccion(id_lista_repro int not null,
nombre_lista int,
reproducciones int,
id_sencillo int,
id_genero int,
primary key(id_lista_repro),
foreign key(nombre_lista) references asignar_lista(id_asignar_lista));

##------Añadiendo datos a tablas sin FK

insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (1,'Juan','Perez','JuanitoPE','juanito1','Guatemala','2000-06-21','juanito01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (2,'Pedro','Ramirez','ramirez01','RamirezGT','Guatemala','2004-04-11','ramirez01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (3,'Jaime','Salas','Salasito','Salas00','Mexico','2001-11-13','jaime01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (4,'Carlos','Estrada','Carlozz','Carlos1','Mexico','2005-01-01','carlos01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (5,'Julio','Hernandez','JulioE','julionero1','Chile','1998-06-15','julio01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (6,'Juarez','Asturia','Juarezzz','juarez01','Guatemala','2003-10-28','juarez01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (7,'Jose','Franco','JoseFran','FRanco01','Chile','2001-03-31','jose01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (8,'Jason','Smith','JasonLive','JasosnX','USA','2005-09-01','jason01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (9,'Laura','Perez','LaurelPE','LauraNOESTA','Mexico','2009-01-21','Laurita01@gmail.com');
insert into usuario(id_usuario,nombres,apellidos,nombre_usuario,contraseña,pais,fecha_nacimiento,correo_electronico)
values (10,'Jvne','Lvna','LynUwU','LYN010','Guatemala','2005-01-29','lyn01@gmail.com');

insert into metodo_pago(id_metodo,nombre)
values(1,'Pay Pal');
insert into metodo_pago(id_metodo,nombre)
values(2,'Mastercard');
insert into metodo_pago(id_metodo,nombre)
values(3,'Tarjeta Debito');

insert into tipo_plan(id_plan,nombre,precio,vencimiento)
values(1,'Basico',10.50,'2021-10-14');
insert into tipo_plan(id_plan,nombre,precio,vencimiento)
values(2,'Medium',18.50,'2021-11-24');
insert into tipo_plan(id_plan,nombre,precio,vencimiento)
values(3,'Pro',24.50,'2021-12-31');
insert into tipo_plan(id_plan,nombre,precio,vencimiento)
values(4,'Pro Master',10.50,'2022-01-28');

insert into genero(id_genero,nombre)
values(1,'EDM');
insert into genero(id_genero,nombre)
values(2,'Drum and Bass');
insert into genero(id_genero,nombre)
values(3,'Dupstep');
insert into genero(id_genero,nombre)
values(4,'Rock');
insert into genero(id_genero,nombre)
values(5,'Dead Metal');
insert into genero(id_genero,nombre)
values(6,'Clasica');
insert into genero(id_genero,nombre)
values(7,'Regge');
insert into genero(id_genero,nombre)
values(8,'Jazz');
insert into genero(id_genero,nombre)
values(9,'Hip Hop');
insert into genero(id_genero,nombre)
values(10,'Rap');

insert into artista(id_artista,nombre)
values(1,'Sewerslvt');
insert into artista(id_artista,nombre)
values(2,'Bob Marley');
insert into artista(id_artista,nombre)
values(3,'Skrillex');
insert into artista(id_artista,nombre)
values(4,'Bring Me The Horizon');
insert into artista(id_artista,nombre)
values(5,'Chayanne');
##------añadiendo datos a tablas con FK
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(1,1,3,1);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(2,1,1,2);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(3,3,4,3);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(4,2,2,4);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(5,3,1,5);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(6,2,3,6);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(7,3,4,7);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(8,1,1,8);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(9,3,2,9);
insert into cuenta(id_cuenta,id_metodo,id_plan,id_usuario)
values(10,2,4,10);

insert into album(id_album,nombre,id_artista)
values(1,'Skitzofrenia Simulation',1);
insert into album(id_album,nombre,id_artista)
values(2,'Tiempo de Vals',5);
insert into album(id_album,nombre,id_artista)
values(3,'Recess',2);
insert into album(id_album,nombre,id_artista)
values(4,'Tributo',3);
insert into album(id_album,nombre,id_artista)
values(5,'sempiternal',4);

insert into sencillo(id_sencillo,duracion,id_artista,id_album)
values(1,6.30,1,1);
insert into sencillo(id_sencillo,duracion,id_artista,id_album)
values(2,5.10,2,4);
insert into sencillo(id_sencillo,duracion,id_artista,id_album)
values(3,2.30,4,2);
insert into sencillo(id_sencillo,duracion,id_artista,id_album)
values(4,3.30,5,3);
insert into sencillo(id_sencillo,duracion,id_artista,id_album)
values(5,2.30,4,5);

insert into genero_sencillo(id_genero_sencillo,id_sencillo,id_genero)
values(1,1,1);
insert into genero_sencillo(id_genero_sencillo,id_sencillo,id_genero)
values(2,2,5);
insert into genero_sencillo(id_genero_sencillo,id_sencillo,id_genero)
values(3,4,3);
insert into genero_sencillo(id_genero_sencillo,id_sencillo,id_genero)
values(4,5,2);
insert into genero_sencillo(id_genero_sencillo,id_sencillo,id_genero)
values(5,3,4);

insert into genero_album(id_genero_album,id_album,id_genero)
values(1,3,4);
insert into genero_album(id_genero_album,id_album,id_genero)
values(2,2,1);
insert into genero_album(id_genero_album,id_album,id_genero)
values(3,1,2);
insert into genero_album(id_genero_album,id_album,id_genero)
values(4,3,3);
insert into genero_album(id_genero_album,id_album,id_genero)
values(5,4,5);

insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(1,10,'Mañaneras');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(2,9,'Para baños');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(3,8,'Limpiar la casa');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(4,7,'Disfrutando café');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(5,6,'Comiendo');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(6,5,'Para correr');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(7,4,'Relajado');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(8,3,'En las nubes');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(9,2,'Para pensar Señores');
insert into asignar_lista(id_asignar_lista,id_cuenta,nombre_lista)
values(10,1,'Random');

insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(1,10,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(2,9,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(3,8,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(4,7,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(5,6,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(6,5,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(7,4,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(8,3,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(9,2,12,1,1);
insert into lista_reproduccion(id_lista_repro,nombre_lista,reproducciones,id_sencillo,id_genero)
values(10,1,12,1,1);