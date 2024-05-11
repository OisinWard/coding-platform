up: 
	vagrant up

rm: 
	vagrant destroy -f

stop:
	vagrant halt

provision:
	vagrant provision

ssh:
	ssh coding-platform

rebuild: rm up

rm-hard: rm
	rm -rf ~/.vagrant.d/

rebuild-hard: rm-hard up

restart: stop up
