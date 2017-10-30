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
    name = @goal.name
    if @goal.save
      redirect_to :action => "index"
    else
      log_errors(@goal)
		end

    if params[:all_emp_id].present?
      s_goal = Goal.find_by_name(name)
      s_goal.employees << params[:emp_id]
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

  def goal_actions
    @td_id = params[:id]
    @td_id.to_s
    @employees = all_employees
    respond_to do |format|
      format.js
    end
  end

  private
  def goal_authorised_params
    params.require(:goal).permit(:name, :description, :e_date, :c_date, :a_date, :t_status, :f_date, :status, :given_by, :t_progress, :comments )
  end

end
