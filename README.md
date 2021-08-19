# Sisyphus Rails

> “The workman of today works every day in his life at the same tasks, and this fate is no less absurd. But it is tragic only at the rare moments when it becomes conscious.”
>
> Albert Camus, *The Myth of Sisyphus*

## Requirement

Tested on Docker Desktop for Mac 3.3.3 (64133) / Docker Engine 20.10.6 / Docker Compose 1.29.1

## Instruction

### 1. Build the app image

```shell
$ docker-compose build app
```

### 2. Create the database

```shell
$ docker-compose run app rake db:create
```

### 3. Use `http://localhost:300` to access the application.
