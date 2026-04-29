CREATE DATABASE AlkeWallet;

USE AlkeWallet;

-- =========================
-- TABLA USUARIO
-- =========================

CREATE TABLE usuario (

    user_id INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,

    correo VARCHAR(100) NOT NULL UNIQUE,

    contraseña VARCHAR(255) NOT NULL,

    saldo DECIMAL(12,2) NOT NULL DEFAULT 0,

    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- =========================
-- TABLA MONEDA
-- =========================

CREATE TABLE moneda (

    currency_id INT AUTO_INCREMENT PRIMARY KEY,

    currency_name VARCHAR(50) NOT NULL,

    currency_symbol VARCHAR(10) NOT NULL

);

-- =========================
-- TABLA TRANSACCION
-- =========================

CREATE TABLE transaccion (

    transaction_id INT AUTO_INCREMENT PRIMARY KEY,

    sender_user_id INT NOT NULL,

    receiver_user_id INT NOT NULL,

    currency_id INT NOT NULL,

    importe DECIMAL(12,2) NOT NULL,

    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (sender_user_id)
        REFERENCES usuario(user_id),

    FOREIGN KEY (receiver_user_id)
        REFERENCES usuario(user_id),

    FOREIGN KEY (currency_id)
        REFERENCES moneda(currency_id)

);

-- =========================
-- INSERTAR USUARIOS
-- =========================

INSERT INTO usuario
(nombre, correo, contraseña, saldo)
VALUES
('Daniela Bernales', 'daniela@mail.com', '1234', 500000),
('Juan Perez', 'juan@mail.com', '1234', 250000),
('Maria Soto', 'maria@mail.com', '1234', 100000);

-- =========================
-- INSERTAR MONEDAS
-- =========================

INSERT INTO moneda
(currency_name, currency_symbol)
VALUES
('Peso Chileno', 'CLP'),
('Dólar', 'USD'),
('Euro', 'EUR');

-- =========================
-- INSERTAR TRANSACCIONES
-- =========================

INSERT INTO transaccion
(sender_user_id, receiver_user_id, currency_id, importe)
VALUES
(1, 2, 1, 50000),
(2, 3, 1, 20000),
(1, 3, 2, 100);
