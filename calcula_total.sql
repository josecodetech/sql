CREATE VIEW TOTAL as
SELECT id_articulo, nombre, precio, iva,
precio + iva as pvp
from iva