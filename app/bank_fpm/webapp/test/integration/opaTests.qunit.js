sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bankfpm/test/integration/FirstJourney',
		'bankfpm/test/integration/pages/BanksMain'
    ],
    function(JourneyRunner, opaJourney, BanksMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bankfpm') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBanksMain: BanksMain
                }
            },
            opaJourney.run
        );
    }
);