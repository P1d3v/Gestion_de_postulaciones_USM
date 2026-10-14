Javiera Roda 202473009-6
Felipe Gajardo 202473078-9

Lista de supuestos o decisiones en la BD:

0. se ocupo la notación UML vista en clases por lo que va de esta manera: visibilidad nombre: tipo_dato y en el lógico {PK o FK} en la parte uno se puso los que son no nulos, también se subrallo en la parte uno las que luego iban a ser PK y eso implica que los Pk y FK son no nulos. también se utilizo el integer, ya que fue lo que nos salió en los ejemplos de diagramas de base de datos pero en teoría es lo mismo que el int, también se utilizo Varchar ya que es mas flexible.

1. se supone que en el rol de los miembros puestos en el detalle se incluiría si son responsables.

2. se crea una case tipo_persona al pasar la herencia a tipo lógico, ya que debería quedar como atributo pero tipo_persona es un catalogo.

3. se crea la asociación detalle_equipo para que no quede una relación mucho a muchos, ya que antes estaba asi y daba problemas en la base de datos.

4. para los teléfonos se utilizo varchar ya que muchos lo escriben con el +56 9 que es lo que ocupamos para poblarla.

5. el catalogo de las regiones esta en el orden de norte a sur, ya se tuvo que buscar los nombres y solían salir asi.

6. se "pasa" 2 veces la id de región, ya que hay 2 tipos de regiones por postulación, por lo que se le escribió arriba de la linea de asociación se le escribió la acción.

7. se creo una clase documento donde sus atributos pueden ser nulos, ya que no se informo mucho al respecto de esto, también por eso se puso los atributos que creimos convenientes que guardara.

8. decidimos añadir altiro la empresa vacia, el equipo que no tienes las personas necesarias y el cronograma que se pase de tiempo, ya que asi podíamos probarlo todo bien, asi también solo exportar la base de datos y subirla.

9. se creo un pdf con la evidencia requerida para la parte 4 y la parte 5, donde va un pequeño enunciado por cada una, también como se respondió en una consulta, las consultas las dejamos en otro archivo .sql.

10. se crearon si no me equivoco 2 empresas extras por si acaso, una quedo sin postulación para las consultas.

11. en una parte del pdf de evidencia las fotos de la parte 5 van sin titulo, ya que sale en la foto el comentario (tipo: --1 Listado general de postulaciones).

12. la mayoría de la base de datos fue creada desde la pagina de XAMPP.

Instrucciones:


1. nosotros para compartirla y probarla, la exportamos desde XAMPP y luego la importamos en el XAMPP, por lo cual eso se debería hacer para utilizarla. 
2. al código se le añadió CREATE DATABASE ct_usm_postulaciones;
USE ct_usm_postulaciones; para que la cree "automatico" en el XAMPP
3. las consultas añadidas en otro archivo deben ser utilizadas en la pestaña sql dentro de XAMPP 
