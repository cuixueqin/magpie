*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

parameters
 i21_trade_bal_reduction(t_all,k_trade)         trade balance reduction (1)
 i21_trade_margin(i,k_trade)                    trade margins (USD05MER per tDM)
 i21_trade_tariff(i,k_trade)                    trade tariffs (USD05MER per tDM)
;

positive variables
 v21_excess_dem(k_trade)                 global excess demand (mio. tDM)
 v21_excess_prod(i,k_trade)              regional excess production (mio. tDM)
 vm_cost_trade(i)                        regional  trade costs (mio. USD05MER)
 v21_cost_trade_reg(i,k_trade)           regional trade costs for each tradable commodity (mio. USD05MER)
;

equations
 q21_trade_glo(k_trade)                  Global production > demand constraint (mio. tDM)
 q21_notrade(i,k_notrade)                fix of not traded commodities (mio. tDM)
 q21_trade_reg(i,k_trade)                regional trade balances i.e. minimum self-suff ratio (1)
 q21_trade_reg_up(i,k_trade)             regional trade balance maximum self-suff ratio (1)
 q21_excess_dem(k_trade)                 global excess demand (mio. tDM)
 q21_excess_supply(i,k_trade)            regional excess production (mio. tDM)
 q21_cost_trade(i)                       regional  trade costs (mio. USD05MER)
 q21_cost_trade_reg(i,k_trade)           regional trade costs for each tradable commodity (mio. USD05MER)
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov21_excess_dem(t,k_trade,type)       global excess demand (mio. tDM)
 ov21_excess_prod(t,i,k_trade,type)    regional excess production (mio. tDM)
 ov_cost_trade(t,i,type)               regional  trade costs (mio. USD05MER)
 ov21_cost_trade_reg(t,i,k_trade,type) regional trade costs for each tradable commodity (mio. USD05MER)
 oq21_trade_glo(t,k_trade,type)        Global production > demand constraint (mio. tDM)
 oq21_notrade(t,i,k_notrade,type)      fix of not traded commodities (mio. tDM)
 oq21_trade_reg(t,i,k_trade,type)      regional trade balances i.e. minimum self-suff ratio (1)
 oq21_trade_reg_up(t,i,k_trade,type)   regional trade balance maximum self-suff ratio (1)
 oq21_excess_dem(t,k_trade,type)       global excess demand (mio. tDM)
 oq21_excess_supply(t,i,k_trade,type)  regional excess production (mio. tDM)
 oq21_cost_trade(t,i,type)             regional  trade costs (mio. USD05MER)
 oq21_cost_trade_reg(t,i,k_trade,type) regional trade costs for each tradable commodity (mio. USD05MER)
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
