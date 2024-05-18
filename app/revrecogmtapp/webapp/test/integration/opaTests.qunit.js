sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'revrecogmtapp/test/integration/FirstJourney',
		'revrecogmtapp/test/integration/pages/POCsList',
		'revrecogmtapp/test/integration/pages/POCsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POCsList, POCsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('revrecogmtapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOCsList: POCsList,
					onThePOCsObjectPage: POCsObjectPage
                }
            },
            opaJourney.run
        );
    }
);