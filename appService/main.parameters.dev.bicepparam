using 'main.bicep'

param appServicePlanSku = {
  value: {
    name: 'F1'
    tier: 'Free'
  }
}
param sqlDatabaseSku = {
  value: {
    name: 'Standard'
    tier: 'Standard'
  }
}
