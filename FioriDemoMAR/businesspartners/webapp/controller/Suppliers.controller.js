sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ns.businesspartners.controller.Suppliers", {
            onInit: function () {
                this.LocalModel = new sap.ui.model.json.JSONModel({
                    ListTitle: this.getOwnerComponent().getModel("i18n").getResourceBundle().getText("listTitle", [0])
                });

                this.getView().setModel(this.LocalModel, "LocalModel");
            },

            onUpdateFinished: function(oEvent){
                var iCount = oEvent.getParameter("total");
                var sTitle = this.getOwnerComponent().getModel("i18n").getResourceBundle().getText("listTitle", [iCount]);
                this.LocalModel.setProperty("/ListTitle", sTitle);
            }
        });
    });
