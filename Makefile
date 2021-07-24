help:
	@echo make base \#mysql-client-base
	@echo make image \#mysql-client

base:
	docker build . -t mysql-client-base

image:
	-docker rm mysql-client-tmp
	docker run -ti --name mysql-client-tmp mysql-client-base  bash init.sh
	docker commit mysql-client-tmp mysql-client
	-docker rm mysql-client-tmp