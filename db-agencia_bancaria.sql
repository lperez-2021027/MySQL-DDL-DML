create database agencia_bancaria;
use agencia_bancaria;

create table Cuenta_habiente( id_cuenta_habiente integer not null,
nombre varchar(50),
apellido varchar(50),
direccion varchar(50),
telefono integer,
primary key(id_cuenta_habiente));

create table tipo_tarjeta( id_tipo_tarjeta integer not null,
tipo_tarjeta varchar(50),
intereses decimal(2,2),
primary key(id_tipo_tarjeta));

create table tipo_cuenta( id_tipo_cuenta integer not null,
tipo_cuenta varchar(50),
primary key(id_tipo_cuenta));

create table zona( id_zona integer not null,
direccion varchar(50),
primary key(id_zona));

create table colonia( id_colonia integer not null,
direccion varchar(50),
primary key(id_colonia));

create table municipio( id_municipio integer not null,
direccion varchar(50),
primary key(id_municipio));

create table departamento( id_departamento integer not null,
direccion varchar(50),
primary key(id_departamento));

create table sucursales( id_sucursales integer not null,
nombre varchar(50),
id_zona integer,
id_colonia integer,
id_municipio integer,
id_departamento integer,
primary key(id_sucursales),
foreign key(id_zona) references zona(id_zona),
foreign key(id_colonia) references colonia(id_colonia),
foreign key(id_municipio) references municipio(id_municipio),
foreign key(id_departamento) references departamento(id_departamento));

create table empleado( id_empleado integer not null,
nombre varchar(50),
apellido varchar(50),
telefono integer,
edad integer,
primary key(id_empleado));

create table cuenta_mancomunada(id_cuenta_mancomunada integer not null,
id_cuenta_habiente integer,
numero_cuenta integer,
primary key(id_cuenta_mancomunada),
foreign key (id_cuenta_habiente) references cuenta_habiente(id_cuenta_habiente));

create table transaccion( id_transaccion integer not null,
tipo_transaccion varchar(50),
id_tipo_tarjeta integer,
id_empleado integer,
id_sucursales integer,
primary key(id_transaccion),
foreign key(id_tipo_tarjeta) references tipo_tarjeta(id_tipo_tarjeta),
foreign key(id_sucursales) references sucursales(id_sucursales),
foreign key(id_empleado) references empleado(id_empleado));

create table asignar_cuenta( id_asignar_cuenta integer not null,
id_tipo_cuenta integer,
id_cuenta_habiente integer,
id_sucursales integer,
primary key(id_asignar_cuenta),
foreign key(id_tipo_cuenta)references tipo_cuenta(id_tipo_cuenta),
foreign key(id_cuenta_habiente)references cuenta_habiente(id_cuenta_habiente),
foreign key(id_sucursales)references sucursales(id_sucursales));

create table asignar_tarjeta( id_asignar_tarjeta integer not null,
id_tipo_tarjeta integer,
id_cuenta_habiente integer,
id_sucursales integer,
primary key(id_asignar_tarjeta),
foreign key(id_tipo_tarjeta) references tipo_tarjeta(id_tipo_tarjeta),
foreign key(id_cuenta_habiente) references cuenta_habiente(id_cuenta_habiente),
foreign key(id_sucursales) references sucursales(id_sucursales));

create table asignar_empleado(id_asignar_empleado integer not null,
id_empleado integer,
id_sucursales integer,
primary key(id_asignar_empleado),
foreign key(id_empleado) references empleado(id_empleado),
foreign key(id_sucursales) references sucursales(id_sucursales));

insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (1,'Juan','Perez','16av zona4','34685465');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (2,'Miguel','Castillo','15av zona5','31854648');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (3,'Jose','Herrera','5av zona7','31846522');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (4,'Pancho','Martinez','1av zona4','69864125');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (5,'Andres','Ramirez','15av zona1','31687954');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (6,'Diego','Arriola','20av zona5','94613526');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (7,'Rene','Ruiz','4av zona4','31685462');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (8,'Pablo','Mendez','5av zona5','31685494');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (9,'Josue','Fernandez','1av zona1','45648246');
insert into Cuenta_habiente(id_cuenta_habiente,nombre,apellido,direccion,telefono)
values (10,'Maria','Rodriguez','21av zona10','75361864');

insert into tipo_tarjeta(id_tipo_tarjeta,tipo_tarjeta,intereses)
values (1,'clasica','0.30');
insert into tipo_tarjeta(id_tipo_tarjeta,tipo_tarjeta,intereses)
values (2,'oro','0.15');
insert into tipo_tarjeta(id_tipo_tarjeta,tipo_tarjeta,intereses)
values (3,'platino','0.12');
insert into tipo_tarjeta(id_tipo_tarjeta,tipo_tarjeta,intereses)
values (4,'premium','0.10');
insert into tipo_tarjeta(id_tipo_tarjeta,tipo_tarjeta,intereses)
values (5,'diamante','0.5');

