create table TBPasajero(
PasajeroID int identity(1,1) not null,
Nombre varchar(100) not null,
Direccion varchar(100) not null,
Contacto char(12) not null,
Primary Key(PasajeroID)
)
Select * From TBPasajero

--Comandos para almacenar datos
insert into TBPasajero values('Grupo Ramos', 'Santo Domingo', '829-322-4444')
insert into TBPasajero values('Grupo Rojas', 'Santo Domingo', '809-564-1134')
insert into TBPasajero values('Ferreter�a Ochoa', 'Santo Domingo Oeste', '809-530-7969')
insert into TBPasajero values('Ferremix', 'Av. Isabel Aguilar, Herrera', '829-537-3000')
insert into TBPasajero values('Carrefour', 'Autopista Duarte', '809-412-2333')
insert into TBPasajero values('Almacenes Unidos', 'Santo Domingo', '809-472-6911')
insert into TBPasajero values('Hipermecados Ol�', 'Bajos de Haina', '809-536-0690')
insert into TBPasajero values('Jumbo', 'Av. Luperon, Santo Domingo', '809-333-2111')
insert into TBPasajero values('La Cadena', 'Santo Domingo', '809-243-0002')
insert into TBPasajero values('Ferreter�a Americana', 'Av. San Mart�n, Santo Domingo', '809-332-1720')

--Comando para actualizar una tabla
update TBPasajero set Nombre = 'Grupo Ramos', Direccion = 'Santo Domingo', Contacto = '829-322-4444'
where PasajeroID = 1

--comando para eliminar un registro
Delete from TBPasajero where PasajeroID = 21

