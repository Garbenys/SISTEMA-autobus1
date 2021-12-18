Create table TBServicio (
IDServicio int identity(1,1) Primary Key not null,
EmpleadoID int not null,
CodigoCliente int not null,
DestinoID int not null,
Destino varchar(200) not null,
Fecha varchar(25) not null,
CantidadPasajero int not null,

	constraint FK_Servicio_Empleado
	foreign key (EmpleadoID) references TBEmpleado(CodigoEmpleado)
	on update cascade
	on delete cascade,

	constraint FK_Servicio_Pasajero
	foreign key (CodigoCliente) references TBPasajero(PasajeroID)
	on update cascade
	on delete cascade,

	constraint FK_Servicio_Destino
	foreign key (DestinoID) references TBDestino(Codigo)
	on update cascade
	on delete cascade,
)


--Comandos para visualizar todos los campos de una tabla

select serv.CodigoCliente as 'Id Cliente', cli.Nombre as Nombre, serv.CantidadPasajero as 'Pasajero No.',
serv.CantidadPasajero * dest.Valor as Total, emp.Nombre	as 'Chofer del servicio', serv.Fecha, serv.Destino from TBServicio serv 
inner join TBDestino dest on serv.DestinoID = dest.Codigo
inner join TBPasajero cli on serv.CodigoCliente = cli.PasajeroID
inner join TBEmpleado emp on serv.EmpleadoID = emp.CodigoEmpleado

--Comandos para almacenar datos
Insert Into TBServicio values(1, 1, 1, 'Santo Domingo', '13-7-2021', 5)
Insert Into TBServicio values(2, 2, 2, 'Santo Domingo', '13-7-2021', 3)
Insert Into TBServicio values(3, 3, 3, 'Santo Domingo', '13-7-2021', 2)
Insert Into TBServicio values(4, 4, 4, 'Santo Domingo', '13-7-2021', 15)
Insert Into TBServicio values(5, 5, 5, 'Santo Domingo', '13-7-2021', 25)
Insert Into TBServicio values(6, 6, 6, 'Santo Domingo', '13-7-2021', 1)
Insert Into TBServicio values(7, 7, 7, 'Santo Domingo', '13-7-2021', 3)
Insert Into TBServicio values(8, 8, 8, 'Santo Domingo', '13-7-2021', 7)
Insert Into TBServicio values(9, 9, 9, 'Santo Domingo', '13-7-2021', 4)
Insert Into TBServicio values(10, 10, 10, 'Santo Domingo', '13-7-2021', 2)

