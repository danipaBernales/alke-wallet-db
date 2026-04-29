USE AlkeWallet;

INSERT INTO usuario
(nombre, correo, contraseña, saldo)
VALUES
('Daniela Bernales', 'daniela@mail.com', '1234', 500000),
('Juan Perez', 'juan@mail.com', '1234', 250000),
('Maria Soto', 'maria@mail.com', '1234', 100000);

INSERT INTO moneda
(currency_name, currency_symbol)
VALUES
('Peso Chileno', 'CLP'),
('Dólar', 'USD'),
('Euro', 'EUR');

INSERT INTO transaccion
(sender_user_id, receiver_user_id, currency_id, importe)
VALUES
(1, 2, 1, 50000),
(2, 3, 1, 20000),
(1, 3, 2, 100);
