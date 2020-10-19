# data

### Установка утилит Docker
https://docs.docker.com/engine/install/ubuntu/
https://docs.docker.com/compose/install/

### Установика сервисов:
```bash
cd ./deploy/
chmod u+x install.shsu
./install.sh
```

## Настройка развернутых сервисов

### Предварительное наполнение базы данных Posgress
```bash
docker exec -it sf-postgres bash
```
После загрузки внутренней консоли контейнера выполнить команды:
```bash
psql -U postgres -c 'create database storage;'
CREATE DATABASE
bash-5.0# exit
exit
```