create-networks:
	- docker network create --driver overlay --attachable nginx_network
	- docker network create --driver overlay --attachable app_network
	- docker network create --driver overlay --attachable pg_network

deploy-portainer:
	- docker stack deploy -c stacks/portainer-agent-stack.yml portainer

deploy-pg:
	- docker stack deploy -c stacks/pg-stack.yml pg

deploy-nginx:
	- docker stack deploy -c stacks/nginx-stack.yml nginx

deploy-app:
	- docker stack deploy -c stacks/app-stack.yml app