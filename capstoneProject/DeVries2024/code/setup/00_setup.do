********************************************************************************
* Simone Cremaschi, Paula Rettl, Marco Cappelluti, Catherine De Vries
* Replication Code for "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy"
* AJPS, 2024
* This code: Setup 
********************************************************************************

* This code installs all necessary functions for the empirical analysis. 
* Main text and appendix results are replicated in the following files.

********************************************************************************
* Installing plugins

ssc install spmap
grmap, activate
ssc install outreg2
ssc install estout
ssc install psmatch2
net install sdid, from(https://raw.githubusercontent.com/daniel-pailanir/sdid/master) replace
ssc install winsor2
ssc install rdrobust
ssc install mark
ssc install unique
ssc install rdrobust 
ssc install winsor2
ssc install egenmore
