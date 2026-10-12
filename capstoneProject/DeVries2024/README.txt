***************************************************************************************************
* Replication for "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy"
* Simone Cremaschi, Paula Rettl, Marco Cappelluti, Catherine De Vries
* American Journal of Political Science, 2024
***************************************************************************************************

1. Technical Information

Computing Environment: This code has been run and replicated using Apple Silicon (M-series Processors), M2, Macintosh HD, 8 GB, 8CPUs MacOs Sonoma, Version 14.5, and Windows 11 Home v23H2, RAM 8 GB; Processor: Intel Core i5-8250U CPU @ 1.60GHz; 64 bit operating system, 4 cores.
Softwares: the software versions are StataSE v18, R 4.3.1.


2. List and order of code files

The do file "01_replication_maintext" generates the map and the tables in the main text. It also produces the data used in Figures 2 and 4. The R script file "04_replication_maintext" produces Figure 2 and 4. The R script file "05_replication_MPD_analysis" replicates the text analysis based on MPD data which generates figure 3 in the main text.

The do-file "06_replication_appendix" produces Tables included in the supplementary online appendix. "07_replication_appendix" replicates figures in the appendix. 

The files must be run in the following order:

00_setup.do
01_replication_maintext.do
03_setup.R
04_replication_maintext.R
05_replication_MPD_analysis.R
06_replication_appendix.do
07_replication_appendix.R


3. Directories

To run the code, the working directory must be set to the replication package folder.


4. List and order of datasets

The project folder includes all the relevant, cleaned datasets we have used for the empirical analysis. These are: the main electoral dataset: "electoral_panel_dataset.dta"; the dataset for the treatment map "map_2008.dta" with its relative shape file; the individual-level dataset based on the Italian national election study database "individual_panel_dataset.dta"; the service dataset based on Open Civitas data "service_dataset.dta" and the party positioning dataset based on CHES data "ches_scores.dta"; finally, income data necessary for Table G.1 "income_change.dta". Figures 2, 4 (main text) and J.1 (appendix) are based on input data generated in the relevant sections in the do files. The folder also includes the MPD API key necessary for the text analysis (latest version used: 2024-1).


5. Dataset information

Dataset name/filename/source

	1. Electoral data: electoral_panel_dataset.dta. 
Source: Electoral data are sourced from the Italian Ministry of the Interior. Socioeconomic data are sourced from the Italian National Institute of Statistics (ISTAT).

	2. Map data: map_2008.dta.
Source: Spatial data are sourced from the Italian National Institute of Statistics (ISTAT). 
https://www.istat.it/notizia/confini-delle-unita-amministrative-a-fini-statistici-al-1-gennaio-2018-2/

	3. Individual-Level attitudinal data: individual_panel_dataset.dta.
Source: Individual-level panel data are sourced from the Italian National Election Studies (ITANES). Municipal-level socioeconomic data are sourced from  the Italian National Institute of Statistics (ISTAT).

	4. Public service data: service_dataset.dta.
Source: Municipal-level public service data are sourced from Open Civitas, which provides access to data collected by the Italian Ministry of Economy and Finance (MEF).
https://www.opencivitas.it/it/open-data

	5. Party positioning data: ches_scores.dta.
Source: Party policy positioning data are sourced from the Chapel Hill Expert Survey (CHES). 
Jolly, Seth, Ryan Bakker, Liesbet Hooghe, Gary Marks, Jonathan Polk, Jan Rovny, Marco Steenbergen, and Milada Anna Vachudova. 2022. “Chapel Hill Expert Survey Trend File, 1999–2019.” Electoral Studies 75:102420.

	6. Income data: income_change.dta. 
Source: Income data are sourced using the average pre-tax household income from municipal tax records released by the Italian Ministry for the Economy and Finance (MEF).

	7. Party rhetoric data: Manifesto Project Database (MPD), available using the MPD API key manifesto_apikey.txt.
