INSERT INTO clientes(nombre, direccion, telefono)
VALUES ('Thom', 'Calle 1, casa 1', 111111111),
	  ('Julian','calle 2, casa 2', 222222222),
      ('George','calle 3, casa 3', 333333333),
      ('Stanley','calle 4, casa 4', 444444444),
      ('Kurt','calle 5, casa 5', 555555555);
SELECT *
FROM clientes;

INSERT INTO pedidos(cliente_id, total)
VALUES(1, 200.0),(1, 150.0),(2, 250.0),(2, 350.0),(3, 400.0),
	  (3, 300.0),(4, 450.0),(4, 500.0),(5, 550.0),(5, 600.0);
SELECT clientes.id, nombre, cliente_id, pedidos.id
FROM clientes JOIN pedidos
	ON clientes.id = pedidos.cliente_id;

DELETE FROM clientes
WHERE id > 5;

SELECT *
FROM pedidos
WHERE cliente_id = 1;

DELETE FROM pedidos
WHERE id > 10;

INSERT INTO pedidos(cliente_id, total)
VALUES(1, 650.0);

SELECT clientes.id, nombre, direccion, total
FROM clientes JOIN pedidos
ON clientes.id = pedidos.cliente_id
ORDER BY pedidos.total DESC;
