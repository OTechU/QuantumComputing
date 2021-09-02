FROM openquantumsafe/curl


ENTRYPOINT curl -n --cacert /opt/tmp/CA.crt https://FileServer:4434/bigfile -o /dev/null  2>> /opt/logs/logs.log 