Source: Manifesto Project Database (MPD).
Lehmann, Pola, Simon Franzmann, Tobias Burst, Sven Regel, Felicia Riethmuller, Andrea Volkens, Bernhard Wessels, and Lisa Zehnter. 2023. The Manifesto Data Collection. Manifesto Project (MRG/CMP/MARPOR). Version 2023a. Technical report.Wissenschaftszentrum Berlin fur Sozialforschung and Gottinger Institut fur Demokratieforschung.

The Codebook file includes codebooks for each dataset used in the analysis.


6. Plugins

6.1. Stata
*spmap: Visualization of spatial data
Version 1.3.2 - 09jan2018
ssc install spmap

*grmap: Visualization of spatial data
Version 1.1.1  09aug2017
grmap, activate

*outreg2: Arrange regression, summary, and tabulation into an illustrative table
Version 2.3.2  17aug2014 by roywada@hotmail.com*/
ssc install outreg2

*estout: Make regression tables from stored estimates
Version 3.31  26apr2022
ssc install outreg2

*psmatch2: Mahalanobis and Propensity score Matching
Version 4.0.12 30jan2016 E. Leuven, B. Sianesi
ssc install psmatch2

*sdid: Synthetic difference-in-differences estimation, from(https://raw.githubusercontent.com/daniel-pailanir/sdid/master)
Version 2.0.1 15apr2023
net install sdid, from("https://raw.githubusercontent.com/daniel-pailanir/sdid/master") replace

*winsor2: Winsorizing or Trimming variables
Version 1.1 16dec2014
ssc install winsor2

*rdrobust: Local Polynomial Regression Discontinuity Estimation with Robust Bias-Corrected Confidence Intervals and Inference Procedures
Version 9.0.5  29sep2022
ssc install rdrobust

*unique: Unique values of a variable or group of variables
Version 1.2.4  17jun2020
ssc install unique

*egenmore: Extensions to generate (more extras)
Version 3.4.2  13apr2020
ssc install egenmore


6.2. R
*haven: Import and Export 'SPSS', 'Stata' and 'SAS' Files
Version 2.5.3
install.packages("haven")

* ggplot2: Create Elegant Data Visualisations Using the Grammar of Graphics
Version 3.4.3install.packages("ggplot2")

* fabricatr: Imagine Your Data Before You Collect It
Version 1.0.2install.packages("fabricatr")

* cowplot: Streamlined Plot Theme and Plot Annotations for 'ggplot2'
Version 1.1.3install.packages("cowplot")

* scales: Scale Functions for Visualization
Version 1.2.1install.packages("scales")

* tidyverse: Easily Install and Load the 'Tidyverse'
Version 2.0.0install.packages("tidyverse")

* quanteda: Quantitative Analysis of Textual Data
Version 3.3.1install.packages("quanteda")

* quanteda.textmodels: Scaling Models and Classifiers for Textual Data
Version 0.9.6install.packages("quanteda.textmodels")

* quanteda.textplots: Plots for the Quantitative Analysis of Textual Data
Version 0.94.3install.packages("quanteda.textplots")

* quanteda.textstats: Textual Statistics for the Quantitative Analysis of Textual Data
Version 0.96.3install.packages("quanteda.textstats")

* quanteda.dictionaries: Dictionaries for Text Analysis and Associated Utilities
Version 0.4install.packages("quanteda.dictionaries")

* text2vec: Modern Text Mining Framework for R
Version 0.6.3install.packages("text2vec")

* manifestoR: Access and Process Data and Documents of the Manifesto Project
Version 1.5.0install.packages("manifestoR")

* igraph: Network Analysis and Visualization
Version 1.5.1install.packages("igraph")

* ggraph: An Implementation of Grammar of Graphics for Graphs and Networks
Version 2.1.0install.packages("ggraph")

* lubridate: Make Dealing with Dates a Little Easier
Version 1.9.2install.packages("lubridate")

* RColorBrewer: ColorBrewer Palettes
Version 1.1.3install.packages("RColorBrewer")

* stm: Estimation of the Structural Topic Model
Version 1.3.6.1install.packages("stm")

* RSQLite: SQLite Interface for R
Version 2.3.1install.packages("RSQLite")


