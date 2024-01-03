terraform destroy --auto-approve
# az group delete --yes --no-wait -g ad-hunting-lab
az group list --query "[].name" --output tsv | xargs -L 1 az group delete --no-wait --yes --name
az monitor activity-log list --offset 1m --output table
# az monitor activity-log list --offset 1m --query "[].{ResourceGroup: resourceGroup, Time: eventTimestamp, OperationName: operationName, localizedValue}" --output table
rm -rf terraform.tfstate*
