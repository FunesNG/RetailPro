-- CONSULTA 1: INNER JOIN
-- Proposito: Tener un vistazo general de como van las ventas.
SELECT v.fecha_venta,
v.id_cliente,
c.nombre nombre_cliente,
p.nombre_producto AS producto,
ct.nombre_categoria AS categoria,
c.email,
c.ciudad,
v.cantidad ,
v.precio_unitario costo,
(cantidad * precio_unitario) AS total
FROM ventas v 
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN productos p ON v.id_producto = p.id_producto
JOIN categorias ct ON p.id_categoria = ct.id_categoria;
-- Hallazgo: Trayendo todo a la vista, en un vistazo general se logra ver en que ubicacion hubo mas ventas,
-- asi como tambien, cuales fueron las categorias que mas se vendieron, entre otras.

-- CONSULTA 2: LEFT JOIN VENTAS CLIENTES
-- Proposito: Encontrar clientes que no hicieron ninguna compra para que CRM los contacte.
SELECT c.nombre,
c.email,
c.fecha_registro,
v.id_cliente ventas
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE v.id_cliente IS NULL;
-- Hallazgo: Se encontró que hubieron DOS clientes no efectuaron compras.
-- Se registraron en Abril y Marzo.

--CONSULTA 3: LEFT JOIN PRODUCTOS
-- Proposito: Encontrar que productos no tuvieron ventas.
SELECT p.nombre_producto producto,
c.nombre_categoria categoria,
p.precio,
v.id_cliente ventas
FROM productos p
LEFT JOIN ventas v ON p.id_producto = v.id_producto
LEFT JOIN categorias c ON c.id_categoria = p.id_categoria
WHERE v.id_producto IS NULL;
--Hallazgo: Se encontró que hubieron DOS productos que no tuvieron ventas, tal vez no sean acorde los precios.

-- CONSULTA 4: Consolidado por canal (UNION ALL)
-- Proposito: Lograr ver la diferencia entre la primer semana y la segunda.
SELECT canal, SUM(total) AS total_canal
FROM (
SELECT fecha_venta, (cantidad * precio_unitario) AS total, 'Sem. 1' AS canal
FROM ventas WHERE fecha_venta <= '2024-03-10'
UNION ALL 
SELECT fecha_venta, (cantidad * precio_unitario) AS total, 'Sem. 2' AS canal
FROM ventas WHERE fecha_venta > '2024-03-10'
) AS consolidado
GROUP BY canal;

-- Hallazgo: Se logra determinar que durante la primer semana del mes hubo mas ventas.
-- Podría determinar que la gente gasta más en esa etapa del mes.