"use strict";

sap.ui.define(["sap/fe/core/PageController"], function (Controller) {
  "use strict";

  /**
   * @namespace bankfpm.ext.main.Main.controller
   */
  var Main = Controller.extend("bankfpm.ext.main.Main.controller.Main", {
    onCreatePress: function _onCreatePress() {
      try {
        var _this = this;
        return Promise.resolve(_this.getExtensionAPI().getEditFlow().createDocument("/Banks", {
          creationMode: "NewPage"
        })).then(function () {
          var table = _this.byId("idTable");
          table.refresh();
        });
      } catch (e) {
        return Promise.reject(e);
      }
    }
  });
  return Main;
});
//# sourceMappingURL=Main-dbg.controller.js.map
