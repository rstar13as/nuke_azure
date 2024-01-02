terraform destroy --auto-approve
# az group delete --yes --no-wait -g ad-hunting-lab
az group list --query "[].name" --output tsv | xargs -L 1 az group delete --no-wait --yes --name