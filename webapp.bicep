param location string = 'australiaeast'

@description('App Service Plan name')
param appServicePlanName string = 'kas-serviceplan'

@description('Web App name (must be lowercase and globally unique)')
param webAppName string = 'kas-webappdemo'

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: 'F1'
    capacity: 1
  }
}

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: toLower(webAppName)
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}