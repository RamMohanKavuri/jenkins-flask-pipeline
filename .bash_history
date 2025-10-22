apt update -y
clear
mkdir jenkins-flask-pipeline
cd jenkins-flask-pipeline/
# install dependencies
sudo apt update
sudo apt install -y docker.io openjdk-11-jre
# add Jenkins repo and install
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
# allow jenkins to use docker
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
jenkins --version
clear
sudo apt install -y openjdk-17-jre
java -version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo apt update
sudo apt install -y jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
jenkins --version
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
clear
pip install flask
python app.py
sudo apt update
sudo apt install -y python3 python3-pip
python3 --version
pip3 --version
python3 app.py
app.py
scp -i /path/to/your-key.pem -r jenkins-flask-pipeline/ root@<your-ec2-public-ip>:/root/
clear
nano app.py
echo "flask" > requirements.txt
pip3 install -r requirements.txt
sudo apt install -y python3-venv
python3 -m venv venv
source venv/bin/activate
pip install flask --break-system-packages
python3 -m flask --version
sudo ufw status
sudo ss -tulnp | grep 5000
clear
python app.py
curl http://localhost:5000
python app.py
