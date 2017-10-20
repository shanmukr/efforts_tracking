class GoalsController < ApplicationController

  def index
    @goals = Goal.where(:status => "active")
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_authorised_params)
    if @goal.save
      redirect_to :action => "index"
    else
      rails "error".inspect
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update(goal_authorised_params)
      redirect_to :action => "index"
    else
      rails "error".inspect
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def my_goals
    redirect_to :action => "index"
  end

  private
  def goal_authorised_params
    params.require(:goal).permit(:name, :description, :e_date, :c_date, :t_status, :f_date, :status, :emp_id, :given_by, :t_progress, :comments )
  end

end
