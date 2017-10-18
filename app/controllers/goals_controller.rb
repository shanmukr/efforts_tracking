class GoalsController < ApplicationController

  def index
  end

  def new
    @goal = Goal.new
  end

  def create
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
  end

end
