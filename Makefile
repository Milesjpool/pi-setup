default: update install setupWiFi setupSSH

update:
	sudo apt-get update -y;
	sudo apt-get upgrade -y;

install:
	sudo apt-get install -y vim git;

setupGit:
	#git config --global user.email "My.Email@gmail.com" 
	#git config --global user.name "My Name"

setupWiFi:
	echo "This is not yet implemented"
	
setupSSH:
	echo "This is not yet implemented"
