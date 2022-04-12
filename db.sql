CREATE DATABASE db_myn;

use db_myn;

# Criação das tabelas

# TABLE USER
CREATE TABLE tbl_usuario(
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(12) NOT NULL,
    cpf INT(11) NOT NULL,
    cnpj INT (15) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone INT(11) NOT NULL,
    tipo_usuario VARCHAR(13) NOT NULL
);
DESCRIBE tbl_usuario;

ALTER TABLE tbl_usuario ADD usuarios_desativados VARCHAR(15);

# TABLE PERFIL
CREATE TABLE tbl_perfil(
	id_perfil INT PRIMARY KEY AUTO_INCREMENT,
    perfil_user INT,
    FOREIGN KEY (perfil_user) REFERENCES tbl_usuario(id_usuario)
);


CREATE TABLE tbl_postUser(
	id_post INT PRIMARY KEY AUTO_INCREMENT,
    title_post VARCHAR(150) NOT NULL,
    conte_post TEXT NOT NULL,
    aut_post INT,
    FOREIGN KEY (aut_post) REFERENCES tbl_usuario(id_usuario)
);

SELECT * FROM tbl_postUser;
