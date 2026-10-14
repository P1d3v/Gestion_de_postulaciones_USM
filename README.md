# Base de Datos para la Gestión y Análisis de Postulaciones CT-USM

## Resumen

Diseñé e implementé, junto con Javiera Roda, una base de datos relacional para organizar información de postulaciones del Centro de Transferencia Tecnológica de la USM. El proyecto transforma los requisitos del caso en un esquema con entidades relacionadas, datos de prueba y consultas SQL para explorar postulaciones, empresas, presupuestos, equipos y plazos.

Este repositorio corresponde a un proyecto de bases de datos: incluye el modelo implementado y consultas de análisis; no es una aplicación web.

## Mi trabajo en el proyecto

- Diseñé e implementé el esquema relacional y sus relaciones en MariaDB.
- Modelé entidades como postulaciones, empresas, miembros, equipos, sedes, regiones, etapas y documentos.
- Resolví la relación entre equipos y miembros mediante la tabla asociativa `detalle_equipo`.
- Organicé valores reutilizables en tablas de catálogo, como tipos de persona, empresa e iniciativa.
- Preparé datos de ejemplo, incluidos casos útiles para revisar postulaciones sin equipo completo, empresas sin postulaciones y proyectos cuyo cronograma supera el plazo considerado.
- Escribí consultas SQL para combinar datos relacionados y generar reportes que respondieran preguntas concretas del dominio.
- Documenté supuestos de modelamiento y preparé archivos de evidencia y un diccionario de datos.

## Consultas y análisis incluidos

El archivo [`consultas.sql`](./consultas.sql) contiene diez consultas para:

- Obtener un listado de postulaciones con datos de empresa, sede, región, iniciativa y presupuesto.
- Filtrar postulaciones por región y contar postulaciones por tipo de iniciativa.
- Consultar los integrantes y roles del equipo de una postulación.
- Comparar empresas según su convenio y cantidad de postulaciones.
- Identificar presupuestos por sobre el promedio.
- Contar integrantes por postulación y tipo de persona.
- Detectar postulaciones que no alcanzan el mínimo de integrantes definido en la consulta.
- Encontrar empresas sin postulaciones y postulaciones cuyo plazo total supera las 36 semanas.

Para resolver estos casos utilicé `JOIN`, `LEFT JOIN`, agregaciones (`COUNT`, `AVG`, `SUM`), agrupaciones (`GROUP BY`), filtros (`WHERE`, `HAVING`), una subconsulta y expresiones condicionales con `CASE`.

## Tecnologías

- **SQL**
- **MariaDB** (compatible con MySQL)
- **XAMPP / phpMyAdmin** para crear, importar y probar la base de datos

## Cómo ejecutar

1. Inicia MySQL o MariaDB desde XAMPP.
2. Abre phpMyAdmin e importa [`ct_usm_postulaciones.sql`](./ct_usm_postulaciones.sql). El script crea y selecciona la base de datos `ct_usm_postulaciones`, además de definir las tablas y cargar datos.
3. Abre la pestaña **SQL** en phpMyAdmin, copia el contenido de [`consultas.sql`](./consultas.sql) y ejecuta las consultas que quieras revisar.

## Archivos del proyecto

| Archivo | Descripción |
| --- | --- |
| [`ct_usm_postulaciones.sql`](./ct_usm_postulaciones.sql) | Creación y carga de la base de datos. |
| [`consultas.sql`](./consultas.sql) | Consultas de reportes y análisis. |
| [`Dic_datos.xlsx`](./Dic_datos.xlsx) | Diccionario de datos. |
| [`Parte_1.png`](./Parte_1.png) y [`Parte_2.png`](./Parte_2.png) | Evidencias visuales del trabajo. |
| [`Evidencias_fotos.pdf`](./Evidencias_fotos.pdf) | Evidencias complementarias del proyecto. |

## Aprendizajes demostrados

El proyecto demuestra experiencia práctica en modelamiento relacional, traducción de requisitos a tablas y relaciones, carga de datos de prueba y elaboración de consultas SQL para análisis. También ejercité decisiones de diseño basadas en los datos del caso; por ejemplo, almacenar teléfonos como texto para conservar formatos como `+56`.

## Autores

- **Felipe Gajardo** — 202473078-9
- **Javiera Roda** — 202473009-6
