USE AlkeWallet;

START TRANSACTION;

UPDATE usuario
SET saldo = saldo - 50000
WHERE user_id = 1;

UPDATE usuario
SET saldo = saldo + 50000
WHERE user_id = 2;

INSERT INTO transaccion
(sender_user_id, receiver_user_id, currency_id, importe)
VALUES
(1, 2, 1, 50000);

COMMIT;

-- ROLLBACK

START TRANSACTION;

UPDATE usuario
SET saldo = saldo - 99999999
WHERE user_id = 1;

ROLLBACK;
