# Solução do Trabalho
**Aluno**: João Pedro Mota Jardim

**Matricula**: 16/0031982

[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=jpmota2208_Trabalho-Individual-2020-1&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=jpmota2208_Trabalho-Individual-2020-1)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=jpmota2208_Trabalho-Individual-2020-1&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=jpmota2208_Trabalho-Individual-2020-1)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=jpmota2208_Trabalho-Individual-2020-1&metric=security_rating)](https://sonarcloud.io/dashboard?id=jpmota2208_Trabalho-Individual-2020-1)

## Containerização
Foram criados dois dockerfiles(Cliente e API), bem como seus respectivos entrypoints com alguns comandos principais para auxílio. Há também um docker-compose para realizar ambas as builds e o banco de dados da aplicação.
Houve uma alteração no database.yml para definição do host a partir das variaveis de ambiente, disponiveis no .env.

## Integração Contínua

Para a integração contínua foi utilizado o **Github Actions**. Para simplificação da solução, foi utilizada apenas um workflow, ele realiza a build e os testes tanto do front quanto do back a cada push ou PR.
É utilizado o **SonarCloud** para análise de qualidade estática do código.

## Deploy
O cliente e a api tiveram seu deploy realizado em locais diferentes. O cliente foi utilizando o **Vercel**, pela sua compatibilidade com projetos JS.

Link do deploy do front: https://trabalho-individual-2020-1-git-master.jpmota2208.vercel.app/#/

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
