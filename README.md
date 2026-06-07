# 🛒 Sistema de Vendas

![Delphi](https://img.shields.io/badge/Delphi-11-red?style=for-the-badge&logo=delphi&logoColor=white) ![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white) ![FireDAC](https://img.shields.io/badge/FireDAC-nativo-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow?style=for-the-badge)

Sistema de vendas desktop desenvolvido em Delphi 11 com FireDAC e MySQL, criado para portfólio e aprendizado. O projeto é construído do zero, com foco em boas práticas desde a estrutura inicial — organização MVC, scripts SQL versionados e sem dependências pagas.

---

## 🚀 Tecnologias

- **Delphi 11** — linguagem e IDE
- **FireDAC** — camada de acesso a dados (incluso no Delphi)
- **MySQL 8** — banco de dados
- **MySQL Connector/C 6.1** — driver de conexão 32-bit (gratuito, incluso no Delphi)
- **dbForge Studio Express** — administração do banco (gratuito)

> 100% gratuito para reproduzir — sem componentes pagos.

---

## 🏗️ Arquitetura
 
O projeto segue o padrão **MVC** desde o início, com separação clara entre camadas:
 
```
SistemaVendas/
├── src/
│   ├── Utils/        → conexão e utilitários
│   ├── Model/        → acesso a dados
│   ├── View/         → formulários
│   └── Controller/   → regras de negócio
├── database/         → scripts SQL por tabela
├── .gitignore
├── LICENSE
└── README.md
```
---
Escopo **monoempresa** — a tabela `empresas` armazena os dados da empresa proprietária do sistema, usados em relatórios e documentos. Decisão consciente de escopo; multitenancy exigiria contexto de empresa em todas as camadas.

## ⚙️ Como executar

### Pré-requisitos

- Delphi 11 Community ou superior
- MySQL 8.0
- `libmysql.dll` (MySQL Connector/C 6.1, 32-bit) na pasta do executável
- dbForge Studio Express (opcional, para administrar o banco)

### 1. Banco de dados

Execute os scripts da pasta `database/scripts` em ordem numérica.

>Login padrão após criar o banco: usuário `admin`, senha `admin`.

### 2. Configuração da conexão
 
Na primeira execução, caso o `config.ini` não seja encontrado, o sistema exibe uma tela de erro com a opção **Configurar Conexão**. Preencha os dados do seu ambiente e salve — o arquivo é criado automaticamente na pasta do executável.

### Compilação

Abra `src/SistemaVendas.dproj` no Delphi 11 e pressione **F9**.  
O executável será gerado em `bin\Debug\Win32\`.

---

## 👨‍💻 Sobre

Atuo como suporte técnico de um ERP desenvolvido em Delphi. Este projeto nasceu da vontade de entender o desenvolvimento por dentro — não só dar suporte, mas construir.