class PagesController < ApplicationController
  # GET request for, which is home page
  def home
    @basic_plan = Plan.find(1)
    @builder_plan = Plan.find(2)
    @pro_plan = Plan.find(3)
  end
  
  def about
  end
  
end