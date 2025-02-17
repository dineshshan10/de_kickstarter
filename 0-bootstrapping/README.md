## Postgres Setup using Docker


1. Install Docker Desktop from **[here](https://www.docker.com/products/docker-desktop/)**.

1. Clone the github repo
    
    ```
    git clone https://github.com/dineshshan10/de_kickstarter.git

    ```
1. Navigate the to bootstrapping folder
   
   ```
   cd de_kickstarter/0-bootstrapping

   ````

1. Copy **`env_variables.env`** to **`.env`**:
    
    ```bash
    cp env_variables.env .env
    ```

1. Stop ALL existing postgres docker containers(if any)
   ```
   docker ps -a

   ```

2. Run Docker Compose command
   
```
 docker compose up -d
```

1. Verify Runner Docker Container in the Docker desktop. Two containers should be running
   ```
    ds-postgres-container
    ds-pgadmin
   ```
Docker is now setup

### Login into Postgres Database

1. Go to http://localhost:5050
2. Login using
   1. email: postgres@postgres.com
   2. password: postgres
3. Add new Server
4. Give a connection name in **General** tab
5. Fill below details in **Connection** tab
   1. host: host.docker.internal
   2. port: 5432
   3. database: postgres
   4. username: postgres
   5. password: postgres
6. Navigate to the tables and find the imported tables


## Docker Commans to Debug

Start Docker
```
docker compose up -d
```

Stop Docker
```
docker compose down
```

List Runnning Dockers
```
docker ps -a
```


Login to Docker Bash
```
docker exec -it <mycontainer> sh
```


