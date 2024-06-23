# Lab1
exercice1

positionnez vous dans le repertoire racine du project(celui qui contient le dockerfile) puis:
1- builder l'image gràce à la commande:
	docker build -t websit-finenox:v2 .
2- run l'images qui a été builder en mode detache en redirageant le port 8088 de l'hote sur le 80 du conteneur:
    docker run --name websit_finenox -d -p 8088:80 websit-finenox:v2
3- vous pouvez consommez l'app qui a été conteneuriser dans votre navigateur en saisissant l'url:
    http://localhost:8088
