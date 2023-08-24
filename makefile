
dev:
	rm -rf .terraform
	terraform init -backend-config=DevEnv/state.tfvars
	terraform apply -auto-approve -var-file=DevEnv/main.tfvars

prod:
	rm -rf .terraform
	terraform init -backend-config=ProdEnv/state.tfvars
	terraform apply -auto-approve -var-file=ProdEnv/main.tfvars

dev-destroy:
	rm -rf .terraform
	terraform init -backend-config=DevEnv/state.tfvars
	terraform destroy -auto-approve -var-file=DevEnv/main.tfvars

prod-destroy:
	rm -rf .terraform
	terraform init -backend-config=ProdEnv/state.tfvars
	terraform destroy -auto-approve -var-file=ProdEnv/main.tfvars







