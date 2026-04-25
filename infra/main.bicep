targetScope = 'resourceGroup'

param appName string = 'skill-portal'
param location string = resourceGroup().location
param environment string = 'dev'

module swa 'modules/staticWebApp.bicep' = {
  name: 'deploy-swa'
  params: {
    appName: appName
    location: location
    environment: environment
  }
}

output liveUrl string = 'https://${swa.outputs.hostName}'
output swaResourceName string = swa.outputs.resourceName
