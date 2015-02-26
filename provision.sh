
sudo apt-get update

# Installing PythonSci
echo "===================================="
echo "Installing PySci..."
echo "===================================="
sudo apt-get install -y python-pip python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
sudo pip install --upgrade pip 
cd /etc/init.d
sudo wget https://gist.githubusercontent.com/raffpaquin/9ad024fdcd9b6360e70e/raw/971b6c636b26f080c06b73ad620dc6407dba82a2/ipython-notebook
sudo chmod +x ipython-notebook
sudo service ipython-notebook restart


# Installing py-elasticsearch
echo "===================================="
echo "Installing py-elasticsearch..."
echo "===================================="
sudo pip install elasticsearch


# Installing R
echo "===================================="
echo "Installing R..."
echo "===================================="
sudo apt-get install -y r-base r-base-dev 


# Installing Elasticsearch
echo "===================================="
echo "Installing Elasticsearch..."
echo "===================================="
cd /tmp
sudo apt-get install software-properties-common python-software-properties -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get install oracle-java8-installer -y
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.4.deb
sudo dpkg -i elasticsearch-1.4.4.deb
sudo service elasticsearch restart
rm elasticsearch-1.4.4.deb


# Installing Elasticsearch
echo "===================================="
echo "Installing Kibana 4..."
echo "===================================="
cd /opt
sudo wget https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-linux-x64.tar.gz
sudo tar -xf kibana-4.0.0-linux-x64.tar.gz
sudo cp -R kibana-4.0.0-linux-x64 kibana
sudo rm kibana-4.0.0-linux-x64.tar.gz
sudo rm -R kibana-4.0.0-linux-x64
cd /etc/init.d/
sudo wget https://raw.githubusercontent.com/akabdog/scripts/master/kibana4_init
sudo cp kibana4_init kibana
sudo rm kibana4_init
sudo chmod +x kibana
sudo service kibana restart





