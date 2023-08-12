SELECT p.nombre as Proveedor 
from Proveedores p
left join Articulos a on p.id_proveedor = a.id_proveedor
where a.id_articulo is null;