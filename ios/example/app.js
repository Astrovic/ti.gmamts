var win = Ti.UI.createWindow({
    backgroundColor: 'white'
});
var btn = Ti.UI.createButton({
    title: "Open Mediation Suite"
});

var gmamts = require('ti.gmamts');
Ti.API.info("module is => " + gmamts);

btn.addEventListener('click', function () {
    gmamts.showMediationTestSuite();
});

win.add(btn);
win.open();