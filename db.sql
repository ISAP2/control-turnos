drop database control_turnos;
create database control_turnos;
use control_turnos;

create table alumnos(
	id_alumno varchar(50),
	nombre varchar(50),
	apellido_paterno varchar(50),
	apellido_materno varchar(50),
	correo_electronico varchar(50),
	primary key (id_alumno)
	);

create table maestros(
	id_maestro varchar(50),
	nombre varchar(50),
	apellido_paterno varchar(50),
	apellido_materno varchar(50),
	correo_electronico varchar(50),
	primary	key	(id_maestro)
	);

create table departamentos(
	id_departamento varchar(50),
	area varchar(50),
	descripcion varchar(50),
	primary key(id_departamento)
	);

create table carreras(
	id_alumno varchar(50),
	id_carrera varchar(50),
	descripcion varchar(50),
	plan varchar(50),
	primary key (id_carrera),
	foreign key (id_alumno) references alumnos(id_alumno)
	on update cascade on delete cascade
	);

create table usuarios(
	id_usuario varchar(50),
	id_departamento varchar(50),
	nombre varchar(50),
	apellido_paterno varchar(50),
	apellido_materno varchar(50),
	puesto varchar(50),
	primary key	(id_usuario),
	foreign key (id_departamento) references departamentos(id_departamento)
	on update cascade on delete cascade
	);

create table mensajes(
	id_usuario varchar(50),
	id_mensaje varchar(50),
	fecha date,
	mensaje varchar(500),
	primary key	(id_mensaje),
	foreign key (id_usuario) references usuarios(id_usuario)
	on update cascade on delete cascade
	);

create table asuntos(
	id_asunto varchar(50),
	id_departamento varchar(50),
	descripcion varchar(50),
	primary key	(id_asunto),
	foreign key (id_departamento) references departamentos(id_departamento)
	on update cascade on delete cascade
	);

create table bitacora(
	id_bitacora varchar(50),
	id_asunto varchar(50),
	id_usuario varchar(50),
	id_visitante varchar(50),
	estatus varchar(50),
	descripcion varchar(200),
	fecha date,
	primary key (id_bitacora),
	foreign key (id_asunto) references asuntos(id_asunto)
	on update cascade on delete cascade,
	foreign key (id_visitante) references alumnos(id_alumno)
	on update cascade on delete cascade,
	foreign key (id_visitante) references maestros(id_maestro)
	on update cascade on delete cascade
	);