insert into tipo_cuenta(id_tipo_cuenta,tipo_cuenta)
values (1,'ahorro');
insert into tipo_cuenta(id_tipo_cuenta,tipo_cuenta)
values (2,'nómina');
insert into tipo_cuenta(id_tipo_cuenta,tipo_cuenta)
values (3,'chequera');
insert into tipo_cuenta(id_tipo_cuenta,tipo_cuenta)
values (4,'mancomunada');
insert into tipo_cuenta(id_tipo_cuenta,tipo_cuenta)
values (5,'monetaria');

insert into zona(id_zona,direccion)
values (1,'zona3');
insert into zona(id_zona,direccion)
values (2,'zona5');
insert into zona(id_zona,direccion)
values (3,'zona4');
insert into zona(id_zona,direccion)
values (4,'zona11');
insert into zona(id_zona,direccion)
values (5,'zona9');
insert into zona(id_zona,direccion)
values (6,'zona6');

insert into colonia(id_colonia,direccion)
values (1,'quetzal');
insert into colonia(id_colonia,direccion)
values (2,'modelo I');
insert into colonia(id_colonia,direccion)
values (3,'modelo II');
insert into colonia(id_colonia,direccion)
values (4,'popular');
insert into colonia(id_colonia,direccion)
values (5,'entre rios');
insert into colonia(id_colonia,direccion)
values (6,'la independencia');

insert into municipio(id_municipio,direccion)
values (1,'amatitlan');
insert into municipio(id_municipio,direccion)
values (2,'guatemal');
insert into municipio(id_municipio,direccion)
values (3,'chinautla');
insert into municipio(id_municipio,direccion)
values (4,'mixco');
insert into municipio(id_municipio,direccion)
values (5,'palencia');
insert into municipio(id_municipio,direccion)
values (6,'fraijanes');

insert into departamento(id_departamento,direccion)
values (1,'chimaltenango');
insert into departamento(id_departamento,direccion)
values (2,'escuintla');
insert into departamento(id_departamento,direccion)
values (3,'peten');
insert into departamento(id_departamento,direccion)
values (4,'izabal');
insert into departamento(id_departamento,direccion)
values (5,'baja verapaz');
insert into departamento(id_departamento,direccion)
values (6,'alta verapaz');

insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (1,'sucursal1',1,3,5,4);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (2,'sucursal2',6,3,2,4);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (3,'sucursal3',5,3,4,2);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (4,'sucursal4',6,3,1,4);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (5,'sucursal5',5,2,3,1);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (6,'sucursal6',1,3,4,2);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (7,'sucursal7',5,1,3,2);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (8,'sucursal8',6,2,3,1);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (9,'sucursal9',5,3,2,1);
insert into sucursales(id_sucursales,nombre,id_zona,id_colonia,id_municipio,id_departamento)
values (10,'sucursal10',4,3,6,1);

insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (1,'Julian','Gutierrez','34685495','18');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (2,'Gabriel','Salazar','31685468','21');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (3,'Bob','Monterrozo','31685468','30');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (4,'Roberto','Rodriguez','34685468','28');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (5,'Marta','Martinez','31685497','22');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (6,'Juana','Ramirez','64859487','19');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (7,'Sofia','Rosario','648549751','32');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (8,'Adriana','Diaz','15468975','22');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (9,'Marcos','Guerrero','68549564','18');
insert into empleado(id_empleado,nombre,apellido,telefono,edad)
values (10,'Alan','Figueroa','78469564','24');

insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (1,202,2);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (2,203,9);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (3,204,7);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (4,205,5);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (5,202,3);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (6,207,3);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (7,208,1);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (8,209,6);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (9,210,10);
insert into cuenta_mancomunada(id_cuenta_mancomunada,numero_cuenta,id_cuenta_habiente)
values (10,211,4);

insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (1,'pagos de nomina',2,3);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (2,'retiro',1,5);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (3,'creacion de tarjeta',3,6);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (4,'pagos de nomina',5,2);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (5,'deposito',2,4);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (6,'pagos dividendos',3,4);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (7,'remesa',2,2);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (8,'creacion de tarjeta',3,9);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (9,'creacion de tarjeta',5,7);
insert into transaccion(id_transaccion,tipo_transaccion,id_sucursales,id_empleado)
values (10,'remesa',3,10);

insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (1,1,4,3);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (2,3,10,5);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (3,4,3,1);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (4,5,4,3);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (5,4,9,2);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (6,4,2,1);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (7,1,6,3);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (8,1,1,5);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (9,2,4,1);
insert into asignar_cuenta(id_asignar_cuenta,id_tipo_cuenta,id_cuenta_habiente,id_sucursales)
values (10,1,8,5);

insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (1,2,4,1);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (2,5,8,2);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (3,2,10,9);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (4,2,2,1);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (5,1,6,2);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (6,2,3,5);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (7,4,7,4);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (8,5,5,8);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (9,2,1,9);
insert into asignar_tarjeta(id_asignar_tarjeta,id_tipo_tarjeta,id_cuenta_habiente,id_sucursales)
values (10,5,9,4);

insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (1,6,5);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (2,1,2);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (3,5,3);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (4,10,4);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (5,5,6);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (6,8,9);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (7,6,4);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (8,3,1);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (9,9,5);
insert into asignar_empleado(id_asignar_empleado,id_empleado,id_sucursales)
values (10,7,10);

select sucursales.nombre,count(id_empleado) as empleados_por_sucursales from asignar_empleado,sucursales where sucursales.nombre='sucursal5' and asignar_empleado.id_sucursales=sucursales.id_sucursales;

select cuenta_mancomunada.numero_cuenta,Cuenta_habiente.nombre from cuenta_mancomunada,Cuenta_habiente,asignar_cuenta,tipo_cuenta where asignar_cuenta.id_tipo_cuenta=4 and asignar_cuenta.id_tipo_cuenta=tipo_cuenta.id_tipo_cuenta 
and asignar_cuenta.id_cuenta_habiente=Cuenta_habiente.id_cuenta_habiente and Cuenta_habiente.id_cuenta_habiente=cuenta_mancomunada.id_cuenta_habiente;

select cuenta_mancomunada.numero_cuenta,Cuenta_habiente.nombre from cuenta_mancomunada,Cuenta_habiente,asignar_cuenta,tipo_cuenta where Cuenta_habiente.nombre='Jose' and asignar_cuenta.id_tipo_cuenta=tipo_cuenta.id_tipo_cuenta 
and asignar_cuenta.id_cuenta_habiente=Cuenta_habiente.id_cuenta_habiente and Cuenta_habiente.id_cuenta_habiente=cuenta_mancomunada.id_cuenta_habiente;

select count(asignar_cuenta.id_cuenta_habiente) as cuen_hab_sucursal,sucursales.nombre from asignar_cuenta,sucursales where sucursales.nombre='sucursal3' and sucursales.id_sucursales=asignar_cuenta.id_sucursales;

select empleado.nombre,empleado.apellido from empleado,sucursales,asignar_empleado where sucursales.nombre='sucursal4' and sucursales.id_sucursales=asignar_empleado.id_sucursales and empleado.id_empleado=asignar_empleado.id_empleado order by apellido asc;
select empleado.nombre,empleado.apellido from empleado,sucursales,asignar_empleado where sucursales.nombre='sucursal4' and sucursales.id_sucursales=asignar_empleado.id_sucursales and empleado.id_empleado=asignar_empleado.id_empleado order by apellido desc;


select count(asignar_cuenta.id_cuenta_habiente) as cuen_hab_ahorro,sucursales.nombre from Cuenta_habiente,asignar_cuenta,tipo_cuenta,sucursales where sucursales.nombre='sucursal5' and sucursales.id_sucursales=asignar_cuenta.id_sucursales and asignar_cuenta.id_tipo_cuenta=tipo_cuenta.id_tipo_cuenta 
and asignar_cuenta.id_cuenta_habiente=Cuenta_habiente.id_cuenta_habiente and tipo_cuenta.tipo_cuenta='ahorro';

select Cuenta_habiente.nombre as nombres_cuen_hab_ahorro,sucursales.nombre from Cuenta_habiente,asignar_cuenta,tipo_cuenta,sucursales where sucursales.nombre='sucursal5' and sucursales.id_sucursales=asignar_cuenta.id_sucursales and asignar_cuenta.id_tipo_cuenta=tipo_cuenta.id_tipo_cuenta 
and asignar_cuenta.id_cuenta_habiente=Cuenta_habiente.id_cuenta_habiente and tipo_cuenta.tipo_cuenta='ahorro';

select count(transaccion.tipo_transaccion) as conteo_tarjetas,sucursales.nombre from transaccion,sucursales where sucursales.nombre='sucursal3' and sucursales.id_sucursales=transaccion.id_sucursales and transaccion.tipo_transaccion='creacion de tarjeta'