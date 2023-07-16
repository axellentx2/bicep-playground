param pLocation string = resourceGroup().location

resource storageAccountResources 'Microsoft.Storage/storageAccounts@2021-09-01' = [for i in range(1, 4): {
  name: 'storageaccount0avd${padLeft(i, 2, '0')}'
  location: pLocation
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}]
