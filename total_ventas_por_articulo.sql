SELECT a.nombre as Articulo, SUM(v.cantidad * v.precio_unitario) as Total_Ventas FROM Articulos a JOIN Ventas v on a.id_articulo = v.id_articulo GROUP by a.nombre;