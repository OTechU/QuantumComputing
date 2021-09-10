#! /usr/bin/python3.6

import logging
import sys
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, '/opt/httpd/htdocs/')
from pflask_api import app as application
application.secret_key = 'secrtekeys56484563685439'
