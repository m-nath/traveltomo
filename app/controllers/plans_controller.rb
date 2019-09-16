class PlansController < ApplicationController

  def index
    @plans = policy_scope(Plan)
  end

  def new
    @plan = Plan.new
    authorize @plan
  end

  def create
    @plan = Plan.new(plan_params)
    @user = current_user
    authorize @plan
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  def show
    @plan = policy_scope(Plan).find(params[:id])
    authorize @plan
  end

  def edit
    @plan = Plan.find(params[:id])
    @plan.update(plan_params)
    authorize @plan_params
    redirect_to event_path(@plan.event)
  end

  def destroy

  end

  private

  def plan_params
    params.require(:plan).permit(:name, :date)
  end
end
