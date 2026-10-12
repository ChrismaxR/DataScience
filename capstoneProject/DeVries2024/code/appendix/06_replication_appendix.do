********************************************************************************
* Simone Cremaschi, Paula Rettl, Marco Cappelluti, Catherine De Vries
* Replication Code for "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy"
* AJPS, 2024
* This code: Appendix 
********************************************************************************

* This code replicates all the empirical results and summary statistics (tables and figures) of the paper's appendix. 
* Main text results are replicated in a separate file

********************************************************************************
*Table A1: Summary Statistics
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

estpost tabstat pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude, statistics (mean sd min max) columns (statistics)

esttab . , c("mean(fmt(2)) sd(fmt(2)) min(fmt(2)) max(fmt(2))") nonumber label replace


********************************************************************************
*Figure B1: CHES Party Scores
********************************************************************************
use "data/ches_scores.dta", clear

foreach y in 2006 2008 2013 2018 {

preserve 
keep if year == `y'

egen labs = mlabvpos(ches_lrecon ches_mig_policy)

scatter ches_lrecon ches_mig_policy if farright == 0, mlabel(ches_party) mcolor(red%50) mlabcolor(red%70) mlabvpos(labs) || scatter ches_lrecon ches_mig_policy if farright == 1, mlabel(ches_party) mcolor(blue%50) mlabcolor(blue%70) yscale(r(0 10)) xscale(r(0 10)) leg(off) aspectratio(1) mlabvpos(labs) title("`y'") xlabel(, nogrid) ylabel(, nogrid)

graph save `"graph`y'.gph"', replace

restore

}

graph combine "graph2006.gph"  "graph2008.gph"  "graph2013.gph"  "graph2018.gph"


********************************************************************************
*Tables D1-D3: Sample Balance - Difference in Means of Municipality Covariates Before and After Matching
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

keep if year == 2008
psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)

matrix table = J(7, 10, .)

