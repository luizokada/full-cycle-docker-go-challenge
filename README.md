# Full Cycle Docker Go Challenge

Este repositório contém um desafio do curso Full Cycle, focado em Docker e Go.

## Descrição
O objetivo do desafio é criar uma aplicação simples em Go que roda dentro de um container Docker. Ao executar o container, a aplicação deve imprimir a mensagem:

```
Fullcycle Rocks!
```

## Estrutura do Projeto
- `main.go`: Código-fonte da aplicação Go.
- `Dockerfile`: Arquivo de configuração para criar a imagem Docker.

## Como executar

1. **Build da imagem Docker:**
   ```bash
   docker build -t <seu-usuario>/fullcycle .
   ```

2. **Executar o container:**
   ```bash
   docker run --rm --name test <seu-usuario>/fullcycle
   ```

## Requisitos
- Docker instalado
