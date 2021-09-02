docker rm FileClient

docker build . -t fileusercaseclient/quantum:v0.1


START /b docker run --network httpd-filetest --name FileClient -v "%cd%\ca-pki":/opt/tmp -v "%cd%\results":/opt/logs/  fileusercaseclient/quantum:v0.1
