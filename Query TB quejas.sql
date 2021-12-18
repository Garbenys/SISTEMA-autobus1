Create Table TBQuejas(
	CodigoReclamo int identity(1,1) primary key not null,
	CodigoCliente int not null,
	EmpleadoID int not null,
	ServicioID int not null,
	DestinoID int not null,
	Comentario varchar(85) not null, 
	fechaDevolucion nchar(12) null,
	Cantidad int not null,

	constraint FK_Reclamod_Servicio
	foreign key (ServicioID) references TBServicio(IDServicio)
	on update cascade
	on delete cascade,
)


select rec.CodigoReclamo as 'No. de Reclamo', cli.Nombre as Cliente, serv.Fecha as 'Fecha del servicio', art.Destino 'Nombre del Producto', serv.CantidadPasajero as 'Cantidad vendida', rec.Cantidad as 'Cantidad a devolver', rec.Comentario as 'Motivo', rec.fechaDevolucion as 'Fecha', (emp.Nombre + ' ' + emp.Apellidos)as 'Atendido por' from TBQuejas rec
inner join TBServicio serv on rec.ServicioID = serv.IDServicio
inner join TBPasajero cli on rec.CodigoCliente = cli.PasajeroID
inner join TBEmpleado emp on rec.EmpleadoID = emp.CodigoEmpleado
inner join TBDestino art on rec.DestinoID = art.Codigo

where rec.CodigoReclamo = 1


Insert Into TBQuejas(CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(12, 1, 1, 6, 'Suspención de viaje', '28-07-2021', 1)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(13, 2, 2, 7, 'Suspención de viaje', '28-07-2021', 1)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(14, 3, 3,8, 'Suspención de viaje', '28-07-2021', 1)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(15, 4, 4, 9, 'Suspención de viaje', '28-07-2021', 3)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(16, 5, 5, 10,'Suspención de viaje', '28-07-2021', 5)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(17, 6, 6, 11, 'Suspención de viaje', '28-07-2021', 1)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(18, 7, 7, 12, 'Suspención de viaje', '28-07-2021', 1)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(18, 8, 8, 13, 'Suspención de viaje', '28-07-2021', 2)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(20, 9, 9, 8, 'Suspención de viaje', '28-07-2021', 1)
Insert Into TBQuejas (CodigoCliente, EmpleadoID, ServicioID, DestinoID, Comentario, fechaDevolucion, Cantidad) Values(20, 10, 10, 9, 'Suspención de viaje', '28-07-2021', 2)


update TBQuejas set Comentario = 'Uerba de transporte' where CodigoReclamo = 2
update TBQuejas set Comentario = 'Amenanza ciclonica' where CodigoReclamo = 3
update TBQuejas set Comentario = 'Servicios inavilitados' where CodigoReclamo = 4
update TBQuejas set Comentario = 'Sistemas Colapsados' where CodigoReclamo = 5
update TBQuejas set Comentario = 'Deterioro del transporte' where CodigoReclamo = 6
