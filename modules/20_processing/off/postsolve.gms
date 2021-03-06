*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de



*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov_dem_processing(t,i,kall,"marginal")               = vm_dem_processing.m(i,kall);
 ov_secondary_overproduction(t,i,kall,kpr,"marginal") = vm_secondary_overproduction.m(i,kall,kpr);
 ov_cost_processing(t,i,"marginal")                   = vm_cost_processing.m(i);
 oq20_processing_costs(t,i,"marginal")                = q20_processing_costs.m(i);
 ov_dem_processing(t,i,kall,"level")                  = vm_dem_processing.l(i,kall);
 ov_secondary_overproduction(t,i,kall,kpr,"level")    = vm_secondary_overproduction.l(i,kall,kpr);
 ov_cost_processing(t,i,"level")                      = vm_cost_processing.l(i);
 oq20_processing_costs(t,i,"level")                   = q20_processing_costs.l(i);
 ov_dem_processing(t,i,kall,"upper")                  = vm_dem_processing.up(i,kall);
 ov_secondary_overproduction(t,i,kall,kpr,"upper")    = vm_secondary_overproduction.up(i,kall,kpr);
 ov_cost_processing(t,i,"upper")                      = vm_cost_processing.up(i);
 oq20_processing_costs(t,i,"upper")                   = q20_processing_costs.up(i);
 ov_dem_processing(t,i,kall,"lower")                  = vm_dem_processing.lo(i,kall);
 ov_secondary_overproduction(t,i,kall,kpr,"lower")    = vm_secondary_overproduction.lo(i,kall,kpr);
 ov_cost_processing(t,i,"lower")                      = vm_cost_processing.lo(i);
 oq20_processing_costs(t,i,"lower")                   = q20_processing_costs.lo(i);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################
