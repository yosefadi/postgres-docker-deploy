# postgres + pgadmin Docker Deploy

## How to start for the first time?
Create environment file .env (example provided)
and then run:
```
make all
```
This will clean and initialize docker volume the directory,  
and then start the docker container  

## How to start after that?
```
make
```
or  
```
make start
```
This will only start the docker container without replacing docker volume data directory

## How to connect to pgadmin?
If you don't set up ssl in nginx configuration,  
you can connect via standard HTTP port (80/tcp) to your server IP Address

## How to connect to Postgre DB?
For application deployed on the server, you can connect using docker container name.  
For application deployed not on the server, make a tunnel to the server and then connect  
to specified postgre port (5432).
Postgres docker container only bound to loopback interface (127.0.0.1) for security reason.
Only use secure tunnel (either SSH tunnel or VPN tunnel) to the server.
