create schema vehiculos authorization tqmkpqre

/*
 				TABLA MODELOS DE COCHE
 */

-- Tabla modelos_coche
create table vehiculos.modelo_coches(
	id_coche varchar(10) not null, --PK
	modelo varchar(50) not null,
	id_marca varchar(50) not null, --FK
	id_grupo_empresarial varchar(50) not null, --FK
	anio int not null,
	matricula varchar(50) not null,
	id_color varchar(50) not null, --FK
	total_km varchar(50) not null, 
	fecha_compra date not null,
	id_seguro varchar(50) not null, --FK
	status varchar(50) not null,
	comentarios varchar(512) null
);

-- Tabla marcas
create table vehiculos.marcas(
	id_marca varchar(10) not null, --PK
	marca varchar(50) not null
);


-- Tabla grupos_empresariales
create table vehiculos.gpos_empresariales(
	id_grupo_empresarial varchar(10) not null, --PK
	grupo_empresarial varchar(50) not null
);

-- Tabla colores
create table vehiculos.colores(
	id_color varchar(10) not null, --PK
	color varchar(50) not null
);

-- Tabla seguros
create table vehiculos.seguros(
	id_seguro varchar(10) not null, --PK
	numero_poliza varchar(50) not null,
	id_aseguradora varchar(10) not null, --FK
	comentarios varchar(512) null
);

--Tabla aseguradoras
create table vehiculos.aseguradoras(
	id_aseguradora varchar(10) not null, --PK
	aseguradora varchar(50) not null
);
	
--PK
alter table vehiculos.modelo_coches 
add constraint modelo_coches_PK primary key (id_coche);

alter table vehiculos.marcas  
add constraint marcas_PK primary key (id_marca);

alter table vehiculos.gpos_empresariales 
add constraint gpos_empresariales_PK primary key (id_grupo_empresarial);

alter table vehiculos.colores 
add constraint colores_PK primary key (id_color);

alter table vehiculos.seguros 
add constraint seguros_PK primary key (id_seguro);

alter table vehiculos.aseguradoras 
add constraint aseguradoras_PK primary key (id_aseguradora);

--FK's

alter table vehiculos.modelo_coches
add constraint modelo_coches_marcas_FK foreign key (id_marca)
references vehiculos.marcas (id_marca);

alter table vehiculos.modelo_coches
add constraint modelo_coches_gpos_empresariales_FK foreign key (id_grupo_empresarial)
references vehiculos.gpos_empresariales (id_grupo_empresarial);

alter table vehiculos.modelo_coches
add constraint modelo_coches_colores_FK foreign key (id_color)
references vehiculos.colores (id_color);

alter table vehiculos.modelo_coches
add constraint modelo_coches_seguros_FK foreign key (id_seguro)
references vehiculos.seguros (id_seguro);

alter table vehiculos.seguros
add constraint seguros_aseguradoras_FK foreign key (id_aseguradora)
references vehiculos.aseguradoras (id_aseguradora);


--Cargamos los datos de los coches y sus tablas de referencia

--aseguradoras
insert into vehiculos.aseguradoras (id_aseguradora, aseguradora) values ('1','Mapfre');
insert into vehiculos.aseguradoras (id_aseguradora, aseguradora) values ('2','AXA');
insert into vehiculos.aseguradoras (id_aseguradora, aseguradora) values ('3','AIG Seguros');
insert into vehiculos.aseguradoras (id_aseguradora, aseguradora) values ('4','CHUBB');
insert into vehiculos.aseguradoras (id_aseguradora, aseguradora) values ('5','HDI');
insert into vehiculos.aseguradoras (id_aseguradora, aseguradora) values ('6','GNP Seguros');

