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
- Learn more at https://cap.cloud.sap/docs/get-started/.

## Building side-by-side extensions on SAP BTP
- [https://learning.sap.com/learning-journey/develop-applications-running-on-sap-btp-using-sap-hana-cloud](https://learning.sap.com/learning-journeys/build-side-by-side-extensions-on-sap-btp)

## Combine CAP with SAP HANA Cloud to Create Full-Stack Application
- https://developers.sap.com/mission.hana-cloud-cap.html
- https://www.youtube.com/watch?v=yceqr9vycrs&t=247s

## Build an Application End-to-End Using CAP, Node.js and VS Code
- https://developers.sap.com/mission.btp-application-cap-e2e.html

## A Journey to CAPM Full Stack UI5 Application Development
- https://blogs.sap.com/2023/08/23/a-journey-to-capm-full-stack-ui5-application-development/

## CI/CD Tutorial
https://developers.sap.com/tutorials/btp-app-ci-cd-btp.html

## SAP Capire Hybrid Testing
- cds bind -2  MyHANAApp-db:MyHANAApp-db-key
- cds watch --profile hybrid
- https://cap.cloud.sap/docs/advanced/hybrid-testing

## Using cds deploy for Ad-Hoc Deployments
- cds deploy --to hana --profile hybrid
- https://cap.cloud.sap/docs/guides/databases-hana

## Simple steps to deploy your CAP project to HANA cloud
- https://blogs.sap.com/2021/02/11/simple-steps-to-deploy-your-cap-project-to-hana-cloud/

## Enabling OData v2 service in CAPM Application
- https://cap.cloud.sap/docs/advanced/odata#odata-v2-proxy-node

## SAP CAPire CDS Builds
- cds build
- https://cap.cloud.sap/docs/guides/deployment/custom-builds

## Enabling OData V2 via Proxy in Node.js Apps
- npm add @cap-js-community/odata-v2-adapter
- https://cap.cloud.sap/docs/advanced/odata#odata-v2-proxy-node

## SAP Standalone App Router
- cds add approuter
- app:npm start --prefix app
- cds bind --exec npm run app

## SAP CAPire services
- https://cap.cloud.sap/docs/node.js/core-services#srv-init

## Using the Job Scheduling Service
- https://learning.sap.com/learning-journey/develop-applications-running-on-sap-btp-using-sap-hana-cloud/using-the-job-scheduling-service_de5b160b-08ef-4b59-ba88-0a07d2bc54f0

## Define and Grant Scopes to SAP Job Scheduling Service
- https://help.sap.com/docs/job-scheduling/sap-job-scheduling-service/define-and-grant-scopes-to-sap-job-scheduling-service?locale=en-US

## SAP CAP function and action with Unstructured/Dynamic Type Input/Output
- https://blogs.sap.com/2022/12/08/sap-cap-function-and-action-with-unstructured-dynamic-type-input-output/

## How to implement Bound functions and Unbound functions in SAP CAPM
- https://blogs.sap.com/2021/06/16/how-to-implement-bound-functions-and-unbound-functions-in-sap-capm/

## Useful CAP CDS and Fiori Commands to Accelerate Development and Deployment
- https://blogs.sap.com/2022/10/19/useful-cap-cds-and-fiori-commands-to-accelerate-development-and-deployment/

## SAP Cloud Application Programming Model Community
- https://community.sap.com/t5/c-khhcw49343/SAP+Cloud+Application+Programming+Model/pd-p/9f13aee1-834c-4105-8e43-ee442775e5ce

## React Development with SAP Business Application Studio
- https://community.sap.com/t5/technology-blogs-by-sap/react-development-with-sap-business-application-studio/ba-p/13520135

## Build a Single Page Application Using UI5 Web Components for React
- https://developers.sap.com/mission.react-spa.html

## End to End UI5 application on SAP BTP
- https://community.sap.com/t5/technology-blogs-by-members/end-to-end-ui5-application-on-sap-btp/ba-p/13566710

## Build your own React application with UI5 Web Components for React
- https://www.youtube.com/watch?v=zyOxgjoSnGw

## SAP BTP React
- https://developers.sap.com/tutorial-navigator.html?search=react

## Cloud MTA Build Tool (MBT)
- https://sap.github.io/cloud-mta-build-tool/

## Important GIT Commands
- git config --global user.name "YOUR_USER_NAME"
- git config --global user.email "YOUR_EMAIL"
- git clone https://github.com/SAP-samples/cloud-cap-samples.git

## CF CLI commands
- cf login -u abc@gmail.com -p xxxxxxxx -a https://api.cf.us10-001.hana.ondemand.com -o xxxxxx999trial -s xxxdev
- cf create-service xsuaa application MyHANAApp-auth -c xs-security.json
- cf services
- cf apps
- cf create-service-key MyHANAApp-auth default
- cf plugins
- cf install-plugin multiapps
- cf logs --recent <appname>
- cf logs <appname>
- cf deploy MyHANAApp.0.0.mtar
- cf undeploy MyHANAApp --delete-service-keys --delete-services
- cf undeploy MyHANAApp

## CDS CLI commands
- cds init bookshop
- cds watch
- cds watch --profile hybrid
- cds bind -2  MyHANAApp-db:MyHANAApp-db-key
- cds bind -2 bookshop-auth
- cds deploy --to sqlite:db/myhanaapp.db
- cds deploy --to hana --profile hybrid
- cds deploy --to hana
- cds add hana --for production
- cds add xsuaa --for production
- cds add pipeline
- cds add mta
- cds add hana --for hybrid
- cds add xsuaa --for hybrid
- cds build --production
- cds build
- cds build --for hana
- cds compile srv/ --to xsuaa > xs-security.json
- cds compile db/ --to sql
- cds compile db/ --to json
- cds compile db/ --to yml
- cds db/ -2 sql
- cds db/ -2 json
- cds db/ -2 yml

## MBT CLI commands
- mbt --version
- mbt build -t ./

## NPM CLI commands
- npm install
- npm ci
- npm i -g hana-cli
- npm add @sap/xssec
- npm add passport
- npm install --global mbt
- npm install --global @sap/cds-dk --@sap:registry=https://npmjs.org/
- npm install --global @sap/ux-ui5-tooling
- npm install --global @ui5/cli
- npm install --global @sap/generator-fiori
- npm install --global mta
- npm add @cap-js-community/odata-v2-adapter
- npm add sqlite3 -D
- npm config delete "@sap:registry"

## FIORI CLI commands
- fiori add deploy-config cf
- fiori add flp-config

## UI5 CLI commands
- ui5 init
- ui5 use SAPUI5@1.117.0
- ui5 add sap.ui.core sap.m themelib_sap_fiori_3
- ui5 serve
- ui5 build









