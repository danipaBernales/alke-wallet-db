USE AlkeWallet;

-- ACTUALIZAR CORREO

UPDATE usuario
SET correo = 'nuevo_correo@mail.com'
WHERE user_id = 1;

-- ELIMINAR TRANSACCIÓN

DELETE FROM transaccion
WHERE transaction_id = 2;
