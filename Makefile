region:=us-east-1
template-folder:=cloudformation/
file=file://$(template-folder)$(template).yml

docker:
	docker-compose run build

validate: check-template
	aws cloudformation validate-template --template-body $(file)

check-template:
ifndef template
	$(error template is not set)
endif
