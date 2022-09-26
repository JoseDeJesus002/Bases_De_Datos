create database Restaurante;

create table menu(clave_menu int(5) primary key, sopa varchar(50),guisado varchar(50),guarnicion varchar(50),agua varchar(50),postre varchar(50), costo float(10));

create table postre(nombre_postre varchar(50) primary key,sabor varchar(50),cantidad varchar(20));

create table guarnicion(nombre_guarnicion varchar(50) primary key, ingrediente_principal varchar(50),ingredientes varchar(60),temperatura float(10), porcion float(10));

create table sopa(nombre_sopa varchar(50) primary key,ingredientes varchar(60),fondo  varchar(50), temperatura float(10));

create table agua(nombre_agua varchar(50) primary key, sabor varchar(50),descripcion varchar(60));

create table guisado(nombre_guisado varchar(50) primary key, proteina float(10),preparado varchar(50),tamanio float(10));

create table cliente(clave_cliente int(5) primary key, nombre varchar(50));

create table pedido(id_pedido int(5) primary key,clave_cliente int(5),clave_menu int(5));

create index indice1 on menu (sopa);
create index indice2 on menu (guisado);
create index indice3 on menu (guarnicion);
create index indice4 on menu (agua);
create index indice5 on menu (postre);

create index indice1 on pedido (clave_cliente);
create index indice2 on pedido (clave_menu);

alter table menu add foreign key (sopa) references sopa (nombre_sopa) on delete cascade on update cascade;

alter table menu add foreign key (guisado) references guisado (nombre_guisado) on delete cascade on update cascade;

alter table menu add foreign key (guarnicion) references guarnicion (nombre_guarnicion) on delete cascade on update cascade;

alter table menu add foreign key (agua) references agua (nombre_agua) on delete cascade on update cascade;

alter table menu add foreign key (postre) references postre (nombre_postre) on delete cascade on update cascade;

alter table pedido add foreign key (clave_cliente) references cliente (clave_cliente) on delete cascade on update cascade;

alter table pedido add foreign key (clave_menu) references menu (clave_menu) on delete cascade on update cascade;