local i = 1
foreach var of varlist pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude {
    * Mean and SD for control
    summarize `var' if treated == 0
    matrix table[`i', 1] = r(mean)
    matrix table[`i', 2] = r(sd)

    * Mean and SD for treated
    summarize `var' if treated == 1
    matrix table[`i', 3] = r(mean)
    matrix table[`i', 4] = r(sd)

    * Beta without weights
    quietly reg `var' treated
    matrix table[`i', 5] = _b[treated]

    * T-statistic and p-value without weights
    local t = _b[treated] / _se[treated]
    local p = 2 * ttail(e(df_r), abs(`t'))
    matrix table[`i', 6] = `t'
    matrix table[`i', 7] = `p'

    * Beta with weights
    quietly reg `var' treated [pw = _w] if _s != .
    matrix table[`i', 8] = _b[treated]

    * T-statistic and p-value with weights
    local t_w = _b[treated] / _se[treated]
    local p_w = 2 * ttail(e(df_r), abs(`t_w'))
    matrix table[`i', 9] = `t_w'
    matrix table[`i', 10] = `p_w'

    local i = `i' + 1
}

* Full sample Mean and SD
summarize pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude
matrix table[7, 1] = r(mean)
matrix table[7, 2] = r(sd)

* Format numbers to two digits
forval j = 1/7 {
    forval k = 1/10 {
        matrix table[`j', `k'] = round(table[`j', `k'], 0.01)
    }
}

* Set column names using row names
matrix rownames table = pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude

****
* Table D1
****
* Export
estout matrix(table), replace style(tex) label title("Table Title") cells(fmt(%9.2fc))

********************************************************************************
* Replicate balance table for mont_group == 1

use "data/electoral_panel_dataset.dta", clear

keep if year == 2008
keep if mont_group == 1
psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)

matrix table = J(7, 10, .)

local i = 1
foreach var of varlist pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude {
    
    summarize `var' if treated == 0
    matrix table[`i', 1] = r(mean)
    matrix table[`i', 2] = r(sd)

    summarize `var' if treated == 1
    matrix table[`i', 3] = r(mean)
    matrix table[`i', 4] = r(sd)

    quietly reg `var' treated
    matrix table[`i', 5] = _b[treated]

    local t = _b[treated] / _se[treated]
    local p = 2 * ttail(e(df_r), abs(`t'))
    matrix table[`i', 6] = `t'
    matrix table[`i', 7] = `p'

    quietly reg `var' treated [pw = _w] if _s != .
    matrix table[`i', 8] = _b[treated]

    local t_w = _b[treated] / _se[treated]
    local p_w = 2 * ttail(e(df_r), abs(`t_w'))
    matrix table[`i', 9] = `t_w'
    matrix table[`i', 10] = `p_w'

    local i = `i' + 1
}

summarize pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude
matrix table[7, 1] = r(mean)
matrix table[7, 2] = r(sd)

forval j = 1/7 {
    forval k = 1/10 {
        matrix table[`j', `k'] = round(table[`j', `k'], 0.01)
    }
}

matrix rownames table = pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude

***
* Table D2
***

estout matrix(table), replace style(tex) label title("Table Title") cells(fmt(%9.2fc))

********************************************************************************
* Replicate balance table for mont_group == 1

use "data/electoral_panel_dataset.dta", clear

keep if year == 2008
keep if mont_group == 0
psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)


matrix table = J(7, 10, .)

local i = 1
foreach var of varlist pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude {
    
    summarize `var' if treated == 0
    matrix table[`i', 1] = r(mean)
    matrix table[`i', 2] = r(sd)

    summarize `var' if treated == 1
    matrix table[`i', 3] = r(mean)
    matrix table[`i', 4] = r(sd)

    quietly reg `var' treated
    matrix table[`i', 5] = _b[treated]

    local t = _b[treated] / _se[treated]
    local p = 2 * ttail(e(df_r), abs(`t'))
    matrix table[`i', 6] = `t'
    matrix table[`i', 7] = `p'

    quietly reg `var' treated [pw = _w] if _s != .
    matrix table[`i', 8] = _b[treated]

    local t_w = _b[treated] / _se[treated]
    local p_w = 2 * ttail(e(df_r), abs(`t_w'))
    matrix table[`i', 9] = `t_w'
    matrix table[`i', 10] = `p_w'

    local i = `i' + 1
}

summarize pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude
matrix table[7, 1] = r(mean)
matrix table[7, 2] = r(sd)

forval j = 1/7 {
    forval k = 1/10 {
        matrix table[`j', `k'] = round(table[`j', `k'], 0.01)
    }
}

matrix rownames table = pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude

* Display the table
matrix list table

***
* Table D3
***
estout matrix(table), replace style(tex) label title("Table Title") cells(fmt(%9.2fc))


********************************************************************************
*Table E1: DSP Effect
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

gen treated_DSP = 0
replace treated_DSP = 1 if pop_tot_2008 > 1000 & pop_tot_2008 < 5000

gen t18_DSP = 0
replace t18_DSP = 1 if treated_DSP == 1 & year == 2018
gen t13_DSP = 0
replace t13_DSP = 1 if treated_DSP == 1 & year == 2013
gen t08_DSP = 0
replace t08_DSP = 1 if treated_DSP == 1 & year == 2008
gen t06_DSP = 0
replace t06_DSP = 1 if treated_DSP == 1 & year == 2006
gen t01_DSP = 0
replace t01_DSP = 1 if treated_DSP == 1 & year == 2001

xtset id08 year

global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)
    bys id: egen _w = max(_weight)
    bys id: egen _s = max(_support)

est clear 
	
eststo: xtreg farright_sh t18_DSP i.year , fe cl(id08)
eststo: xtreg farright_sh t18_DSP t08_DSP t06_DSP t01_DSP i.year , fe cl(id08)
eststo: sdid farright_sh id08 year t18_DSP, vce(jackknife) // requires net install from github: net install sdid, from(https://raw.githubusercontent.com/daniel-pailanir/sdid/master) replace
		
esttab, keep(t18_DSP t08_DSP t06_DSP t01_DSP) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Table F1: DID Event Study
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

xtset id08 year

global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

est clear 


foreach sample in "" "if mont_group == 1" "if mont_group ==0" {

eststo: xtreg farright_sh t18 t13 t06 t01 i.year `sample', fe cl(id08)

}

foreach sample in "" "keep if mont_group == 1" "keep if mont_group == 0" {

    preserve
    `sample'
	psmatch2 treated if year == 2008, outcome( farright_sh) mahal($match_cov)
    bys id: egen _w = max(_weight)
    bys id: egen _s = max(_support)			
    eststo: xtreg farright_sh t18 t13 t06 t01 i.year [pw = _w] if _s != ., fe cl(id08)
	restore	
}

esttab , keep(t*) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Table G1: Income HTE
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

merge m:1 municipality using "data/income_change.dta"

xtset id08 year

est clear

eststo: xtreg farright_sh i.t##i.adj_terc_inc i.year##i.adj_terc_inc , fe cl(id08)

eststo: xtreg farright_sh i.t##c.income_ch0709  i.year##c.income_ch0709 , fe cl(id08)

esttab, keep(1.t 1.t#2.adj_terc_inc 1.t#3.adj_terc_inc 1.t#c.income_ch0709) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Table H1: Difference in Discontinuity Estimates
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

* normalized population for affected municipalities
gen r     = pop_tot_2008 - 5000 if mont_group == 0
replace r = pop_tot_2008 - 3000 if mont_group == 1

gen r_rev = -r

gen r_sq = r*r

keep farright_sh year treated id08 r_rev r r_sq mont_group fused_vote_share
reshape wide farright_sh, i(id08) j(year)

* triangular kernels
foreach w in "100" "250" "500" "1000" "1500" "2000" "2500" {
	
	gen w`w' = max(0,`w'-abs(r))

}

* outcome variables
gen fr1318 = (farright_sh2018 + farright_sh2013)/2
gen fr0108 = (farright_sh2001 + farright_sh2006 + farright_sh2008)/3
gen d0118 = fr1318 - fr0108
gen d13 = farright_sh2013 - fr0108

* est average pre post with optimal bandwidth
rdrobust d0118 r_rev
rdrobust d0118 r_rev if mont_group == 0
rdrobust d0118 r_rev if mont_group == 1

* est average pre post with moving bandwidth
est clear

foreach w in "100" "250" "500" "1000" "1500" "2000" "2500" {

eststo:	 reg d0118 i.treated##c.(r r_sq)  [pw = w`w']
estadd local bandwidth `"`w'"'

}

*** All municipalities
esttab , replace b(%8.3f) se(%8.3f) keep(1.treated) stats(N bandwidth, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)

est clear

foreach w in "100" "250" "500" "1000" "1500" "2000" "2500" {

eststo:	 reg d0118  i.treated##c.(r r_sq)  [pw = w`w'] if mont_group == 1
estadd local bandwidth `"`w'"'

}

*** 3,000 threshold
esttab , replace b(%8.3f) se(%8.3f) keep(1.treated) stats(N bandwidth, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)

est clear

foreach w in "100" "250" "500" "1000" "1500" "2000" "2500" {

eststo:	 reg d0118  i.treated##c.(r r_sq)  [pw = w`w'] if mont_group == 0
estadd local bandwidth `"`w'"'

}

*** 5,000 threshold
esttab , replace b(%8.3f) se(%8.3f) keep(1.treated)  stats(N bandwidth, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Table I1: Results Excluding Smaller Municipalities
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

xtset id08 year

global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

est clear 

preserve 

*** Excluding municipalities with population below 500
    keep if pop_tot_2008 > 500

	psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)
    bys id: egen _w = max(_weight)
    bys id: egen _s = max(_support)
	
	tab treated if year == 2013 
    tab treated if year == 2013 & _w != . & _s != .
	
	* TWFE
    eststo: xtreg farright_sh t i.year , fe cl(id08)
		/* Number of municipalities */
		unique id08 if e(sample) == 1
		/* Number of treated units */
		unique id08 if e(sample) == 1 & treat == 1
	* MTWFE	
    eststo: xtreg farright_sh t i.year [pw = _w] if _s != ., fe cl(id08)
		/* Number of municipalities */
		unique id08 if e(sample) == 1
		/* Number of treated units */
		unique id08 if e(sample) == 1 & treat == 1
	* SDID	
    eststo: sdid farright_sh id08 year t, vce(jackknife)	
		/* Number of municipalities: Same as in TWFE */
		/* Number of treated units: Same as in TWFE */
	
restore 

preserve 

*** Excluding municipalities with population below 1000
    keep if pop_tot_2008 > 1000

	psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)
    bys id: egen _w = max(_weight)
    bys id: egen _s = max(_support)
	
	tab treated if year == 2013 
    tab treated if year == 2013 & _w != . & _s != .
	
    eststo: xtreg farright_sh t i.year , fe cl(id08)
		/* Number of municipalities */
		unique id08 if e(sample) == 1
		/* Number of treated units */
		unique id08 if e(sample) == 1 & treat == 1

    eststo: xtreg farright_sh t i.year [pw = _w] if _s != ., fe cl(id08)
		/* Number of municipalities */
		unique id08 if e(sample) == 1
		/* Number of treated units */
		unique id08 if e(sample) == 1 & treat == 1
		
    eststo: sdid farright_sh id08 year t, vce(jackknife)
		/* Number of municipalities: Same as in TWFE */
		/* Number of treated units: Same as in TWFE */
restore 

esttab , keep(t) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Figure J1: HTE on Economic Resources (MTWFE)
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

xtset id08 year

preserve

* graph umatched
xtile inc_q3 = mean_income2008, nq(3)

eststo: xtreg m5s_leftfarleft_sh i.t##i.inc_q3 i.year##i.inc_q3 , fe cl(id08)

keep if year == 2008
keep inc_q3 mean_income2008 treated year m5s_leftfarleft_sh t pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 share_university2001 max_altitude id
rename inc_q3 income_tercile

restore

preserve

* table for appendix
global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

xtile inc_q3 = mean_income2008, nq(3)

est clear

psmatch2 treated if year == 2008, outcome(m5s_leftfarleft_sh) mahal($match_cov)
bys id: egen _w = max(_weight)
bys id: egen _s = max(_support)
eststo: xtreg m5s_leftfarleft_sh i.t##i.inc_q3 i.year##i.inc_q3 [pw = _w] if _s != . , fe cl(id08)
outreg2 using `"hte_income_coefs_matched_v2"', keep(1.t 1.t#2.inc_q3 1.t#3.inc_q3) replace dta stats(coef ci_low ci_high) sideway noparen noaster nonotes noobs

keep if year == 2008 & _w !=.
keep inc_q3 mean_income2008 treated 
rename inc_q3 income_tercile
save `"hte_income_hist_matched_v2"', replace

restore


********************************************************************************
*Table K1: HTE on Geographic Area
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

xtset id08 year

global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

est clear

* full sample
eststo: xtreg farright_sh i.t##i.north i.year##i.north, fe cl(id08)

psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)
bys id: egen _w = max(_weight)
bys id: egen _s = max(_support)

eststo: xtreg farright_sh i.t##i.north i.year##i.north [pw = _w] if _s != ., fe cl(id08)

* Redo excluding central regions
drop _w* _s*

drop if region == "EMILIA-ROMAGNA" | region == "MARCHE" | region == "TOSCANA" | region == "UMBRIA" | region == "SARDEGNA"

eststo: xtreg farright_sh i.t##i.north i.year##i.north, fe cl(id08)

psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)
bys id: egen _w = max(_weight)
bys id: egen _s = max(_support)

eststo: xtreg farright_sh i.t##i.north i.year##i.north [pw = _w] if _s != ., fe cl(id08)

esttab, keep(1.t 1.t#1.north) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Table M1: Summary Statistics on Public Services Indicators
********************************************************************************
use "data/service_dataset.dta", clear

gen     t = 0 
replace t = 1 if year > 2010  & treated == 1

bys id08: gen n = _N // drop missing municipalities on one year, total missing = 1,400
drop if n == 1
drop n

xtset id08 year

winsor2 garb_diff_orig, cuts(0 97.5) suffix(_w)

estpost tabstat pol_diff reg_diff garb_diff_orig pol_cap reg_cap garb_cap, statistics (mean sd min max) columns (statistics)


********************************************************************************
*Table M2: TWFE Using Service Capacity Index
********************************************************************************
* Matching covariates
global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

psmatch2 treated if year == 2013, outcome(pop_seg) mahal($match_cov)
bys id: egen _w = max(_weight)
bys id: egen _s = max(_support)

est clear

foreach var in "pol" "reg" "garb" {

eststo: xtreg `var'_cap t i.year if mis_`var' == 0 , fe cl(id08)
eststo: xtreg `var'_cap t i.year [pw = _w] if mis_`var' == 0 & _s != ., fe cl(id08)

}

esttab, keep(t) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Table N1: Effect of the Reform on Reporting of Service Access
********************************************************************************
use "data/service_dataset.dta", clear

drop pol_diff reg_diff garb_diff pol_cap reg_cap garb_cap

preserve
keep if year == . | municipality == "CONSIGLIO DI RUMO" | municipality == "GERMASINO" | municipality ==  "GRAVEDONA"
replace year = 2013 
tempfile mis_2013
save `mis_2013'
restore

replace year = 2009 if year == .

append using  `mis_2013', nolabel

xtset id08 year

gen     t = 0 
replace t = 1 if year > 2010  & treated == 1

psmatch2 treated if year == 2013, outcome(mis_garb) mahal($match_cov)
bys id: egen _w = max(_weight)
bys id: egen _s = max(_support)

est clear

eststo: xtreg mis_police t i.year [pw = _w] if _s != ., fe cl(id08)
eststo: xtreg mis_registry t i.year [pw = _w] if _s != ., fe cl(id08)
eststo: xtreg mis_garbage t i.year [pw = _w] if _s != ., fe cl(id08)

esttab, keep(t) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Table O1: Main Estimates Dropping Missing Observations
********************************************************************************
use "data/service_dataset.dta", clear

keep if year == 2013
keep id08 mis_pol mis_reg mis_garb

merge 1:m id08 using "data/electoral_panel_dataset.dta"
keep if _merge == 3

xtset id08 year

global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

est clear 

preserve
    keep if mis_garb == 0 & mis_pol == 0 & mis_reg == 0 
	
	psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)
    bys id: egen _w = max(_weight)
    bys id: egen _s = max(_support)
	
	tab treated if year == 2013 
    tab treated if year == 2013 & _w != . & _s != .

*** TWFE
eststo: xtreg farright_sh t i.year , fe cl(id08)
	/* Number of municipalities */
	unique id08 if e(sample) == 1
	/* Number of treated units */
	unique id08 if e(sample) == 1 & t == 1

*** MTWFE	
eststo: xtreg farright_sh t i.year [pw = _w] if _s != ., fe cl(id08)
	/* Number of municipalities */
	unique id08 if e(sample) == 1
	/* Number of treated units */
	unique id08 if e(sample) == 1 & t == 1

*** SDID
eststo: sdid farright_sh id08 year t, vce(jackknife) // requires net install from github	
	/* Number of municipalities: same as in TWFE */
	/* Number of treated units: same as in TWFE */

restore

esttab , keep(t) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Table P1: Summary Statistics of Individual-Level Variables
********************************************************************************
* Itanes
use "data/individual_panel_dataset.dta", clear

* Set globals
global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

global survey_cov "i.age_cat i.female i.edu i.occupation"

* Descriptive stats
forvalues x = 1/6 {
	
	gen age_cat_`x' = 0
	replace age_cat_`x' = 1 if age_cat == `x'
	
}

forvalues x = 1/6 {
	
	gen edu_`x' = 0
	replace edu_`x' = 1 if edu == `x'
	
}

forvalues x = 1/12 {
	
	gen occupation_`x' = 0
	replace occupation_`x' = 1 if occupation == `x'
	
}

label var age_cat_1 "\quad 18--24"
label var age_cat_2 "\quad 25--34"
label var age_cat_3 "\quad 35--44"
label var age_cat_4 "\quad 45--54"
label var age_cat_5 "\quad 55-64"
label var age_cat_6 "\quad $>$ 64"

label var edu_1 "\quad No Qualification"
label var edu_2 "\quad Primary"
label var edu_3 "\quad Lower Secondary"
label var edu_4 "\quad Professional"
label var edu_5 "\quad Upper Secondary"
label var edu_6 "\quad Tertiary"

label var occupation_1 "\quad Manager"
label var occupation_2 "\quad Teacher"
label var occupation_3 "\quad Employee"
label var occupation_4 "\quad Construction Worker"
label var occupation_5 "\quad Entrepreneur"
label var occupation_6 "\quad Self-employed"
label var occupation_7 "\quad Cooperative Member"
label var occupation_8 "\quad Other Contract"
label var occupation_9 "\quad Employed - Missing Profession"
label var occupation_10 "\quad On Welfare"
label var occupation_11 "\quad Retired"
label var occupation_12 "\quad Student" 

label var imm_add "\quad Immigration Scale"
label var immig_identity "\quad Identity \& Culture"
label var immig_employment "\quad Employment"

label var treated "Treated"

preserve

keep if w == 1 | w == 4

mark nomiss
markout nomiss $match_cov
keep if nomiss == 1

estpost tabstat imm_add immig_identity immig_employment female age_cat_* edu_* occupation_*, statistics (mean sd min max n) columns (statistics)

restore


********************************************************************************
*Table Q1: DID Estimates on Political Attitudes
********************************************************************************
est clear

foreach var of varlist st_left_right st_trust_parties st_trust_parliament pol_efficacy { 

eststo: reg `var' i.treated##i.post_reform $survey_cov i.cod_reg, robust

eststo: reg `var' i.treated##i.post_reform $survey_cov $match_cov i.cod_reg i.w, robust

}

esttab, keep(1.treated 1.post_reform 1.treated#1.post_reform) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)

