ssh cw-gserverny
sudo -i


sudo apt-get -y update
sudo apt-get -y install python3 python3-venv python3-dev
sudo apt-get -y install mysql-server postfix supervisor nginx git

git clone https://github.com/cloudwaysdev/flask-model.git
cd flask-model


python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt


pip install gunicorn pymysql

vim  .env
SECRET_KEY=52cb883e323b48d78a0a36e8e951ba4a
MAIL_SERVER=localhost
MAIL_PORT=25
DATABASE_URL=mysql+pymysql://microblog:<db-password>@localhost:3306/microblog
MS_TRANSLATOR_KEY=<your-translator-key-here>


python3 -c "import uuid; print(uuid.uuid4().hex)"    # create secret key


echo "export FLASK_APP=microblog.py" >> ~/.profile

mysql -u root -p