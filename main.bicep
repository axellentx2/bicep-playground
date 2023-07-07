@description('My first bicp storage account')
resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'toylaunchstorageavdoorn'
  location: 'westeurope'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'toy-product-launch-plan-starter-avdoorn'
  location: 'westeurope'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2022-09-01' = {
  name: 'toy-product-launch-avdoorn'
  location: 'westeurope'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
