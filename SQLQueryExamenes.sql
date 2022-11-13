/*Creacion de base de datos*/

create database Examenes

use Examenes

create table Persona
(
cedulaP varchar(15) primary key,
nombre varchar(50) not null,
genero char(1) constraint chk_genero Check(genero = 'F' or genero='M'),
fecha date constraint def_fecha default Getdate() 

)



create table Respuestas
(
id int identity (1,1),
cedulaR varchar(15),
r1 char (1),
r2 char (2),
r3 char (3),

constraint PK_id Primary Key(id),
constraint FK_cedula Foreign Key(cedulaR) references Persona (cedulaP)
)

select * from Persona
select * from Respuestas



-- inner join (Relacionar Tablas para obtener valores)

select Respuestas.id, Persona.nombre,Respuestas.cedulaR,Respuestas.r1,Respuestas.r2,Respuestas.r3 from Respuestas inner join Persona on Respuestas.cedulaR=Persona.cedulaP