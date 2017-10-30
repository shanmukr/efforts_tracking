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

  def all_managers
    Employee.where.not(:emp_type => "individual", :status => "active")
  end
  
	def log_errors(object)
    unless object.valid?
      object.errors.full_messages.each { |mesg|
        logger.info(mesg)
        if flash[:danger].nil?
          flash[:danger] = mesg
        else
          flash[:danger] = flash[:danger] + ", " + mesg
        end
      }
    end
  end

end
