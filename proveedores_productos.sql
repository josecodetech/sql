SELECT p.nombre as Proveedor, count(a.id_articulo) as Cantidad_productos
from Proveedores p
left join Articulos a on p.id_proveedor = a.id_proveedor
group by p.nombre;