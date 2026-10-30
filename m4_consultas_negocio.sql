-- consulta 1: Resumen ejecutivo mensual

SELECT
MONTH(fecha_venta) AS mes,
COUNT(*) AS total_pedidos,
SUM(cantidad * precio_unitario) AS Total_Facturado,
AVG(cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY MONTH(fecha_venta);


-- consulta 2: Ranking de productos

SELECT TOP 5 id_producto,
SUM(cantidad) AS unidades_vendidas,
SUM(precio_unitario * cantidad) as total_venta
FROM ventas
GROUP BY id_producto ORDER BY total_venta DESC;


-- consulta 3: Clientes recurrentes 

SELECT id_cliente,
COUNT(*) AS cantidad_pedidos,
SUM(precio_unitario * cantidad) AS total_gastado
FROM ventas
GROUP BY id_cliente HAVING COUNT(*) > 1;


-- Consulta 4: Meses por encima/por debajo del promedio

WITH ventas_mensuales AS (
SELECT
MONTH(fecha_venta) AS mes,
SUM (cantidad * precio_unitario) AS total_facturado
FROM ventas
GROUP BY MONTH(fecha_venta)
)
SELECT mes, total_facturado,
CASE WHEN total_facturado >= (SELECT AVG(total_facturado) FROM ventas_mensuales) THEN 'Por encima'
ELSE 'Por debajo'
END AS desempenio_vs_promedio
FROM ventas_mensuales
ORDER BY mes;


-- En la consulta 4 me econtre con el hallazgo de que durante el mes 3, el desempeño dió por encima del promedio estipulado.
-- En la consulta 3 me di cuenta que el producto 1 fue el que mas valor en la venta tuvo.
-- En la consulta 1 encontré que el ticket promedio fue de 644.40 en un total de 10 pedidos. 
