default: update install setupWiFi setupSSH setupGit

enforce_sudo:
	@if [ `id -u -r` -ne 0 ]; then echo "Please run as root"; exit 1; fi;
	@exit 0

update:
	sudo apt-get update -y;
	sudo apt-get upgrade -y;

install: enforce_sudo
	sudo apt-get install -y vim git samba;
	bash ./install-no-ip;

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
	git config --global push.default simple;
