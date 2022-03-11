# to install sonarqube prerequisites are
Ec2 machine with atleast 2gb ram 4 gb storage
T2.small 0r t2.medium enough
Security group
Allow 22  —- myip or vpn cidr
Allow 9000 – anywhere


Login to ec2 using public ip and switch to root user 
Then go to /opt/ install java
# java should be install
  amazon-linux-extras install java-openjdk11
# need check java version
  Java – version

# sonarqube should be install
#root/opt/
 wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.7.52159.zip
#unzip
unzip sonarqube-8.9.7.52159.zip
#rename the file
mv sonarqube-8.9.7.52159 sonarqube
#create sonar user 
useradd sonaradmin

#to change user for file
chown -R sonaradmin:sonaradmin sonarqube

#give permissions to file
chown 777 sonarqube

#to give sudo permissions to sonaradmin we need to modify one file
visudo
#to give permission we need to change like below
sonaradmin    ALL=(ALL)       ALL
#go to sonardmin user using below command
 su - sonaradmin
#then we need to go opt
cd /opt
#[sonaradmin@ip-172-31-12-188 opt]$
ls -ltr
#then go to sonar folder
cd sonarqube
#[sonaradmin@ip-172-31-12-188 sonarqube]$
ls -ltr 
#go to bin
cd bin
#ls -ltr there we we can see different os we need to select linux
cd  linux-x86-64
#i need to give ls -ltr then we need to give sonar.sh 
#to start sonar we need to give below command
./sonar.sh
#there we can see list of options Usage: ./sonar.sh { console | start | stop | force-stop | restart | #status | dump }.in that we need th select .start
./sonar.sh start
<!-- out put for above command Starting SonarQube...
SonarQube is already running. –>

#to chect the status weather its running or not we need to give below command
./sonar.sh status 


#o/p SonarQube is running (15926).

#Then we need to check in browser by using public ip with port number
# 65.0.97.136:9000
# after that we need to give username password 
