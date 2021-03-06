*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de


$setglobal c55_scen_conf  SSP2
*   options:   SSP: "SSP1", "SSP2", "SSP3", "SSP4", "SSP5"
*             SRES: "A1", "A2", "B1", "B2"

parameter f55_awms_recycling_share(i,kli,awms_conf) share of Nr in confinement recycled (tNr per tNr)
/
$ondelim
$include "./modules/55_awms/ipcc2006_aug16/input/f55_awms_recycling_share.cs4"
$offdelim
/
;

parameter f55_awms_shr(t_all,i,scen_conf55,kli,awms_conf) share of Nr in confinement recycled (tNr per tNr)
/
$ondelim
$include "./modules/55_awms/ipcc2006_aug16/input/f55_awms_shr.cs4"
$offdelim
/
;

parameter f55_manure_fuel_shr(t_all,i,kli,gdp_scen09) share of Nr in confinement recycled (tNr per tNr)
/
$ondelim
$include "./modules/55_awms/ipcc2006_aug16/input/f55_manure_fuel_shr.cs4"
$offdelim
/
;
