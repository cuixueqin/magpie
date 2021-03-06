$setglobal c15_food_scenario  SSP2
*   options:   SSP: "SSP1", "SSP2", "SSP3", "SSP4", "SSP5"
*             SRES: "A1", "A2", "B1", "B2"
*            OTHER: "SSP1_boundary", "SSP2_boundary", "SSP3_boundary", "SSP4_boundary", "SSP5_boundary"

$setglobal c15_calibscen  constant
*   options:   constant, fadeout2050

$setglobal c15_rumscen  mixed
*   options:   constant, halving2050, mixed

scalar s15_elastic_demand  elastic demand switch (1=elastic 0=exogenous) (1) / 1 /;

scalar s15_calibrate calibration switch (1=calibrated 2=pure regresssion outcomes) (1) / 1 /;
* only for per-capita calories, not for e.g. calibration of transformation parameters between per-capita calories in dm

scalar s15_maxiter maximum iteration number (1) / 5 /;

scalar s15_convergence convergence criteria (1) / 0.005 /;

table f15_household_balanceflow(t_all,i,kall,dm_ge_nr)   Balance flow to take account of inhomogenous products and processes in statistics (mio. tDM)
$ondelim
$include "./modules/15_food/input/f15_household_balanceflow.cs3"
$offdelim;

table f15_nutrition_attributes(t_all,kall,nutrition) nutrition attributes of fooditems dedicated for fooduse (mio. kcal per tDM | t Protein per tDM)
$ondelim
$include "./modules/15_food/input/f15_nutrition_attributes.cs3"
$offdelim;


*** Food Demand Model


* Unit for `f15_demand_regr_paras` is
* kcal/capita/day for saturation and intercept, and
* USD05/capita for halfsaturation

table f15_demand_paras(regr15,food_scen15,par15)  Food regression parameters (X)
$ondelim
$include "./modules/15_food/input/f15_demand_regression_parameters.cs3"
$offdelim;

table f15_bmi_shr_paras(sex, agegroup15, bmi_tree15, paras_b15)  BMI share regression parameters (X)
$ondelim
$include "./modules/15_food/input/f15_bmi_shr_regr_paras.cs3"
$offdelim;

table f15_bmi(sex,age,bmi_group15) mean body mass index for each bmi group (kg per m2)
$ondelim
$include "./modules/15_food/input/f15_bmi.cs3"
$offdelim;

table f15_bmi_shr_past(t_all,iso,age,sex,bmi_group15) mean body mass index for each bmi group (kg per m2)
$ondelim
$include "./modules/15_food/input/f15_bmi_shr_past.cs3"
$offdelim;


table f15_kcal_pc_iso(t_all,iso,kfo)  Observed per-capita calories in the past (kcal per capita per day)
$ondelim
$include "./modules/15_food/input/f15_kcal_pc_iso.csv"
$offdelim;


table f15_intake_pc_observed_iso(t_all,iso,sex,age)  Observed per-capita calorie intake in the past (kcal per captia per day)
$ondelim
$include "./modules/15_food/input/f15_intake_pc_observed_iso.cs3"
$offdelim;


parameter f15_prices_initial(kall) Food prices in initialisation period (USD05MER per t DM)
/
$ondelim
$include "./modules/15_food/input/f15_prices_initial.csv"
$offdelim
/;


parameter f15_price_index(t_all) Food prices index in initialisation period (USD05MER per t DM)
/
$ondelim
$include "./modules/15_food/input/f15_prices_index.csv"
$offdelim
/;


table f15_kcal_calib_fadeout(t_all,calibscen15) calibration fadeout (1)
$ondelim
$include "./modules/15_food/input/f15_kcal_balanceflow_fadeout.csv"
$offdelim
;

table f15_ruminant_fadeout(t_all,ruminantfadeoutscen15) ruminant fadeout scenario (1)
$ondelim
$include "./modules/15_food/input/f15_ruminant_fadeout.csv"
$offdelim
;

table f15_bodyheight(t_all,iso,sex,age)      body height (cm)
$ondelim
$include "./modules/15_food/input/f15_bodyheight_historical.cs3"
$offdelim;

table f15_schofield(sex,age, paras_s15) Schofield equation parameters (-)
$ondelim
$include "./modules/15_food/input/f15_schofield_parameters.cs3"
$offdelim
;



*** EOF input.gms ***
