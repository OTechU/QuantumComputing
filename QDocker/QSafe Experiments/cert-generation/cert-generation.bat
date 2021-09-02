del /f index.txt* *.pem serial.*
 type NUL > index.txt
 echo 01 > serial
docker run -v "%cd%":/opt/tmp -it openquantumsafe/curl openssl req -new -newkey dilithium2_AES -keyout /opt/tmp/server.key -out /opt/tmp/server.csr -nodes -config /opt/tmp/servercert.conf

docker run -v "%cd%":/opt/tmp -it openquantumsafe/curl openssl ca -config /opt/tmp/caconfig.ext -out /opt/tmp/server.crt -extfile /opt/tmp/caextensions.cnf -infiles /opt/tmp/server.csr
