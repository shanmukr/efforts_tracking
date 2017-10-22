module ApplicationHelper

  def log_emp
    Employee.where(:login => session[:log_emp]) 
  end

  def all_emp
    Employee.where(:emp_type => "individual", :manager_id => log_emp[0].eid ).map { |f| [f.name, f.id] }
  end
end
