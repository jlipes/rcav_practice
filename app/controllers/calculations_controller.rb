class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def squared
    @square_num = params["square_num"].to_f
    @square_num_ans=@square_num**2
    render("squared.html.erb")
  end
  def root
    @root_num = params["root_num"].to_f
    @root_num_ans=@root_num**0.5
    @root_num_ans=@root_num_ans.round(2)
    render("root.html.erb")
  end
  def num
    @min_num = params["min_num"].to_i
    @max_num = params["max_num"].to_i
    @num_ans=rand(@min_num..@max_num)
    render("num.html.erb")
  end
  def payment_calc
    @interest_rate = params["interest_rate"].to_f/100
    @number_of_years = params["number_of_years"].to_i
    @principal_value = params["principal_value"].to_i
    @payment_ans=(@interest_rate/100/12*@principal_value/(1-(1+@interest_rate/100/12)**(-@number_of_years*12))).to_f
    @payment_ans=@payment_ans.round(2)
    render("payment_calc.html.erb")
  end
end
