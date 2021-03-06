#!/bin/bash
HOST=quickstart.cloudera
USER=demo
ssh $USER@$HOST <<'ENDSSH'
set +x
# Install dependencies
sudo yum install -y gcc-c++ python-devel python-ipython

# Copy python client
cp -R /media/sf_examples/clients/python ~/
sudo chown demo python
sudo chmod -R g+rw python
sudo chmod -R o+r python

# Install python client
sudo easy_install pip
cd python
sudo  pip install --disable-pip-version-check -r requirements.txt
sudo python setup.py install
ENDSSH
