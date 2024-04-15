sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'timetracker/apontamento/test/integration/FirstJourney',
		'timetracker/apontamento/test/integration/pages/ApontamentoList',
		'timetracker/apontamento/test/integration/pages/ApontamentoObjectPage'
    ],
    function(JourneyRunner, opaJourney, ApontamentoList, ApontamentoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('timetracker/apontamento') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheApontamentoList: ApontamentoList,
					onTheApontamentoObjectPage: ApontamentoObjectPage
                }
            },
            opaJourney.run
        );
    }
);