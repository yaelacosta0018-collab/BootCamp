-- Mostrar todos los registros de la tabla programa
SELECT * FROM estudiante;
SELECT * FROM programa;

-- Mostrar estudiantes con el nombre del programa al que pertenecen
SELECT 
    e.id_estudiante, e.nombre AS estudiante, p.nombre AS carrera
FROM estudiante e
INNER JOIN programa p ON e.id_programa = p.id_programa;

-- Actualizar el nombre del estudiante con id 4
UPDATE estudiante
SET numero_documento = 1066523547
WHERE id_estudiante = 1;