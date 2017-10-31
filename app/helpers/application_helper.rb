module ApplicationHelper

  def log_emp
    Employee.where(:login => session[:log_emp]) 
  end

  def all_emp
    if log_emp[0].emp_type == "admin"
      Employee.where(:emp_type => "individual").map { |f| [f.name, f.id] }
    else
      Employee.where(:emp_type => "individual", :manager_id => log_emp[0].eid ).map { |f| [f.name, f.id] }
    end
  end
end
