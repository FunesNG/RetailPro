RetailPro — Proyecto de Data Analytics

RetailPro es un proyecto de análisis de datos orientado al estudio del rendimiento comercial de una empresa distribuidora de productos tecnológicos. El objetivo es transformar los datos de ventas, clientes y productos en información útil para comprender el comportamiento comercial y facilitar la toma de decisiones basada en datos.

El proyecto forma parte de mi formación en Data Analytics en Coderhouse y reúne prácticas de modelado de bases de datos con SQL SERVER, consultas SQL mediante SSMS, proceso de ETL mediante PowerQuery, modelado de entidad de relacion entre tablas y visualizacion de informacion mediante Power BI.

🎯 Objetivo del proyecto

Desarrollar una solución de análisis comercial que permita responder preguntas de negocio como:

-¿Cuánto factura la empresa durante cada período?
-¿Qué productos generan mayores ingresos?
-¿Cuáles son los productos con mayor volumen de ventas?
-¿Qué clientes realizan compras recurrentes?
-¿Cómo se comporta el ticket promedio?
-¿Qué información puede utilizar el equipo comercial para detectar oportunidades de mejora?

📂 Estructura del repositorio

RetailPro/
│
├── ventas_tech_db.sql
├── m4_consultas_negocio.sql
├── m5_consultas_joins.sql
├── Funes_Nazar_Gonzalo_Checkpoint2.pbix
└── README.md

**Descripción de los archivos**

**ventas_tech_db.sql — Base de datos**
Contiene las instrucciones SQL para crear la base de datos y sus tablas, definir relaciones mediante claves primarias y foráneas, insertar datos de ejemplo y realizar consultas de validación.

Las tablas principales son:

-categorias: clasificación de los productos.
-clientes: información de los clientes.
-productos: catálogo de productos.
-ventas: registros de las operaciones comerciales.


**m4_consultas_negocio.sql — Consultas de análisis comercial**

Contiene consultas orientadas a obtener indicadores para la toma de decisiones:

-Resumen mensual de ventas.
-Ranking de los cinco productos con mayor facturación.
-Identificación de clientes recurrentes.
-Comparación de la facturación mensual con el promedio.

**m5_consultas_joins.sql — Consultas con JOIN**

Incluye consultas que combinan información de distintas tablas para obtener una visión más completa de las operaciones comerciales, relacionando las ventas con los clientes, los productos y sus categorías.

**Funes_Nazar_Gonzalo_Checkpoint2.pbix — Archivo de Power BI**

Archivo de proyecto para explorar el trabajo de visualización y análisis desarrollado en Power BI.

📊 Análisis comercial

Las consultas SQL permiten construir indicadores para estudiar el comportamiento de las ventas y detectar oportunidades comerciales.

-Entre los principales indicadores se encuentran:

Facturación total: importe acumulado de las ventas.
Cantidad de operaciones: número de registros de venta, sujeto a la granularidad de los datos.
Ticket promedio: importe promedio de las operaciones o líneas de venta, según el nivel de detalle de la tabla.
Unidades vendidas: cantidad total comercializada por producto.
Ranking de productos: clasificación según la facturación generada.
Clientes recurrentes: clientes con más de un registro de venta.

Estos indicadores permiten distinguir entre productos con alta rotación y productos que generan mayores ingresos, además de analizar la evolución comercial a lo largo del tiempo.

▶️ Cómo ejecutar los scripts SQL

**Requisitos previos**

Para ejecutar el proyecto necesitás:

-Microsoft SQL Server instalado y en funcionamiento.
-SQL Server Management Studio (SSMS).
-Acceso a una instancia de SQL Server con permisos para crear bases de datos y tablas.

**Paso 1. Descargar el repositorio**

Cloná el repositorio con Git:

git clone https://github.com/FunesNG/RetailPro.git

También podés descargarlo como archivo ZIP desde GitHub y extraer su contenido en tu computadora.

**Paso 2. Abrir SQL Server Management Studio**

Abrí SSMS.

Conectate a tu instancia de SQL Server.

Abrí el archivo ventas_tech_db.sql.

**Paso 3. Crear y cargar la base de datos**

Revisá el nombre de la base de datos definido en el script y ejecutalo.

Importante: el archivo utiliza el nombre Ventas_Tech_DB, por lo que debés mantener ese nombre al trabajar con el script original.

El script crea las tablas, establece las relaciones, inserta los datos de ejemplo y ejecuta consultas para verificar la carga.

**Paso 4. Ejecutar las consultas de análisis**

Una vez creada y cargada la base de datos, abrí y ejecutá los siguientes archivos:

m4_consultas_negocio.sql

m5_consultas_joins.sql

Ejecutá las consultas después de seleccionar la base de datos correcta en SSMS.

Los resultados aparecerán en la sección Results del entorno de consultas.

**Paso 5. Explorar el archivo de Power BI**

Abrí Funes_Nazar_Gonzalo_Checkpoint2.pbix con Power BI Desktop.

Si el archivo contiene conexiones a una base de datos local, verificá la configuración del origen de datos y actualizá las credenciales o la conexión según tu entorno.

🧠 Conocimientos aplicados

Durante el desarrollo del proyecto se trabajan conceptos fundamentales de análisis de datos:

-Diseño y creación de bases de datos relacionales.
-Definición de claves primarias y foráneas.
-Inserción y consulta de datos mediante SQL.
-Agregaciones con SUM(), COUNT() y AVG().
-Agrupamiento de información con GROUP BY.
-Filtrado de resultados agregados con HAVING.
-Clasificación de resultados mediante ORDER BY y TOP.
-Combinación de tablas mediante INNER JOIN.
-Interpretación de indicadores comerciales.
-Visualización de información con Power BI.

📌 Estado del proyecto

Proyecto de formación en desarrollo, orientado a fortalecer habilidades de SQL, análisis comercial y visualización de datos.

El repositorio reúne los scripts SQL y el archivo de Power BI correspondientes a las prácticas realizadas durante el proyecto RetailPro.

👨‍💻 Autor

Gonzalo Funes Nazar

Proyecto desarrollado en el marco de la formación en Data Analytics de Coderhouse.
