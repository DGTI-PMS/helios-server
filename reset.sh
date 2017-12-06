#!/bin/bash
dropdb helios
createdb helios
python manage.py syncdb
python manage.py migrate
#echo "from helios_auth.models import User; User.objects.create(user_type='google',user_id='ben@adida.net', info={'name':'Ben Adida'})" | python manage.py shell
echo "from helios_auth.models import User; User.objects.create(user_type='google',user_id='sorocaba.ti@gmail.com', info={'name':'TI Prefeitura Municipal de Sorocaba'})" | python manage.py shell
