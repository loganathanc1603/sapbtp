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
- https://developers.sap.com/mission.hana-cloud-cap.html
- https://www.youtube.com/watch?v=yceqr9vycrs&t=247s

## Build an Application End-to-End Using CAP, Node.js and VS Code
https://developers.sap.com/mission.btp-application-cap-e2e.html

## CI/CD Tutorial
https://developers.sap.com/tutorials/btp-app-ci-cd-btp.html

## SAP Capire Hybrid Testing
- cds bind -2  MyHANAApp-db:MyHANAApp-db-key
- cds watch --profile hybrid
- https://cap.cloud.sap/docs/advanced/hybrid-testing

## Enabling OData v2 service in CAPM Application
https://cap.cloud.sap/docs/advanced/odata#odata-v2-proxy-node

## SAP CAPire CDS Builds
cds build
https://cap.cloud.sap/docs/guides/deployment/custom-builds

## Enabling OData V2 via Proxy in Node.js Apps
![Enabling OData V2 via Proxy in Node.js Apps Screenshot](Screenshots/Enabling%20OData%20V2.png)
- npm add @cap-js-community/odata-v2-adapter
- https://cap.cloud.sap/docs/advanced/odata#odata-v2-proxy-node

## SAP Standalone App Router
cds add approuter
app:npm start --prefix app
cds bind --exec npm run app

## SAP CAPire services
https://cap.cloud.sap/docs/node.js/core-services#srv-init

## Using the Job Scheduling Service
https://learning.sap.com/learning-journey/develop-applications-running-on-sap-btp-using-sap-hana-cloud/using-the-job-scheduling-service_de5b160b-08ef-4b59-ba88-0a07d2bc54f0

## Define and Grant Scopes to SAP Job Scheduling Service
https://help.sap.com/docs/job-scheduling/sap-job-scheduling-service/define-and-grant-scopes-to-sap-job-scheduling-service?locale=en-US

## SAP CAP function and action with Unstructured/Dynamic Type Input/Output
https://blogs.sap.com/2022/12/08/sap-cap-function-and-action-with-unstructured-dynamic-type-input-output/

## How to implement Bound functions and Unbound functions in SAP CAPM
https://blogs.sap.com/2021/06/16/how-to-implement-bound-functions-and-unbound-functions-in-sap-capm/

## Important GIT Commands
- git config --global user.name "YOUR_USER_NAME"
- git config --global user.email "YOUR_EMAIL"

## Important CLI commands
cf login -u abc@gmail.com -p xxxxxxxx -a https://api.cf.us10-001.hana.ondemand.com -o xxxxxx999trial -s xxxdev

cds compile srv/ --to xsuaa > xs-security.json

cf create-service xsuaa application MyHANAApp-auth -c xs-security.json

cf create-service-key MyHANAApp-auth default  

cds init

npm install --global @sap/cds-dk --@sap:registry=https://npmjs.org/

cds deploy --to sqlite:db/myhanaapp 

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








