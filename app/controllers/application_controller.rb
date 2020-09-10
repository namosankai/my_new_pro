class ApplicationController < ActionController::Base
    join_table=Trader.joins(:items).select('traders.id,items.trader_id,')
end
