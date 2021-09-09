docker kill ApiServer
docker rm ApiServer

docker build . -t fileusercaseserver/quantum:v0.1

docker network create httpd-filetest

START /b docker run  --network httpd-filetest --name ApiServer --cap-add=NET_ADMIN -p 4435:4434  -v "%cd%\server-pki":/opt/httpd/pki  -v "%cd%\httpd-conf":/opt/httpd/httpd-conf -v "%cd%\htdocs":/opt/httpd/htdocs fileusercaseserver/quantum:v0.1
