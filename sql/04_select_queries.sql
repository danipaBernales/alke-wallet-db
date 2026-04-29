USE AlkeWallet;

-- OBTENER MONEDA DE UN USUARIO

SELECT
u.nombre,
m.currency_name,
m.currency_symbol

FROM transaccion t

INNER JOIN usuario u
ON t.sender_user_id = u.user_id

INNER JOIN moneda m
ON t.currency_id = m.currency_id

WHERE u.user_id = 1;

-- TODAS LAS TRANSACCIONES

SELECT *
FROM transaccion;

-- TRANSACCIONES DE UN USUARIO

SELECT
u.nombre,
t.importe,
t.transaction_date

FROM transaccion t

INNER JOIN usuario u
ON t.sender_user_id = u.user_id

WHERE u.user_id = 1;

-- TOTAL TRANSACCIONES

SELECT
u.nombre,
COUNT(t.transaction_id) AS total_transacciones,
SUM(t.importe) AS monto_total

FROM usuario u

INNER JOIN transaccion t
ON u.user_id = t.sender_user_id

GROUP BY u.nombre;
