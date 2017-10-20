class HomeController < ApplicationController
  
  def index
  end

  def emp_validation
    if params[:emp_name].present?
      set_logged_emp(params[:emp_name])
      if get_cur_emp.present?
        redirect_to :controller => "employees", :action => "index"
      else
        flash[:danger] = "The Given Employee name #{params[:emp_nmae]} is not present in data base"
        redirect_to :controller => "home", :action => 'index'
      end
    else
      flash[:danger] = "Please enter the valid user name and password"
      redirect_to  :controller => "home", :action => 'index'
    end
  end

  def logout
    session.delete(:log_emp) 
    render 'index'
  end
end
