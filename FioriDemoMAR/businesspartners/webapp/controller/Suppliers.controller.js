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
            },

            onPress: function(){
                var sUrl = "browser/abc2aa84-8193-48e8-9cea-97d397d39047/root";
                $.ajax({
                    url: sUrl,
                    type: "GET",
                    dataType: "json",
                    success: function(res) {
                        console.log(res);
                    }, error: function(oError){
                        console.log(oError);
                    }
                });
            }
        });
    });
