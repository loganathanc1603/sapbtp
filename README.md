## CAPM Side By SIde Extension | OnPremise | Business Application Studio

- https://www.youtube.com/watch?v=jTzkogE_Wm0&t=331s

## ES5 Demo System
- https://sapes5.sapdevcenter.com/sap/opu/odata/sap/SEPMRA_PROD_MAN/

## Add the Consumption of an External Service to Your CAP Application
- https://developers.sap.com/tutorials/btp-app-ext-service-add-consumption.html

## Important Commands
- npm i @sap-cloud-sdk/resilience 
- npm i @sap-cloud-sdk/http-client
- cf cs destination lite es5_destination
- cf csk es5_destination default
- cf cs connectivity lite es5_connectivity
- cf csk es5_connectivity default
- cds bind -2 es5_destination:default
- cds bind -2 es5_connectivity:default``
- cds add mta
- cds add xsuaa
- cds import srv/edmx/northwind.edmx
