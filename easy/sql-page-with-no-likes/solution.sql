/*
Reto: SQL Page With No Likes
Fuente: DataLemur
Dificultad: Easy

Objetivo:
Encontrar las páginas de Facebook que nunca han recibido un "like".

Estrategia:
1. Partir de la tabla pages para obtener todas las páginas.
2. Realizar un LEFT JOIN con page_likes.
3. Identificar las páginas sin coincidencias en page_likes.
4. Filtrar los registros donde page_likes.page_id sea NULL.
*/

SELECT
    p.page_id
FROM pages AS p
LEFT JOIN page_likes AS pl
    ON p.page_id = pl.page_id
WHERE pl.page_id IS NULL
ORDER BY p.page_id;
