FLASK_APP=microblog.py

DATABASE_URI='mysql+pymysql://root:testpassroot1@172.5.0.11/microblog'

LDFLAGS="-L/usr/local/opt/openssl/lib $LDFLAGS"
CPPFLAGS="-I/usr/local/opt/openssl/include $CPPFLAGS"

FLASK_DEBUG=1


MAIL_SERVER=smtp.googlemail.com
MAIL_PORT=587
MAIL_USE_TLS=1

