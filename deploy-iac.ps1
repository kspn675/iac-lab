`
param (
    [string]$ResourceGroupName = "Kas-RG3",
    [string]$TemplateFile = "webapp.bicep"
)

Write-Host "Starting deployment to resource group: $ResourceGroupName"

New-AzResourceGroupDeployment `
  -ResourceGroupName $ResourceGroupName `
  -TemplateFile $TemplateFile `
  -Verbose

Write-Host "Deployment complete. Review resources in the Azure Portal."
