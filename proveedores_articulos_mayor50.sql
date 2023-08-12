SELECT DISTINCT p.nombre as Proveedor
from Proveedores p
JOIN Articulos a ON p.id_proveedor = a.id_proveedor
WHERE a.precio > 50;