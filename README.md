Simple Hello World NodeJS web application
=========================================

Integration with Travis CI
--------------------------

For integration with Travis CI add environment variables DOCKER_USERNAME and DOCKER_PASSWORD into repository settings.


Ansible instructions
--------------------

```
cd ansible
virtualenv env --no-site-packages
source env/bin/activate
pip install -r requirements.txt

#### This works for docker with SSL authentication
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://<dockerhost>:2376
export DOCKER_TLS_HOSTNAME=<dockerserver>
export DOCKER_CERT_PATH=/home/<user>/.docker/
ansible-playbook --extra-vars "docker_user=<dockerhub user>" site.yml
```
