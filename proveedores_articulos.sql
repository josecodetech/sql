SELECT p.nombre AS Proveedor, a.nombre AS Articulo
FROM Proveedores p
JOIN Articulos a ON p.id_proveedor = a.id_proveedor;