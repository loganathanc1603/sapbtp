# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More
Learn more at https://cap.cloud.sap/docs/get-started/.

## Combine CAP with SAP HANA Cloud to Create Full-Stack Application
https://developers.sap.com/mission.hana-cloud-cap.html

## Build an Application End-to-End Using CAP, Node.js and VS Code
https://developers.sap.com/mission.btp-application-cap-e2e.html

## CI/CD Tutorial
https://developers.sap.com/tutorials/btp-app-ci-cd-btp.html

## SAP Capire Hybrid Testing
cds bind -2 MyHANAApp-dev:SharedDevKey
cds watch --profile hybrid
https://cap.cloud.sap/docs/advanced/hybrid-testing

## Enabling OData v2 service in CAPM Application
https://cap.cloud.sap/docs/advanced/odata#odata-v2-proxy-node

## SAP CAPire CDS Builds
cds build
https://cap.cloud.sap/docs/guides/deployment/custom-builds

## SAP Standalone App Router
cds add approuter

## SAP CAPire services
https://cap.cloud.sap/docs/node.js/core-services#srv-init

## Important CLI commands
cf login -u abc@gmail.com -p xxxxxxxx -a https://api.cf.us10-001.hana.ondemand.com -o xxxxxx999trial -s xxxdev

cds compile srv/ --to xsuaa > xs-security.json

cf create-service xsuaa application MyHANAApp-auth -c xs-security.json

cf create-service-key MyHANAApp-auth default  

cds init

npm install --global @sap/cds-dk --@sap:registry=https://npmjs.org/

cds add hana --for production

cds add xsuaa --for production

cds add mta

mbt --version

npm install --global mbt

cf plugins

cf install-plugin multiapps

mbt build -t ./

cf deploy MyHANAApp.0.0.mtar

cf services

cf apps

npm install --global @sap/ux-ui5-tooling

npm install --global @sap/generator-fiori

npm install --global mta

fiori add deploy-config cf

cf logs --recent <appname>

cf logs <appname>

cf undeploy cpapp --delete-service-keys --delete-services

cf undeploy cpapp








