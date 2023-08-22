CREATE VIEW IVA as
SELECT id_articulo, nombre, precio,
precio * 0.21 as iva
from Articulos