--data postre
insert into postre (nombre_postre, sabor, cantidad) values ('postre de galleta', 'galleta', '200 gr');
insert into postre (nombre_postre, sabor, cantidad) values ('flan napolitano', 'gelatina', '100gr');
insert into postre (nombre_postre, sabor, cantidad) values ('gelatina de chocolate', 'gelatina', '500 gr');
insert into postre (nombre_postre, sabor, cantidad) values ('flan', 'flan', '200 gr');
insert into postre (nombre_postre, sabor, cantidad) values ('flan de elote', 'elote', '400 gr');
insert into postre (nombre_postre, sabor, cantidad) values ('pay de limon', 'limon con galleta', '700 gr');
insert into postre (nombre_postre, sabor, cantidad) values ('pay de mango', 'mango', '800 gr');
insert into postre (nombre_postre, sabor, cantidad) values ('brownies', 'chocolate', '1000 gr');
--data guarnicion
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('Manzanas', 'Manzana', 'zanahoria menta y jengibre', 15, 234);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('escalvida', 'ajo', 'tomate cebolla pimiento y berenjena', 10, 390);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('ensalada de lentejas', 'lentejas', 'tomate aguacate y cebolla', 14, 120);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('carpaccio calabacin', 'calabaza', 'hierbas pimienta', 14, 259);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('apionabo', 'apionabo', 'manzana', 15, 379);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('rolitos de berenjena', 'zanahoria', 'pimiento y hierbas', 14, 498);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('puerros', 'puerros', 'guisantes y cogollos', 13, 342);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('ensalada de arroz rojo', 'arroz', 'col y calabacin', 15, 302);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('cous cous', 'semola de trigo', 'colifor', 15, 253);
insert into guarnicion (nombre_guarnicion, ingrediente_principal, ingredientes, temperatura, porcion) values ('ensalada de hinojo', 'cebolla', 'almendras', 13, 176);
--sopa
insert into sopa (nombre_sopa, ingredientes, fondo, temperatura) values ('sopa juliana', 'puerro zanahoria repollo', 'caldo de pollo', 40);
insert into sopa (nombre_sopa, ingredientes, fondo, temperatura) values ('fideos vegetales', 'ajo puerros y nabo', 'caldo de pollo', 33);
insert into sopa (nombre_sopa, ingredientes, fondo, temperatura) values ('sopa huertana', 'zanahorias nabos y jamon', 'caldo de pollo', 32);
insert into sopa (nombre_sopa, ingredientes, fondo, temperatura) values ('sopa de patata', 'patata y puerro', 'caldo pollo', 38);
insert into sopa (nombre_sopa, ingredientes, fondo, temperatura) values ('sopa de alubias', 'alubias apio y ajo', 'caldo de pollo', 40);
insert into sopa (nombre_sopa, ingredientes, fondo, temperatura) values ('sopa casera', 'zanahoria y pimiento rojo', 'caldo de pollo', 34);
insert into sopa (nombre_sopa, ingredientes, fondo, temperatura) values ('sopa minestrone', 'alubias y judias', 'caldo de pollo', 36);
--guisado
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('arroz a la mexicana', 156, 'arroz', 414);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('frijoles charros', 168, 'frijoles', 166);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('mole verde con pollo', 140, 'mole', 283);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('tinga de pollo', 136, 'pollo', 453);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('chicharron en salsa verde', 163, 'chicharron y chile', 438);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('rajas con crema', 131, 'chiles y crema', 359);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('bistec en salsa', 144, 'bistec', 395);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('nopales enmolados', 161, 'nopales', 257);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('cochinita pibil', 190, 'achiote', 386);
insert into guisado (nombre_guisado, proteina, preparado, tamanio) values ('chiles rellenos', 115, 'chiles', 103);
--agua
insert into agua (nombre_agua, sabor, descripcion) values ('agua de limon', 'limon', 'agua con limon');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de coco', 'coco', 'coco sin azucar');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de pinia', 'pinia', 'pinia para adelgazar');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de tamarindo', 'tamarindo', 'tamarindo cocido');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de naranja', 'naranja', 'naranja con hojas');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de platano', 'platano', 'platano con agua');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de guayaba', 'guayaba', 'guayaba sin hueso');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de sandia', 'sandia', 'sandia');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de melon', 'melon', 'melon');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de fresa', 'fresa', 'fresa con hielo');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de mango', 'mango', 'mango');
insert into agua (nombre_agua, sabor, descripcion) values ('agau de maracuya', 'pepino', 'maracuya y chia');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de pepino', 'tuna', 'se puede combinar con limon');
insert into agua (nombre_agua, sabor, descripcion) values ('agua de tuna', 'limon', 'tuna');
insert into agua (nombre_agua, sabor, descripcion) values ('crema de coco', 'coco', 'crema de coco');
--cliente
insert into cliente (clave_cliente, nombre) values (1499, 'Andres');
insert into cliente (clave_cliente, nombre) values (1234, 'Gerard');
insert into cliente (clave_cliente, nombre) values (5435, 'Ana');
insert into cliente (clave_cliente, nombre) values (6903, 'Enzo');
insert into cliente (clave_cliente, nombre) values (8759, 'Eric');
--menu
INSERT INTO `menu` (`clave_menu`, `sopa`, `guisado`, `guarnicion`, `agua`, `postre`, `costo`) VALUES ('9561', 'sopa huertana', 'cochinita pibil', 'Manzanas', 'agua de naranja', 'gelatina de chocolate', '300'), ('8547', 'sopa casera', 'cochinita pibil', 'rolitos de berenjena', 'agua de pepino', 'pay de limon', '400'), ('5564', 'sopa juliana', 'chiles rellenos', 'ensalada de hinojo', 'agua de naranja', 'flan napolitano', '300'), ('8854', 'sopa minestrone', 'tinga de pollo', 'puerros', 'crema de coco', 'postre de galleta', '300'), ('1124', 'sopa juliana', 'mole verde con pollo', 'ensalada de arroz rojo', 'agua de sandia', 'gelatina de chocolate', '400'), ('5679', 'sopa huertana', 'mole verde con pollo', 'ensalada de hinojo', 'agua de limon', 'gelatina de chocolate', '300'), ('8845', 'fideos vegetales', 'chicharron en salsa verde', 'Manzanas', 'agua de guayaba', 'flan napolitano', '200'), ('6549', 'sopa huertana', 'chicharron en salsa verde', 'escalvida', 'agua de platano', 'pay de mango', '300'), ('9845', 'sopa huertana', 'mole verde con pollo', 'Manzanas', 'agua de sandia', 'gelatina de chocolate', '400'), ('6748', 'sopa de patata', 'mole verde con pollo', 'escalvida', 'agua de tuna', 'gelatina de chocolate', '300'), ('6547', 'sopa de patata', 'mole verde con pollo', 'ensalada de hinojo', 'agua de platano', 'pay de mango', '300'), ('2458', 'sopa de patata', 'mole verde con pollo', 'ensalada de lentejas', 'agua de mango', 'pay de mango', '300'), ('7531', 'sopa de alubias', 'nopales enmolados', 'ensalada de hinojo', 'agua de platano', 'flan napolitano', '300'), ('3210', 'sopa huertana', 'rajas con crema', 'carpaccio calabacin', 'crema de coco', 'pay de mango', '300'), ('5214', 'sopa de patata', 'tinga de pollo', 'Manzanas', 'agua de sandia', 'flan napolitano', '300');

