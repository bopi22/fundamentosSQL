-----------------Consultas SQL-----------------
select mc.modelo,m.marca, ge.grupo_empresarial, mc.fecha_compra, mc.matricula, c.color, mc.total_km,a.aseguradora,s.numero_poliza, mc.status
from vehiculos.modelo_coches mc
inner join vehiculos.marcas m on m.id_marca = mc.id_marca 
inner join vehiculos.gpos_empresariales ge  on ge.id_grupo_empresarial = mc.id_grupo_empresarial
inner join vehiculos.colores c on c.id_color = mc.id_color 
inner join vehiculos.seguros s on s.id_seguro = mc.id_seguro 
inner join vehiculos.aseguradoras a on a.id_aseguradora =s.id_aseguradora 
where mc.status = 'Activo'