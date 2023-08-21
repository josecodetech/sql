alter TABLE alumnos add column Nueva_Fecha_Nacimiento DATE;
-- Modifico para convertir correctamente
-- UPDATE alumnos set Nueva_Fecha_Nacimiento = CAST(f_nacimiento as date);
UPDATE alumnos set Nueva_Fecha_Nacimiento = DATE(SUBSTR(f_nacimiento,7,4) || '-' || substr(f_nacimiento,4,2) || '-' || substr(f_nacimiento,1,2));
alter TABLE alumnos drop COLUMN f_nacimiento;
alter table alumnos RENAME COLUMN Nueva_Fecha_Nacimiento to f_nacimiento;


