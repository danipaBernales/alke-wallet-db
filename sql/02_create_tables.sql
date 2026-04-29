USE AlkeWallet;

CREATE TABLE usuario (

    user_id INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,

    correo VARCHAR(100) NOT NULL UNIQUE,

    contraseña VARCHAR(255) NOT NULL,

    saldo DECIMAL(12,2) NOT NULL DEFAULT 0,

    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

CREATE TABLE moneda (

    currency_id INT AUTO_INCREMENT PRIMARY KEY,

    currency_name VARCHAR(50) NOT NULL,

    currency_symbol VARCHAR(10) NOT NULL

);

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
