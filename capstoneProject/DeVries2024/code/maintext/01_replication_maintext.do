********************************************************************************
* Simone Cremaschi, Paula Rettl, Marco Cappelluti, Catherine De Vries
* Replication Code for "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy"
* AJPS, 2024
* This code: Main Text 
********************************************************************************

* This code replicates all the empirical results (maps, tables and figures) of the paper's main text. 
* Appendix results are replicated in a separate file

********************************************************************************
*Figure 1: Affected Municipalities
********************************************************************************
use "data/map_2008.dta", clear

grmap treated, osize(none ..) clmethod(unique)  ndlab("No Data") legend(size(*1.5)) fc(gs15 gs5) legenda(off)


********************************************************************************
*Table 1: TWFE Pre-post DID - Election Outcomes
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

xtset id08 year

est clear 
	
foreach var of varlist farright_sh m5s_leftfarleft_sh right_sh turnout {
	

	
	eststo: xtreg `var' t i.year , fe cl(id08)
		/* DV mean and SD */
		sum `var'
		* Number of municipalities
		unique id08 if e(sample) == 1
		* Number of treated unity
		unique id08 if e(sample) == 1 & t == 1
	
		
}

esttab, keep(t) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01) 


********************************************************************************
* Figure 2 - Event Study Plot for Far-Right Share - output data for ggplot
********************************************************************************
* Use data adopting fused vote shares only after 2008
use "data/electoral_panel_dataset.dta", clear

xtset id08 year

est clear
eststo: xtreg farright_sh t18 t13 t06 t01 i.year, fe cl(id08) 

outreg2 using `"ev_study_all"', replace dta stats(coef ci_low ci_high) sideway noparen noaster nonotes noobs

est clear
eststo: xtreg farright_sh t18 t13 t06 t01 i.year if mont_group == 1, fe cl(id08) 

outreg2 using `"ev_study_mg1"', replace dta stats(coef ci_low ci_high) sideway noparen noaster nonotes noobs

est clear
eststo: xtreg farright_sh t18 t13 t06 t01 i.year if mont_group == 0, fe cl(id08) 

outreg2 using `"ev_study_mg0"', replace dta stats(coef ci_low ci_high) sideway noparen noaster nonotes noobs


********************************************************************************
* Table 2 - Matching and SDID Pre-post DID - Election Outcomes
********************************************************************************
use "data/electoral_panel_dataset.dta", clear

xtset id08 year

global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

est clear 

preserve

	psmatch2 treated if year == 2008, outcome(farright_sh) mahal($match_cov)
    bys id: egen _w = max(_weight)
    bys id: egen _s = max(_support)
	
foreach var of varlist farright_sh m5s_leftfarleft_sh right_sh {
		
	eststo: xtreg `var' t i.year [pw = _w] if _s != ., fe cl(id08)
	
	* Mean and SD of dependent variable
	sum `var'
	* Number of municipalities
	unique id08 if e(sample) == 1
	* Number of treated unity
	unique id08 if e(sample) == 1 & t == 1

	eststo: sdid `var' id08 year t, vce(jackknife) // requires net install from github
	
	* Mean and SD of dependent variables (same as in MTWFE)
	* Number of municipalities
	return list
	* Number of treated municipalities (same as in MTWFE)
}

restore

* Turnout // run separately to eliminate 4 municipalities that have missing values on turnout 2001
preserve
psmatch2 treated if year == 2008, outcome(turnout) mahal($match_cov)
bys id: egen _w = max(_weight)
bys id: egen _s = max(_support)
eststo: xtreg turnout t i.year [pw = _w] if _s != ., fe cl(id08)
*restore

* Mean and SD of dependent variable
	sum turnout
	* Number of municipalities
	unique id08 if e(sample) == 1
	* Number of treated unity
	unique id08 if e(sample) == 1 & t == 1

*preserve
drop if (municipality == "MESSINA" | municipality == "MILANO" | municipality == "TORINO" | municipality == "VERONA") // missing values on eligible voters in 2001

* Mean and SD of dependent variable
	sum turnout
	
