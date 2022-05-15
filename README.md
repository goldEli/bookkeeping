# README

### Database

Create
```
docker run -d --name db-for-mangosteen -e POSTGRES_USER=mangosteen -e POSTGRES_PASSWORD=123456  -e POSTGRES_DB=mangosteen_dev  -e PGDATA=/var/lib/postgresql/data/pgdata  -v mangosteen-data:/var/lib/postgresql/data  --network=network1 postgres:14 
```

Start
```
docker start db-for-mongosteen
```

### Install dependence
···
rvm use 3
gen install rails -v 7.0.2.3
cd ~/repos/mongosteen-1
bundle install
···


