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
                    UserAttributes: {
                        Initial: "UU"
                    }
                });
                this.getView().setModel(this.oLocalModel, "LocalModel");
                this._getUserAttributes();
            },

            onPressLogOut: function () {
                let sUrl = window.location.origin + "/do/logout";
                URLHelper.redirect(sUrl, false);
            },

            _getUserAttributes: async function () {
                const sUrl = "/user-api/currentUser";
                const oResponse = await fetch(sUrl);
                if (!oResponse.ok) {
                    throw new Error(`Response status: ${oResponse.status}`);
                }
                const oUser = await oResponse.json();
                oUser.Initial = oUser.firstname.slice(0,1) + oUser.lastname.slice(0,1);
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
            },

            onPressChangeTheme: function () {
                let sTheme = window.location.search;
                let sUrl = window.location.origin
                if(sTheme.includes("sap_horizon_dark")) {
                    sUrl = sUrl + "/index.html?sap-theme=sap_horizon";
                } else  {
                    sUrl = sUrl + "/index.html?sap-theme=sap_horizon_dark";
                }
                URLHelper.redirect(sUrl, false);
            }
        });
    });
