class EmployeesController < ApplicationController

  def index
    @employees = Employee.where(:status => "active").order(:eid)
  end

  def new
    @employee = Employee.new
  end

  def create
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
  end

end
