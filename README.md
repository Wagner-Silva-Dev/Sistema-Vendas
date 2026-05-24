# 🛒 Sistema de Vendas

![Delphi](https://img.shields.io/badge/Delphi-11-red?style=for-the-badge&logo=delphi&logoColor=white) ![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow?style=for-the-badge)

Sistema de vendas desktop desenvolvido em Delphi 11 com FireDAC e MySQL, criado para portfólio e aprendizado. O projeto é construído do zero, com foco em boas práticas desde a estrutura inicial — organização MVC, scripts SQL versionados e sem dependências pagas.

---

## 🚀 Tecnologias

- **Delphi 11** — linguagem e IDE
- **FireDAC** — camada de acesso a dados (incluso no Delphi)
- **MySQL 8** — banco de dados
- **MySQL Connector/C** — driver de conexão (gratuito, incluso no Delphi)
- **dbForge Studio Express** — administração do banco (gratuito)

> 100% gratuito para reproduzir — sem componentes pagos.

---

## 📦 Módulos

- [x] Estrutura inicial do projeto
- [ ] Conexão FireDAC + tela de login
- [ ] Cadastro de Clientes
- [ ] Cadastro de Fornecedores
- [ ] Cadastro de Produtos e Categorias
- [ ] Cadastro de Usuários
- [ ] Pedido de Venda
- [ ] Entrada de Estoque
- [ ] Contas a Receber e a Pagar
- [ ] Relatórios

---

## ⚙️ Como executar

### Pré-requisitos

- Delphi 11
- MySQL 8.0
- MySQL Connector/C (incluso no Delphi)
- dbForge Studio Express (opcional, para administrar o banco)

### Banco de dados

Execute o script `database/setup.sql` no seu MySQL para criar toda a estrutura do banco de uma vez.

> Os scripts individuais de cada tabela ficam na pasta `database/scripts` para referência e versionamento.

### Compilação

Abra `src/SistemaVendas.dproj` no Delphi 11 e pressione **F9**.  
O executável será gerado em `bin\Debug\Win32\`.

---

## 👨‍💻 Sobre

Atuo como suporte técnico de um ERP desenvolvido em Delphi. Este projeto nasceu da vontade de entender o desenvolvimento por dentro — não só dar suporte, mas construir.