default: update install setupWiFi setupSSH setupGit

update:
	sudo apt-get update -y;
	sudo apt-get upgrade -y;

install:
	sudo apt-get install -y vim git;

setupWiFi:
	echo "This is not yet implemented"
	
setupSSH:
	mkdir -p ~/.ssh;
	cp /mnt/pi-config/.ssh/* ~/.ssh;
	eval `ssh-agent -s`;
	ssh-add ~/.ssh/id_rsa;

setupGit:
	#git config --global user.email "My.Email@gmail.com" ;
	#git config --global user.name "My Name";
