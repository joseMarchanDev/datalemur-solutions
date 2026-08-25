# SQL Page With No Likes

📚 Fuente: DataLemur

🔗 Reto: https://datalemur.com/questions/sql-page-with-no-likes

## Descripción del problema

Se tienen dos tablas:

- `pages`
- `page_likes`

El objetivo es identificar las páginas de Facebook que nunca han recibido un "like".

Para ello, debemos devolver los `page_id` que existen en la tabla `pages`, pero que no tienen registros relacionados en la tabla `page_likes`.

---

## Enfoque de solución

Para resolver este ejercicio:

1. Tomé la tabla `pages` como tabla principal para considerar todas las páginas existentes.
2. Realicé un `LEFT JOIN` con la tabla `page_likes`.
3. Identifiqué las filas sin coincidencias en la tabla relacionada.
4. Filtré los registros cuyo `page_id` en `page_likes` es `NULL`.
5. Ordené el resultado de forma ascendente.

---

## Solución SQL

```sql
SELECT p.page_id
FROM pages p
LEFT JOIN page_likes pl
    ON p.page_id = pl.page_id
WHERE pl.page_id IS NULL
ORDER BY p.page_id;
```

---

## Conceptos practicados

- LEFT JOIN
- Filtrado de valores NULL
- Identificación de registros sin coincidencias
- Relaciones entre tablas
- Ordenamiento con ORDER BY

---

## Aplicación en escenarios reales

La misma lógica puede utilizarse para identificar:

- Clientes que nunca realizaron una compra.
- Productos que nunca fueron vendidos.
- Usuarios que no presentan actividad.
- Empleados sin proyectos asignados.
- Suscriptores que no han interactuado con una plataforma.

Este patrón es muy frecuente en tareas de análisis de datos y generación de reportes.

---

## Aprendizajes obtenidos

Este ejercicio me permitió reforzar el uso de `LEFT JOIN` para encontrar registros que no tienen correspondencia en otra tabla.

También me ayudó a comprender mejor cómo utilizar valores `NULL` después de una unión para detectar información faltante o relaciones inexistentes entre conjuntos de datos.
