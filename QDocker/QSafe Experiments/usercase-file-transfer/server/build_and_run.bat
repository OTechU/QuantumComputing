docker kill FileServer
docker rm FileServer

fsutil file createnew htdocs\1mb.bin 1048576
fsutil file createnew htdocs\5mb.bin 5242880
fsutil file createnew htdocs\10mb.bin 10485760
fsutil file createnew htdocs\100mb.bin 104857600
fsutil file createnew htdocs\200mb.bin 209715200
fsutil file createnew htdocs\500mb.bin 	524288000 
fsutil file createnew htdocs\1000mb.bin 1048576000


docker build . -t fileusercaseserver/quantum:v0.1

docker network create httpd-filetest

START /b docker run  --network httpd-filetest --name FileServer --cap-add=NET_ADMIN -p 4434:4434  -v "%cd%\server-pki":/opt/httpd/pki  -v "%cd%\httpd-conf":/opt/httpd/httpd-conf -v "%cd%\htdocs":/opt/httpd/htdocs fileusercaseserver/quantum:v0.1
