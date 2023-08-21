alter TABLE alumnos add column Nuevo_Telefono INTEGER;
UPDATE alumnos set Nuevo_Telefono = cast(telefono as INTEGER);
alter TABLE alumnos drop COLUMN telefono;
alter table alumnos RENAME COLUMN Nuevo_Telefono to telefono;