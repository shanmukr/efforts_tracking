class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_logged_emp(emp)
    session[:log_emp] = emp
  end

  def get_cur_emp
    if session[:log_emp].present?
      Employee.find_by( login: session[:log_emp])
    end
  end

  def all_employees
    Employee.where(:emp_type => "individual", :status => "active")
  end

end