--seguros
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('1','T5LXMOKCQY','4','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('2','1TKAZHZSKT','1','Póliza de cobertura completa');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('3','JCPLRPMQHR','6','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('4','HOCS5G5B65','2','Póliza de cobertura completa');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('5','085OSGR8AW','5','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('6','9CVK1CGFZJ','3','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('7','Y6THJTMXYG','4','Póliza de cobertura completa');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('8','CPRAVD06GS','2','');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('9','R1GP7GEP1X','6','');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('10','NV815L2Z41','2','Póliza de cobertura completa');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('11','P1C1SLKY5J','2','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('12','1VDB0VM5P3','5','Póliza de cobertura completa');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('13','2KO29ALRWV','3','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('14','79DO8C3H36','1','Póliza de cobertura completa');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('15','G9VAF1SSOJ','2','Póliza de cobertura completa');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('16','VD7HQZBZ70','3','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('17','ML1CBNRP1L','4','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('18','MDJGQX4UMQ','1','Póliza con cobertura solo a terceros');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('19','O7R83Y09XG','3','Póliza de cobertura completa');
insert into vehiculos.seguros (id_seguro, numero_poliza, id_aseguradora, comentarios) values ('20','51J4BWJRH6','6','Póliza con cobertura solo a terceros');


--colores
insert into vehiculos.colores (id_color, color) values ('1','Blanco');
insert into vehiculos.colores (id_color, color) values ('2','Negro');
insert into vehiculos.colores (id_color, color) values ('3','Rojo');
insert into vehiculos.colores (id_color, color) values ('4','Plata');
insert into vehiculos.colores (id_color, color) values ('5','Amarillo');

--grupos empresariales
insert into vehiculos.gpos_empresariales (id_grupo_empresarial , grupo_empresarial) values ('1','Dodge');
insert into vehiculos.gpos_empresariales (id_grupo_empresarial , grupo_empresarial) values ('2','Daimler');
insert into vehiculos.gpos_empresariales (id_grupo_empresarial , grupo_empresarial) values ('3','Ford');
insert into vehiculos.gpos_empresariales (id_grupo_empresarial , grupo_empresarial) values ('4','Renault Nissan');
insert into vehiculos.gpos_empresariales (id_grupo_empresarial , grupo_empresarial) values ('5','Honda');
insert into vehiculos.gpos_empresariales (id_grupo_empresarial , grupo_empresarial) values ('6','Mitsubishi');
insert into vehiculos.gpos_empresariales (id_grupo_empresarial , grupo_empresarial) values ('7','Hyundai');

--marcas
insert into vehiculos.marcas  (id_marca , marca) values ('1','Dodge');
insert into vehiculos.marcas  (id_marca , marca) values ('2','Mercedes');
insert into vehiculos.marcas  (id_marca , marca) values ('3','Ford');
insert into vehiculos.marcas  (id_marca , marca) values ('4','Renault');
insert into vehiculos.marcas  (id_marca , marca) values ('5','Honda');
insert into vehiculos.marcas  (id_marca , marca) values ('6','Mitsubishi');
insert into vehiculos.marcas  (id_marca , marca) values ('7','Smart');
insert into vehiculos.marcas  (id_marca , marca) values ('8','Kia');
insert into vehiculos.marcas  (id_marca , marca) values ('9','Nissan');

--modelos coches

insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('1','Stratus','1','1','2010','2852UYV','4','489632','2020-09-13','4','Inactivo','Se compró nuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('2','Avenger','1','1','2011','3328BTT','1','100000','2012-01-15','1','Inactivo','Ninguno');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('3','Eco Sport','3','3','2013','3210KAG','2','300523','2013-08-04','4','Inactivo','Auto comprado a un particular');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('4','Nitro','1','1','2013','4930UOR','2','200000','2015-10-25','2','Inactivo','Este auto se compró a una agencia seminuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('5','Lancer','6','6','2015','0214ZMI','5','287243','2016-04-13','5','Inactivo','Auto comprado a un particular');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('6','Fiesta','3','3','2016','8618UMU','3','350479','2016-04-22','3','Inactivo','Se compró nuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('7','Megan','4','4','2016','1181NQC','3','250123','2016-11-22','4','Inactivo','Se compró nuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('8','Clio','4','4','2017','4953PDH','3','136731','2017-04-16','2','Activo','Ninguno');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('9','Pathfinder','9','4','2018','9496FSB','2','199345','2019-02-12','6','Activo','Ninguno');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('10','Fusion','3','3','2018','6233CNJ','4','254721','2019-07-16','2','Activo','Este auto se compró a una agencia seminuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('11','For Four','7','7','2020','1187WMR','3','59631','2020-03-26','2','Activo','Se compró nuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('12','Civic','5','5','2020','9478EIX','5','80566','2020-03-27','5','Activo','Ninguno');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('13','Sonata','8','7','2020','1569RMQ','3','87395','2020-06-06','3','Activo','Se compró nuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('14','Santa Fe','8','7','2019','9684RCZ','4','26731','2020-07-17','1','Activo','Este auto se compró a una agencia seminuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('15','Accord','5','5','2017','1715RDS','4','135333','2020-09-29','2','Activo','Auto comprado a un particular');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('16','AMG GT Deportivo','2','2','2021','2296PXI','4','50000','2021-05-28','5','Activo','Auto importado a México');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('17','Murano','9','4','2018','2010LXN','1','213556','2021-06-29','4','Activo','Este auto se compró a una agencia seminuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('18','CR-V','5','5','2022','9290KKB','1','10333','2022-02-10','1','Activo','Ninguno');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('19','Outlander','6','6','2021','2862LKM','2','15479','2022-06-11','3','Activo','Este auto se compró a una agencia seminuevo');
insert into vehiculos.modelo_coches (id_coche , modelo, id_marca, id_grupo_empresarial, anio, matricula, id_color, total_km, 
fecha_compra, id_seguro, status, comentarios  ) values ('20','For Two','7','2','2022','7908OYE','5','10888','2022-08-05','6','Activo','Se compró nuevo');


/*
 				TABLA REVISIONES
 */

-- Tabla revisiones
create table vehiculos.revisiones(
	id_revision varchar(10) not null, --PK
	id_coche varchar(10) not null, --FK
	km_actual varchar(10) not null,
	importe varchar(10) not null,
	id_divisa varchar(10) not null, --FK
	comentarios varchar(512) null
);

-- Tabla historico revisiones
create table vehiculos.hist_revisiones(
	id_hist_revision varchar(10) not null, --PK
	id_revision varchar(10) not null, --FK
	id_servicio varchar(10) not null, --FK
	fecha_revision date not null
);

--Tabla servicios
create table vehiculos.servicios(
	id_servicio varchar(10) not null, --PK
	servicio varchar(50) not null
);

--Tabla divisas
create table vehiculos.divisas(
	id_divisa varchar(10) not null, --PK
	divisa varchar(50) not null, 
	codigo varchar(50) not null
);

--PK
alter table vehiculos.revisiones
add constraint revisiones_PK primary key (id_revision);

alter table vehiculos.hist_revisiones 
add constraint hist_revisiones_PK primary key (id_hist_revision);

alter table vehiculos.servicios
add constraint servicios_PK primary key (id_servicio);

alter table vehiculos.divisas
add constraint divisas_PK primary key (id_divisa);

--FK
alter table vehiculos.revisiones
add constraint revisiones_modelo_coches_FK foreign key (id_coche)
references vehiculos.modelo_coches (id_coche);

alter table vehiculos.revisiones
add constraint revisiones_divisas_FK foreign key (id_divisa)
references vehiculos.divisas (id_divisa);

alter table vehiculos.hist_revisiones
add constraint hist_revisiones_revisiones_FK foreign key (id_revision)
references vehiculos.revisiones (id_revision);

alter table vehiculos.hist_revisiones
add constraint hist_revisiones_servicios_FK foreign key (id_servicio)
references vehiculos.servicios (id_servicio);

--Cargamos los datos de las revisiones y sus tablas de referencia

--divisas
insert into vehiculos.divisas  (id_divisa , divisa, codigo) values ('1','Dolar Estadounidense','USD');
insert into vehiculos.divisas  (id_divisa , divisa, codigo) values ('2','Euro','EUR');
insert into vehiculos.divisas  (id_divisa , divisa, codigo) values ('3','Peso Mexicano','MXN');

--servicios
insert into vehiculos.servicios  (id_servicio, servicio) values ('1','Reparación de carrocería');
insert into vehiculos.servicios  (id_servicio, servicio) values ('2','Afinación mayor');
insert into vehiculos.servicios  (id_servicio, servicio) values ('3','Cambio de llantas');
insert into vehiculos.servicios  (id_servicio, servicio) values ('4','Cambio de anticongelante');
insert into vehiculos.servicios  (id_servicio, servicio) values ('5','Lavado y aspirado');
insert into vehiculos.servicios  (id_servicio, servicio) values ('6','Cambio de aceite del motor');

--revisiones
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('1','1','10241','500','3','Primera revisión');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('2','1','13580','26780','3','Reparación de carrocería debido a un golpe en la puerta del conductor');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('3','2','58345','12000','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('4','3','123000','200','1','Reparación en la parte frontal del coche debido a un accidente vial');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('5','2','86489','680','3','Cambio de anticongelante por fuga');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('6','1','159875','4500','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('7','3','145023','800','1','Se cambiaron las llantas porque estaban muy desgastadas');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('8','4','69954','100','1','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('9','4','80679','1270','1','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('10','5','80567','25','2','Cambio de aceite porque el que tenía estaba muy desgastado');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('11','6','25000','20','1','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('12','7','10478','875','1','Cambio de llantas por ponchadura');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('13','7','15746','680','1','Cambio de anticongelante por fuga');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('14','8','14796','80','2','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('15','8','52044','750','2','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('16','9','67963','1200','3','Primera revisión');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('17','9','86321','30000','3','Reparación de carrocería debido a un golpe en la puerta del conductor');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('18','10','88889','13578','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('19','11','15789','500','2','Reparación en la parte frontal del coche debido a un accidente vial');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('20','12','10222','28','2','Cambio de anticongelante por fuga');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('21','11','20496','1200','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('22','13','12000','950','1','Se cambiaron las llantas porque estaban muy desgastadas');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('23','14','56781','120','1','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('24','14','60411','1300','1','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('25','14','62455','35','1','Cambio de aceite porque el que tenía estaba muy desgastado');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('26','15','85000','700','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('27','15','87563','15000','3','Cambio de llantas por ponchadura');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('28','15','88888','600','3','Cambio de anticongelante por fuga');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('29','16','2000','3000','3','Primera revisión');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('30','16','2222','45000','3','Reparación de carrocería debido a un golpe en la puerta del conductor');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('31','16','2500','40000','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('32','16','3500','60000','3','Reparación en la parte frontal del coche debido a un accidente vial');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('33','16','4200','5000','3','Cambio de anticongelante por fuga');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('34','17','200100','80','2','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('35','17','210000','1000','2','Se cambiaron las llantas porque estaban muy desgastadas');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('36','17','212000','200','2','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('37','17','215222','750','2','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('38','18','15000','60','1','Cambio de aceite porque el que tenía estaba muy desgastado');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('39','18','19012','750','1','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('40','18','25000','800','1','Cambio de llantas por ponchadura');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('41','18','26893','50','1','Cambio de anticongelante por fuga');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('42','18','30022','250','1','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('43','19','80224','25000','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('44','19','81500','1200','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('45','19','90125','25330','3','Reparación de carrocería debido a un golpe en la puerta del conductor');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('46','19','102200','2500','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('47','19','103444','3500','3','Ninguno');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('48','20','2200','790','2','Cambio de anticongelante por fuga');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('49','20','2500','1200','2','Se cambiaron las llantas porque estaban muy desgastadas');
insert into vehiculos.revisiones (id_revision,id_coche,km_actual,importe,id_divisa,comentarios) 
values ('50','20','3200','750','2','Ninguno');

--historico revisiones
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('1','1','6','2010-12-15');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('2','2','1','2011-02-10');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('3','3','3','2012-11-23');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('4','4','1','2014-11-04');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('5','5','4','2015-02-28');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('6','6','2','2015-03-05');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('7','7','3','2015-07-08');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('8','8','5','2015-12-07');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('9','9','1','2016-02-14');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('10','10','6','2016-05-15');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('11','11','6','2016-11-22');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('12','12','3','2016-12-05');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('13','13','4','2017-01-10');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('14','14','5','2017-08-19');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('15','15','3','2018-05-25');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('16','16','6','2019-04-13');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('17','17','1','2019-07-16');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('18','18','3','2019-12-12');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('19','19','1','2020-11-02');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('20','20','4','2020-11-03');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('21','21','2','2020-12-03');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('22','22','3','2020-12-05');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('23','23','5','2020-12-06');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('24','24','1','2020-12-10');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('25','25','6','2020-12-25');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('26','26','6','2020-10-15');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('27','27','3','2020-10-22');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('28','28','4','2020-10-29');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('29','29','6','2021-06-28');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('30','30','1','2021-06-29');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('31','31','3','2021-07-15');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('32','32','1','2021-09-19');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('33','33','4','2021-09-25');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('34','34','2','2021-09-26');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('35','35','3','2021-10-05');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('36','36','5','2021-10-10');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('37','37','1','2021-11-11');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('38','38','6','2022-03-13');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('39','39','1','2022-04-15');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('40','40','3','2022-04-19');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('41','41','4','2022-05-22');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('42','42','5','2022-05-30');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('43','43','3','2022-06-22');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('44','44','6','2022-06-30');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('45','45','1','2022-07-02');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('46','46','2','2022-07-28');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('47','47','5','2022-07-30');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('48','48','4','2022-08-15');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('49','49','3','2022-09-06');
insert into vehiculos.hist_revisiones  (id_hist_revision,id_revision,id_servicio, fecha_revision) values ('50','50','1','2022-09-07');


-----------------Consultas SQL-----------------
select mc.modelo, m.marca, ge.grupo_empresarial, c.color, mc.matricula, mc.total_km, a.aseguradora, s.numero_poliza, mc.fecha_compra, r.km_actual, hr.fecha_revision, r.importe, d.divisa, d.codigo  
from vehiculos.modelo_coches mc 
inner join vehiculos.marcas m on m.id_marca = mc.id_marca 
inner join vehiculos.gpos_empresariales ge  on ge.id_grupo_empresarial = mc.id_grupo_empresarial  
inner join vehiculos.colores c on c.id_color = mc.id_color
inner join vehiculos.revisiones r on r.id_coche = mc.id_coche 
inner join vehiculos.hist_revisiones hr on hr.id_revision = r.id_revision
inner join vehiculos.servicios s2 on s2.id_servicio = hr.id_servicio 
inner join vehiculos.divisas d on d.id_divisa = r.id_divisa 
inner join vehiculos.seguros s on s.id_seguro = mc.id_seguro 
inner join vehiculos.aseguradoras a on a.id_aseguradora =s.id_aseguradora

