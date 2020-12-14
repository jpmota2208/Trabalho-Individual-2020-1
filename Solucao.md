# Solução do Trabalho

## Containerização
Foram criados dois dockerfiles(Cliente e API), bem como seus respectivos entrypoints com alguns comandos principais para auxílio. Há também um docker-compose para realizar ambas as builds e o banco de dados da aplicação.
Houve uma alteração no database.yml para definição do host a partir das variaveis de ambiente, disponiveis no .env.

## Integração Contínua

Para a integração contínua foi utilizado o Github Actions. Para simplificação da solução, foi utilizada apenas um workflow, ele realiza a build e os testes tanto do front quanto do back a cada push ou PR.

## Como executar

Para executar o projeto, basta executar o comando abaixo no terminal:

```sh
docker-compose up --build
```

Para rodar os testes dentro do docker, utilize os comandos:

- Frontend

```sh
docker-compose run -e "NODE_ENV=test" --rm client
```

- Backend

```sh
docker-compose run -e "RAILS_ENV=test" api rake test