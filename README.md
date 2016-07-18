# learning-docker
Repo created to learn how to deploy app in a docker container from github

# Creo la imagen
<pre>docker build --no-cache -t lamaldiciondemandos/appname ./</pre>

# Corro la imagen en un container
docker run -p 8080:5000 -d lamaldiciondemandos/appname

