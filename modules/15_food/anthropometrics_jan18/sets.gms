*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de

sets
   underaged15(age) underaged age group
   /0--4,5--9,10--14/

   adult15(age) Age groups for adult population
       /  15--19,
       20--24, 25--29, 30--34, 35--39,
       40--44, 45--49, 50--54, 55--59,
       60--64, 65--69, 70--74, 75--79
       80--84,85--89,90--94,95--99,100+ /

   working15(adult15) Working age group
   / 15--19,
     20--24, 25--29, 30--34, 35--39,
     40--44, 45--49, 50--54, 55--59/

   retired15(adult15) Retired age group
   /60--64, 65--69, 70--74, 75--79
       80--84,85--89,90--94,95--99,100+ /

   agegroup15 All age groups
   /underaged,working,retired /

   age2_adults15(agegroup15) Adult age group
   /working,retired /

   agegroup2age(agegroup15,age) Mapping between age cohort and age
   /
   underaged        . (0--4,5--9,10--14)
   working          . (15--19,
     20--24, 25--29, 30--34, 35--39,
     40--44, 45--49, 50--54, 55--59)
   retired          . (60--64, 65--69, 70--74, 75--79
       80--84,85--89,90--94,95--99,100+ )
   /

   bmi_tree15 Body mass index
   /low,lowsplit,mediumsplit,high,highsplit/

   bmi_group15 Body mass index gradient
   /verylow,low,medium,mediumhigh,high,veryhigh/

   bmi_group_est15(bmi_group15) Body mass index extremes
   /verylow,low,mediumhigh,high,veryhigh/

   age_new_estimated15(age) Estimated ages
   /0--4,5--9,10--14,15--19/

   reproductive(age) reproductive age groups
   /20--24, 25--29, 30--34, 35--39/

   estimates15 Estimate type
   /preliminary,final/

   paras_s15 Schofield equation parameters
   /slope, intercept/

   paras_b15 Intake equation parameters
   /saturation,halfsaturation,intercept/

   kfo(kall) All products in the sectoral version
   /
   tece,maiz,trce,rice_pro,soybean,rapeseed,groundnut,sunflower,puls_pro,
   potato,cassav_sp,sugr_cane,sugr_beet,
   oils,sugar,molasses,alcohol,brans,scp,
   livst_rum,livst_pig,livst_chick, livst_egg, livst_milk, fish,
   others
   /

   growth_food15(kfo) food items that are important for body growth regression
   /   soybean,groundnut,puls_pro,oils,
   livst_rum,livst_pig,livst_chick, livst_egg, livst_milk, fish  /

   kst(kfo) plant-based staple products in the sectoral version
   /
   tece,maiz,trce,rice_pro,soybean,rapeseed,groundnut,sunflower,puls_pro,
   potato,cassav_sp,sugr_cane,sugr_beet,
   oils,sugar,molasses,alcohol,brans,scp/


   kfo_ap(kfo) Animal food products
   /
   livst_rum,livst_pig,livst_chick, livst_egg, livst_milk, fish
   /

   kfo_st(kfo) staple products
   /
   tece,maiz,trce,rice_pro,soybean,rapeseed,groundnut,sunflower,puls_pro,
   potato,cassav_sp,sugr_cane,sugr_beet,molasses,brans,scp/

   kfo_pf(kfo) processed foods including oils sugar alcohol
   / oils,alcohol,sugar /

   knf(kall) non-food products in the sectoral version
   /
   oilpalm,cottn_pro,foddr, pasture, begr, betr,
   oilcakes,ethanol,distillers_grain,fibres,
   res_cereals, res_fibrous, res_nonfibrous,
   wood, woodfuel
   /

   nutrition nutritition attributes
   /kcal, protein/

  par15 Parameters for food module
      / intercept,saturation,halfsaturation,non_saturation /
* intercept + saturation give the max value if non-saturation is 1
* halfsaturation is the gdp until which half of saturation is reached

 regr15  demand regression types
      / overconsumption,livestockshare,processedshare,vegfruitshare /

*** Scenarios
   food_scen15  scenarios
       / SSP1, SSP2, SSP3, SSP4, SSP5,
         SSP1_boundary, SSP2_boundary, SSP3_boundary,
         SSP4_boundary, SSP5_boundary,
         SSP2_lowcal, SSP2_lowls, SSP2_waste,
         ssp2_high_yvonne,ssp2_low_yvonne,ssp2_lowest_yvonne,
         history /

   pop_scen15  population scenario for demographic structure
       / SSP1, SSP2, SSP3, SSP4, SSP5 /


  calibscen15  calibration scenarios for balanceflow
               / constant, fadeout2050 /

  ruminantfadeoutscen15 scenarios for changed composition of livestock products
               / halving2050, constant /
;

alias(kst,kst2);
alias(kfo,kfo2);
alias(kfo_ap,kfo_ap2);
alias(kfo_st,kfo_st2);
alias(kfo_pf,kfo_pf2);
alias(iso,iso2);
alias(reproductive,reproductive2);
