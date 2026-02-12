-- comentario de 1 linea
-- =========
-- Tabla: programa 
-- Un programa académico ("Ingenieria","Derecho") 
--- ========================

CREATE TABLE programa(
id_programa SERIAL PRIMARY KEY, --SERIAL = número automático (1,2,3.....)
nombre VARCHAR(100) NOT NULL UNIQUE -- obligatorio y único
); 
