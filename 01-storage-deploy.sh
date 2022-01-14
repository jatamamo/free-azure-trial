# FOLLOW THIS STEPS IN CLOUD SHELL
    # 1.  code . 
    # 2.  Create new file '01-storage.json' paste content and save it
    # 


# Deploy RG
$rg='ach-demo-storage-arm-template'
az group create -g $rg -l westeurope

az deployment group create -g $rg --template-file '01-storage.json' --name deploymentName

# Check Result
az group deployment list \
    -g $group \
    --query "[].properties.outputs.{
        resourceGroup    : RG.value,
        uniqueStringRG   : uniqueStringRG.value
        deployment       : DeploymentName.value,
        uniqueStringDepl : uniqueStringDeploymentName.value
    }" \
    -o table