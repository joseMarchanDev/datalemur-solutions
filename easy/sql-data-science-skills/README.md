# Matching Skills

📚 Fuente: DataLemur

🔗 Reto: https://datalemur.com/questions/matching-skills

**Dificultad:** Easy  
**Tema principal:** GROUP BY, HAVING, Funciones de agregación  
**Estado:** ✅ Resuelto

---

## Descripción del problema

Una empresa está buscando candidatos que cumplan con todas las habilidades requeridas para un puesto específico.

La tabla contiene las habilidades registradas por cada candidato y el objetivo es identificar aquellos candidatos que poseen todas las habilidades necesarias para la vacante.

---

## Enfoque de solución

Para resolver este ejercicio:

1. Filtré únicamente las habilidades requeridas para el puesto.
2. Agrupé los registros por candidato.
3. Conté cuántas habilidades requeridas tenía cada uno.
4. Utilicé `HAVING` para identificar a los candidatos que cumplen con la cantidad total de habilidades exigidas.
5. Devolví únicamente los identificadores de los candidatos que satisfacen todos los requisitos.

---

## Solución SQL

```sql
SELECT
    candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id;
```

---

## Conceptos practicados

- Filtrado con `WHERE`
- Agrupación de registros con `GROUP BY`
- Funciones de agregación (`COUNT`)
- Filtrado de grupos mediante `HAVING`
- Identificación de registros que cumplen múltiples condiciones

---

## Aplicación en escenarios reales

La misma lógica puede utilizarse para resolver problemas como:

- Identificar candidatos que cumplen todos los requisitos de una vacante.
- Detectar clientes que poseen todas las características de un segmento.
- Encontrar productos que cumplen múltiples criterios de calidad.
- Identificar usuarios que completaron todas las actividades obligatorias de una plataforma.
- Validar certificaciones requeridas para un rol específico.

Este tipo de consultas es muy común en procesos de selección, segmentación y análisis de negocio.

---

## Aprendizajes obtenidos

Este ejercicio me ayudó a reforzar el uso de `GROUP BY` y `HAVING` para validar múltiples condiciones sobre un mismo registro.

También comprendí mejor cómo las funciones de agregación pueden utilizarse para responder preguntas de negocio relacionadas con requisitos, cumplimiento y segmentación de datos.

---

## Reflexión

Aunque la consulta es relativamente corta, el verdadero reto consiste en identificar que el problema puede resolverse agrupando información y verificando que cada candidato cumple la totalidad de las habilidades requeridas.

Este ejercicio demuestra cómo SQL permite transformar datos dispersos en información útil para la toma de decisiones.
