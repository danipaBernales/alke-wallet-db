USE AlkeWallet;

CREATE VIEW top_usuarios_saldo AS

SELECT
nombre,
saldo

FROM usuario

ORDER BY saldo DESC

LIMIT 5;

SELECT *
FROM top_usuarios_saldo;