tab t year //showing the distribution of treated and control units after dropping the four missing units

eststo: sdid turnout id08 year t, vce(jackknife) // requires net install from github: net install sdid, from(https://raw.githubusercontent.com/daniel-pailanir/sdid/master) replace
return list
restore 

esttab , keep(t) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
* Table 3 - Pre-post TWFE DID - Service Provision
********************************************************************************
* Prepare dataset
* Obtain treatment indicators and covariates from electoral panel dataset
use "data/service_dataset.dta", clear

gen     t = 0 
replace t = 1 if year > 2010  & treated == 1

tab mis_pol year // missing for police: 1,923 + 1400 = 3,323 (42% of total sample)
tab mis_reg year // missing for registry: 998 + 1400 = 2,398 (30% of sample)
tab mis_garb year // missing for garbage: 667 + 1400 = 2,067 (26% of sample)

bys id08: gen n = _N // drop missing municipalities on one year, total missing = 1,400
drop if n == 1
drop n

xtset id08 year

********************************************************************************
* Set globals

* Matching covariates
global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

********************************************************************************
* Table
psmatch2 treated if year == 2013, outcome(pop_seg) mahal($match_cov)
bys id: egen _w = max(_weight)
bys id: egen _s = max(_support)

est clear

preserve

foreach var in "pol" "reg" "garb" {
	di "`var'"

egen z_`var'_diff = std(`var'_diff)
drop `var'_diff
rename z_`var'_diff `var'_diff

eststo: xtreg `var'_diff t i.year if mis_`var' == 0 , fe cl(id08)
	/* Number of municipalities */
	unique id08 if e(sample) == 1
	/* Number of treated units */
	unique id08 if e(sample) == 1 & treated == 1
	
eststo: xtreg `var'_diff t i.year [pw = _w] if mis_`var' == 0 & _s != ., fe cl(id08)
	/* Number of municipalities */
	unique id08 if e(sample) == 1
	/* Number of treated units */
	unique id08 if e(sample) == 1 & treated == 1
}

esttab, keep(t) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)

restore

********************************************************************************
* Table 4 - Pre-post TWFE DID - Anti-Immigration Attitudes
********************************************************************************
* Obtain treatment indicators and covariates from electoral panel dataset
use "data/individual_panel_dataset.dta", clear

********************************************************************************
* Set globals
global match_cov "pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 mean_income2008 share_university2001 max_altitude"

global survey_cov "i.age_cat i.female i.edu i.occupation"

*******************************************************************************
* Main analysis

est clear

foreach dv in "imm_add" "immig_identity" "immig_employment" { 

eststo: reg `dv' i.treated##i.post_reform $survey_cov i.cod_reg, robust

eststo: reg `dv' i.treated##i.post_reform $survey_cov $match_cov i.cod_reg, robust

}

esttab, keep(1.treated 1.post_reform 1.treated#1.post_reform) replace b(%8.3f) se(%8.3f) noomitted nocons nobaselev stats(N, fmt(0 2)) star(+ 0.10 * 0.05 ** 0.01)


********************************************************************************
*Figure 4: HTE on Economic Resources (MTWFE)  - output data for ggplot
********************************************************************************
* Use data adopting fused vote shares only after 2008
use "data/electoral_panel_dataset.dta", clear

xtset id08 year

preserve

* graph umatched
xtile inc_q3 = mean_income2008, nq(3)

eststo: xtreg m5s_leftfarleft_sh i.t##i.inc_q3 i.year##i.inc_q3 , fe cl(id08)

outreg2 using `"hte_income_coefs"', keep(1.t 1.t#2.inc_q3 1.t#3.inc_q3) replace dta stats(coef ci_low ci_high) sideway noparen noaster nonotes noobs

keep if year == 2008
keep inc_q3 mean_income2008 treated year m5s_leftfarleft_sh t pop_tot_2008 foreign_share_2008 female_share_2008 over65_share_2008 share_university2001 max_altitude id
rename inc_q3 income_tercile
save `"hte_income_hist"', replace
