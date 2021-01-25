region:=us-east-1
template-folder:=cloudformation/
file=file://$(template-folder)$(template).yml

docker:
	docker-compose run build

validate: check-template
	aws cloudformation validate-template --template-body $(file)

deploy: check-template check-stack-name
	aws cloudformation create-stack --region $(region) --stack-name $(stack-name) --enable-termination-protection --template-body $(file)

check-template:
ifndef template
	$(error template is not set)
endif

check-account-number:
ifndef account-number
	$(error account-number is not set)
endif

check-stack-name:
ifndef stack-name
	$(error stack-name is not set)
endif