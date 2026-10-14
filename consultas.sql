-- consultas 
-- 1 listado general de postulaciones
SELECT postulacion.num_postulacion, postulacion.fecha, tipo_iniciativa.tipo_iniciativa, sede.nombre_sede, 
       region.nombre_region AS region_ejecucion, region.nombre_region AS region_impacto, 
       empresa.nombre_empresa, postulacion.presupuesto
FROM postulacion
JOIN tipo_iniciativa ON postulacion.id_tipo_iniciativa = tipo_iniciativa.id_tipo_iniciativa
JOIN sedes_postulacion ON postulacion.codigo_interno = sedes_postulacion.codigo_interno
JOIN sede ON sedes_postulacion.id_sede = sede.id_sede
JOIN region ON postulacion.id_region_ejecucion = region.id_region
JOIN empresa ON postulacion.rut_empresa = empresa.rut_empresa;

-- 2 postulaciones por region
SELECT empresa.nombre_empresa, sede.nombre_sede, postulacion.presupuesto
FROM postulacion
JOIN empresa ON postulacion.rut_empresa = empresa.rut_empresa
JOIN sedes_postulacion ON postulacion.codigo_interno = sedes_postulacion.codigo_interno
JOIN sede ON sedes_postulacion.id_sede = sede.id_sede
JOIN region ON postulacion.id_region_ejecucion = region.id_region
WHERE region.nombre_region = 'Valparaiso';

-- 3 conteo por tipo de iniciativa
SELECT tipo_iniciativa.tipo_iniciativa, COUNT(postulacion.codigo_interno) AS cantidad
FROM tipo_iniciativa
LEFT JOIN postulacion ON tipo_iniciativa.id_tipo_iniciativa = postulacion.id_tipo_iniciativa
GROUP BY tipo_iniciativa.tipo_iniciativa;

-- 4 equipo de trabajo de una postulacion
SELECT miembro.rut, miembro.nombre, tipo_persona.tipo_persona, sede.nombre_sede, miembro.email, detalle_equipo.rol
FROM detalle_equipo
JOIN miembro ON detalle_equipo.rut = miembro.rut
JOIN tipo_persona ON miembro.id_tipo_persona = tipo_persona.id_tipo_persona
JOIN sede ON miembro.id_sede = sede.id_sede
JOIN equipo_trabajo ON detalle_equipo.id_equipo = equipo_trabajo.id_equipo
JOIN postulacion ON equipo_trabajo.codigo_interno = postulacion.codigo_interno
WHERE postulacion.num_postulacion = 1001;

-- 5 empresas con postulaciones y convenio
SELECT tipo_empresa.tamaño_emp, 
       empresa.convenio,
       COUNT(postulacion.codigo_interno) AS cantidad_postulaciones
FROM empresa
JOIN tipo_empresa ON empresa.id_tipo_empresa = tipo_empresa.id_tipo_empresa
LEFT JOIN postulacion ON empresa.rut_empresa = postulacion.rut_empresa
GROUP BY empresa.rut_empresa
ORDER BY cantidad_postulaciones DESC;

-- 6 postulaciones con presupuesto sobre el promedio
SELECT postulacion.num_postulacion, empresa.nombre_empresa, postulacion.presupuesto
FROM postulacion
JOIN empresa ON postulacion.rut_empresa = empresa.rut_empresa
WHERE postulacion.presupuesto > (SELECT AVG(presupuesto) FROM postulacion)
ORDER BY postulacion.presupuesto DESC;

-- 7 cantidad de integrantes por postulacion y tipo
SELECT postulacion.num_postulacion, tipo_persona.tipo_persona, COUNT(detalle_equipo.rut) AS cantidad
FROM postulacion
JOIN equipo_trabajo ON postulacion.codigo_interno = equipo_trabajo.codigo_interno
JOIN detalle_equipo ON equipo_trabajo.id_equipo = detalle_equipo.id_equipo
JOIN miembro ON detalle_equipo.rut = miembro.rut
JOIN tipo_persona ON miembro.id_tipo_persona = tipo_persona.id_tipo_persona
GROUP BY postulacion.num_postulacion, tipo_persona.tipo_persona;

-- 8 postulaciones que no cumplen el minimo de equipo
SELECT postulacion.num_postulacion, 
       COUNT(CASE WHEN miembro.id_tipo_persona = 1 THEN 1 END) AS cant_profesores,
       COUNT(CASE WHEN miembro.id_tipo_persona = 2 THEN 1 END) AS cant_estudiantes
FROM postulacion
JOIN equipo_trabajo ON postulacion.codigo_interno = equipo_trabajo.codigo_interno
JOIN detalle_equipo ON equipo_trabajo.id_equipo = detalle_equipo.id_equipo
JOIN miembro ON detalle_equipo.rut = miembro.rut
GROUP BY postulacion.num_postulacion
HAVING cant_profesores < 3 OR cant_estudiantes < 5;

-- 9 empresas sin postulaciones registradas
SELECT empresa.nombre_empresa, empresa.rut_empresa, tipo_empresa.tamaño_emp
FROM empresa
JOIN tipo_empresa ON empresa.id_tipo_empresa = tipo_empresa.id_tipo_empresa
LEFT JOIN postulacion ON empresa.rut_empresa = postulacion.rut_empresa
WHERE postulacion.codigo_interno IS NULL;

-- 10 postulaciones que exceden el plazo
SELECT postulacion.num_postulacion, postulacion.codigo_interno, COUNT(etapa.id_etapa) AS total_etapas, SUM(etapa.plazo_semanas) AS total_semanas
FROM postulacion
JOIN etapa ON postulacion.codigo_interno = etapa.codigo_interno
GROUP BY postulacion.codigo_interno
HAVING total_semanas > 36
ORDER BY total_semanas DESC;