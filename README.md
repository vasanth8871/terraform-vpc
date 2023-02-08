Terraform installation: 

apt update

wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip

apt install unzip

unzip terraform_0.14.7_linux_amd64.zip

mv terraform /usr/local/bin/

terraform -v




ubuntu Jenkins installation

apt install openjdk-11-jre-headless

apt install git maven tree -y

apt update -y

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

apt update

apt install jenkins

sytemctl start jenkins

systemctl start jenkins

cat /var/lib/jenkins/secrets/initialAdminPassword

-----------------------------------
amazon linux jenkins installation:

sudo amazon-linux-extras install java-openjdk11 -y

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum install jenkins -y

sudo systemctl enable jenkins

sudo systemctl start jenkins
