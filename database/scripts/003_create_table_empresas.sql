CREATE TABLE IF NOT EXISTS empresas (
  id               INT NOT NULL AUTO_INCREMENT,
  nome_fantasia    VARCHAR(100),
  razao_social     VARCHAR(100) NOT NULL,
  cnpj             CHAR(14) NOT NULL UNIQUE,
  ins_estadual     VARCHAR(20),
  ins_municipal    VARCHAR(20),
  telefone         VARCHAR(20),
  email            VARCHAR(100),
  site             VARCHAR(100),
  cep              CHAR(8),
  logradouro       VARCHAR(100),
  numero           VARCHAR(10),
  complemento      VARCHAR(50),
  bairro           VARCHAR(60),
  cidade           VARCHAR(60),
  uf               CHAR(2),
  data_cadastro    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  data_atualizacao DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,

  PRIMARY KEY (id)
)

ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;