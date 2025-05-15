# Kube News

Uma aplicação em NodeJS para demonstração do uso de containers e Kubernetes.

## 🚀 Início Rápido com VS Code

1. Instale as extensões necessárias:
   - Docker
   - Dev Containers
   - Remote Development

2. Clone o repositório:
   ```bash
   git clone <seu-repositorio>
   cd kube-news
   ```

3. No VS Code:
   - Pressione F1 ou Ctrl+Shift+P
   - Digite: "Dev Containers: Open Folder in Container"
   - Selecione a pasta do projeto

O VS Code irá:
- Construir o container de desenvolvimento
- Configurar o ambiente
- Instalar as extensões necessárias
- Iniciar o servidor em modo de desenvolvimento com hot-reload

## 🛠️ Ambientes

### Desenvolvimento
- Hot-reload ativado
- Nodemon para atualização automática
- Montagem de volume para desenvolvimento ao vivo
- PostgreSQL em modo de desenvolvimento

### Produção
- Otimizado para performance
- Multi-stage build para imagem menor
- Configurações de segurança aprimoradas

## ⚙️ Configuração

Crie um arquivo `.env` na raiz do projeto:

```env
DB_HOST=db
DB_PORT=5432
DB_USERNAME=seu_usuario
DB_PASSWORD=sua_senha
DB_DATABASE=seu_banco
```

## 🏃‍♂️ Rodando Manualmente

Se preferir rodar sem o VS Code, use:

### Desenvolvimento
```bash
docker compose -f compose.yml -f .devcontainer/docker-compose.override.yml up
```

### Produção
```bash
docker compose up
```

## 🔒 Segurança

- Nunca commit arquivos .env
- Use secrets em produção
- O usuário node é usado por padrão (não root)
- Imagens base oficiais e atualizadas

## 🌐 Endpoints

- `GET /` - Página principal
- `GET /api/news` - Lista todas as notícias
- `POST /api/news` - Cria uma nova notícia

## 📦 Tecnologias

- Node.js
- Express
- PostgreSQL
- Docker
- VS Code Dev Containers

## 🤝 Contribuindo

1. Fork o projeto
2. Crie sua Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a Branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

# Projeto kube-news

### Objetivo
O projeto Kube-news é uma aplicação escrita em NodeJS e tem como objetivo ser uma aplicação de exemplo pra trabalhar com o uso de containers.

### Configuração
Pra configurar a aplicação, é preciso ter um banco de dados Postgre e pra definir o acesso ao banco, configure as variáveis de ambiente abaixo:

DB_DATABASE => Nome do banco de dados que vai ser usado.

DB_USERNAME => Usuário do banco de dados.

DB_PASSWORD => Senha do usuário do banco de dados.

DB_HOST => Endereço do banco de dados.
