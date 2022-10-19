--creacion de la base de datos
create database Zoologico;
--creacion de tablas
create table zoologico(Id_zoologico int(5) primary key, Nombre varchar(30), Ciudad varchar(30), Pais varchar(30), Tamanio int(10), anio_apertura int(10));

create table Especie_Animal(Id_Especie_Animal int(5) primary key,clave_Semaforo int(5), Nombre_comun varchar(30), Nombre_cientifico varchar(30),familia_a_pertenece varchar(30));

create table Semaforo_Extincion(clave_Semaforo int(5) primary key, AR_Rojo varchar(10),RM_Amarillo varchar(10),BR_Vede varchar(10));

create table Info_animal(Num_identificacion int(5) primary key,Id_Especie_Animal int(5), familia varchar(30),Sexo varchar(5), anio_nacimiento int(5),Pais_Origen varchar(30),Id_zoologico int(5));
--Index de especie animal!!!
create index indice1 on Especie_Animal (clave_Semaforo);

create index indice1 on Info_animal (Id_zoologico);
create index indice2 on Info_animal (Id_Especie_Animal);

alter table Especie_Animal add foreign key (clave_Semaforo) references Semaforo_Extincion (clave_Semaforo) on delete cascade on update cascade;

alter table Info_animal add foreign key (Id_Especie_Animal) references Especie_Animal (Id_Especie_Animal) on delete cascade on update cascade;

alter table Info_animal add foreign key (Id_zoologico) references zoologico (Id_zoologico) on delete cascade on update cascade;
