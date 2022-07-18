# ranek

## Project setup

```
npm install
```

### Compiles and hot-reloads for development

```
npm run serve
```

### Compiles and minifies for production

```
npm run build
```

### Lints and fixes files

```
npm run lint
```

### Customize configuration

See [Configuration Reference](https://cli.vuejs.org/config/).

## Docker

docker-compose build

docker-compose run --rm --service-ports app bash

npm run serve

http://localhost:8080/

docker-compose down

## Executando json serve

A execução do json serve é necessária para habilitar a resposta mock dos endpoints. No momento vamos rodar esse comando na máquina, dentro do
diretório raíz do projeto.

npx json-server db.json --watch
