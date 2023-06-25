CREATE TABLE product (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    price INt NOT NULL,
    PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE user (
    id INT AUTO_INCREMENT NOT NULL,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE revoked_token (
    id INT AUTO_INCREMENT NOT NULL,
    token VARCHAR(255) NOT NULL,
    user_id INT NOT NULL, 
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
) ENGINE=INNODB;