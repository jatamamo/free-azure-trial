echo "" > 01-storage.json
echo "" > 01-storage.parameters.json
echo "" > 02-storage.parameters.json

# replace files with code before runing the rest of the script

rg='parametrized-storage-dev'
az group create -g $rg -l westeurope

az deployment group create \
    -g $rg \
    --template-file 01-storage.json \
    --parameters @01-storage.parameters-dev.json


rg='parametrized-storage-prod'
az group create -g $rg -l westeurope

az deployment group create \
    -g $rg \
    --template-file 01-storage.json \
    --parameters @01-storage.parameters-prod.json