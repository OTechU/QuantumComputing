docker run -v "%cd%":/opt/tmp -it openquantumsafe/curl openssl req -x509 -new -newkey rsa:4096 -keyout /opt/tmp/CA.key -out /opt/tmp/CA.crt -nodes -subj "/CN=OPTUM QUANTUM CA" -days 365
