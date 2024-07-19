sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/library",
    "sap/ui/core/Fragment"
],
    function (Controller, mobileLibrary, Fragment) {
        "use strict";
        var URLHelper = mobileLibrary.URLHelper;
        return Controller.extend("html5module.controller.Main", {

            onInit: function () {
                this.oLocalModel = new sap.ui.model.json.JSONModel({
                    UserAttributes: {}
                });
                this.getView().setModel(this.oLocalModel, "LocalModel");
                this._getUserAttributes();
            },

            onPressLogOut: function () {
                let sUrl = window.location.origin + "/do/logout";
                URLHelper.redirect(sUrl, false);
            },

            _getUserAttributes: async function () {
                // fetch("/user-api/currentUser")
                //     .then(response => {
                //         let oUser = response.json();
                //         this.oLocalModel.setProperty("/UserAttributes", oUser);
                //     })
                //     .then(data => {
                //         this.oLocalModel.setProperty("/UserAttributes", {});
                //     });
                const url = "/user-api/currentUser";
                const response = await fetch(url);
                if (!response.ok) {
                    throw new Error(`Response status: ${response.status}`);
                }
                const oUser = await response.json();
                this.oLocalModel.setProperty("/UserAttributes", oUser);
            },

            onPressProfile: function (oEvent) {
                var oButton = oEvent.getSource(),
                    oView = this.getView();

                if (!this._pPopover) {
                    this._pPopover = Fragment.load({
                        id: oView.getId(),
                        name: "html5module.view.fragments.Profile",
                        controller: this
                    }).then((oPopover) => {
                        oView.addDependent(oPopover);
                        oPopover.setModel(this.oLocalModel);
                        return oPopover;
                    });
                }
                this._pPopover.then(function (oPopover) {
                    oPopover.openBy(oButton);
                });
            }
        });
    });
