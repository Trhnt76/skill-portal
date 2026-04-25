param appName string
param location string
param environment string

resource staticWebApp 'Microsoft.Web/staticSites@2023-12-01' = {
  name: '${appName}-${environment}'
  location: location
  sku: {
    name: 'Free'
    tier: 'Free'
  }
  properties: {
    buildProperties: {
      appLocation: 'src'
      outputLocation: ''
    }
  }
  tags: {
    project: appName
    environment: environment
    managedBy: 'bicep'
  }
}

output hostName string = staticWebApp.properties.defaultHostname
output resourceName string = staticWebApp.name