INSERT INTO `menu` (`clave_menu`, `sopa`, `guisado`, `guarnicion`, `agua`, `postre`, `costo`) VALUES ('5218', 'sopa de patata', 'frijoles charros', 'escalvida', 'agua de pinia', 'gelatina de chocolate', '400'), ('6214', 'sopa minestrone', 'chiles rellenos', 'ensalada de arroz rojo', 'agua de tamarindo', 'gelatina de chocolate', '400'), ('5219', 'sopa minestrone', 'nopales enmolados', 'puerros', 'agua de pepino', 'flan napolitano', '400'), ('5283', 'sopa juliana', 'mole verde con pollo', 'escalvida', 'agua de mango', 'flan de elote', '400'), ('1203', 'sopa de patata', 'mole verde con pollo', 'apionabo', 'agua de pinia', 'flan de elote', '200'), ('2034', 'fideos vegetales', 'cochinita pibil', 'ensalada de arroz rojo', 'agua de tuna', 'brownies', '300'), ('0287', 'sopa huertana', 'chiles rellenos', 'ensalada de hinojo', 'agua de sandia', 'flan', '300'), ('3024', 'sopa huertana', 'nopales enmolados', 'carpaccio calabacin', 'agua de platano', 'pay de limon', '300'), ('6274', 'sopa casera', 'frijoles charros', 'ensalada de lentejas', 'agua de pinia', 'pay de mango', '400'), ('0987', 'sopa casera', 'chiles rellenos', 'ensalada de hinojo', 'agua de pinia', 'flan de elote', '300'), ('0698', 'sopa casera', 'bistec en salsa', 'cous cous', 'agua de fresa', 'flan', '300'), ('9521', 'sopa juliana', 'frijoles charros', 'ensalada de lentejas', 'agua de naranja', 'pay de mango', '400'), ('3201', 'sopa de patata', 'chiles rellenos', 'ensalada de arroz rojo', 'agua de tuna', 'pay de mango', '400'), ('0478', 'sopa huertana', 'rajas con crema', 'escalvida', 'agua de platano', 'gelatina de chocolate', '400'), ('9657', 'sopa de alubias', 'nopales enmolados', 'escalvida', 'agua de pinia', 'pay de limon', '5698');
--pedido
INSERT INTO `pedido` (`id_pedido`, `clave_cliente`, `clave_menu`) VALUES ('6214', '5435', '5218'), ('0245', '1234', '5214'), ('9641', '6903', '7531'), ('2364', '1499', '9521'), ('2234', '5435', '8547'), ('6987', '8759', '6214'), ('5978', '5435', '6547'), ('4524', '8759', '6547'), ('1425', '5435', '2458'), ('0958', '6903', '6549'), ('5235', '6903', '6274');