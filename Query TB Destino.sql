Create table TBDestino (
Codigo int identity(1,1) not null,
Destino varchar(200) not null,
origen varchar(200) not null,
Valor money not null,
 Primary Key(Codigo)
)

select origen, Destino, Valor, Valor as Precio From TBDestino

--Comandos para almacenar datos
insert into TBDestino values('Barahona', 'Santo Domingo', 1506)
insert into TBDestino values('San Jose de Ocoa', 'Santo DomingoSanto Domingo', 2004)
insert into TBDestino values('Pedernales', 'Santo Domingo', 2500)
insert into TBDestino values('Cabral', 'Santo Domingo', 4000)
insert into TBDestino values('Vaní', 'Santo Domingo', 5000)
insert into TBDestino values('Cibao', 'Santo Domingo', 250)
insert into TBDestino values('La Vega', 'Santo Domingo', 2000)
insert into TBDestino values('Constanza', 'Santo Domingo', 2500)
insert into TBDestino values('San Francisco de Macoris', 'Santo Domingo', 2000)
insert into TBDestino values('Santiago', 'Santo Domingo', 2500)
insert into TBDestino values('Puerto Plata', 'Santo Domingo', 3000)
insert into TBDestino values('La Romana', 'Santo Domingo', 125)
insert into TBDestino values('Samana', 'Santo Domingo', 750)


--Comando para actualizar una tabla
update TBDestino set Destino = 'Lugar de destino', origen = 'Lugar de partida', Valor = 150 
where Codigo = 1

--Inicio de la transacci�n para realizar un commit
begin transaction

--Comando para eliminar un registro
Delete from TBDestino where Codigo = 5

--Cierre de la transacci�n commit
commit transaction

