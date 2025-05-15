# Kube News - Ambiente de Desenvolvimento e Produção

Este projeto contém configurações separadas para ambientes de desenvolvimento e produção.

## Estrutura do Projeto

```
.
├── .devcontainer/
│   ├── Dockerfile.dev
│   └── docker-compose.override.yml
├── compose.yml
├── Dockerfile
└── README.md
```

## Como Executar

### Ambiente de Desenvolvimento

O ambiente de desenvolvimento inclui hot reload e outras ferramentas de desenvolvimento.

1. Abra o projeto no VS Code com Dev Containers
2. O ambiente será configurado automaticamente
3. A aplicação estará disponível em `http://localhost:8080`

### Ambiente de Produção

Para executar o ambiente de produção:

```bash
docker compose up -d
```

A aplicação estará disponível em `http://localhost:8080`

## Variáveis de Ambiente

As seguintes variáveis de ambiente podem ser configuradas:

- `DB_USER`: Usuário do banco de dados (default: kubenews)
- `DB_PASSWORD`: Senha do banco de dados (default: Pg#123)
- `DB_NAME`: Nome do banco de dados (default: kubenews)

## Diferenças entre os Ambientes

- **Desenvolvimento**: Inclui hot reload, volumes montados para desenvolvimento ao vivo
- **Produção**: Otimizado para performance e segurança, sem ferramentas de desenvolvimento

# Projeto kube-news

### Objetivo
O projeto Kube-news é uma aplicação escrita em NodeJS e tem como objetivo ser uma aplicação de exemplo pra trabalhar com o uso de containers.

### Configuração
Pra configurar a aplicação, é preciso ter um banco de dados Postgre e pra definir o acesso ao banco, configure as variáveis de ambiente abaixo:

DB_DATABASE => Nome do banco de dados que vai ser usado.

DB_USERNAME => Usuário do banco de dados.

DB_PASSWORD => Senha do usuário do banco de dados.

DB_HOST => Endereço do banco de dados.
