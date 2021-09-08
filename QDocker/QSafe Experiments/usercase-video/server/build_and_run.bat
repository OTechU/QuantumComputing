docker kill VideoServer
docker rm VideoServer

docker build . -t videousercaseserver/quantum:v0.1


START /b docker run --name VideoServer --cap-add=NET_ADMIN -p 4433:4433  -v "%cd%\server-pki":/opt/httpd/pki  -v "%cd%\httpd-conf":/opt/httpd/httpd-conf -v "%cd%\htdocs":/opt/httpd/htdocs   videousercaseserver/quantum:v0.1


REM Simulate traffic realistic network conditions here
docker exec VideoServer tc qdisc add dev eth0 root netem delay 100ms
