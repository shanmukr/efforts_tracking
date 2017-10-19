class EmployeesController < ApplicationController

  def index
    @employees = Employee.where(:status => "active").order(:eid)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_authorised_params)
    if @employee.save
      redirect_to :action => "index"
    else
      raise "error".inspect
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_authorised_params)
    redirect_to :action => "index" 
  end

  def show
    @employee = Employee.find(params[:id])
  end

  private
  def employee_authorised_params
    params.require(:employee).permit(:name, :eid, :manager_id, :login, :emp_type, :last_name, :email, :status, :j_date, :l_date, :password, :phone )
  end

end
