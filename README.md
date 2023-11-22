# Desplegar-dos-servicios-con-Docker-Swarm--volumenes
## Alumno: Durante Lautaro 
Primero paso cree una carpeta que engloba toda la aplicación

2)- La carpeta db contiene el archivo datos.sql que esta contiene mi tabla personas y tambien lleva su propio dockerfile
   En esta carpeta utilize estos comandos

```bash
	docker build -t basededatos . --> me para en la carpeta de la bd
```

3)- Ahora creo la carpeta con mi servicio rest esta se le di el nombre de rest_servicio, aqui estara un servidor con node/express que hace un post a mi backend.

```bash
	docker build -t rest_tp . ---> creo la imagen de mi rest_service
```

4)- Ahora creo una carpeta para mi servicio soap aqui hago un servidor basico con node/express luego agrego soap y mysql hago la logica necesaria para el punto

```bash
	docker build -t soap_tp .  ---> me pocisiono en la carpeta soap_service
```

5)- Creo una carpeta front que contrenda un index.html que es donde se mostrar todo y se hara las peticiones a estos servicio y su respectivo dockerfile

```bash
	docker build -t front_tp . ---> me posiciono en la carpeta front 
```

6)- ahora lo que hago es crear el docker swarm 

primero hago

```bash
	docker swarm init
```

despues inicializo el swarm

```bash
	docker stack deploy -c docker-compose.yml swarm_tp
```