$rg = 'ach-demo-storage-arm-template'
New-AzResourceGroup -Name $rg -Location westeurope -Force

New-AzResourceGroupDeployment `
    -Name 'storage-deployment' `
    -ResourceGroupName $rg `
    -TemplateFile '01-storage.json' `
    -storageName 'remesas' `
    -storageSKU 'Standard_LRS'