Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:square_num", { :controller => "calculations", :action => "squared" })
  get("/square_root/:root_num", { :controller => "calculations", :action => "root" })
  get("/random/:min_num/:max_num", { :controller => "calculations", :action => "num" })
  get("/payment/:interest_rate/:number_of_years/:principal_value", { :controller => "calculations", :action => "payment_calc" })
end
