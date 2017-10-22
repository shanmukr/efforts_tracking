class GoalsController < ApplicationController

  def index
    @goals = Goal.where(:status => "active")
  end

  def all_emp
    Employee.where(:emp_type => "individual", :manager_id => get_cur_emp.eid )
  end

  def new
    @all_emp = all_emp
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_authorised_params)
    @goal.given_by = get_cur_emp.eid
    if @goal.save
      redirect_to :action => "index"
    else
      raise "error".inspect
    end
  end

  def edit
    @all_emp = all_emp
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update(goal_authorised_params)
      redirect_to :action => "index"
    else
      raise "error".inspect
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def my_goals
    if get_cur_emp.emp_type = "admin"
      @goals = Goal.where(:emp_id => get_cur_emp.eid)
    else
      @goals = Goal.where(:given_by => get_cur_emp.eid)
    end
    render "index"
  end

  private
  def goal_authorised_params
    params.require(:goal).permit(:name, :description, :e_date, :c_date, :t_status, :f_date, :status, :emp_id, :given_by, :t_progress, :comments )
  end

end
