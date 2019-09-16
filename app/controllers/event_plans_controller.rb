class EventPlansController < ApplicationController
  before_action :set_plan

  def create
    @event_plan = EventPlan.new(event_plan_params)
    @event_plan.plan = @plan
    authorize @event_plan
    if @event_plan.save
      redirect_to plan_path(@plan)
    end
  end

  private

  def set_plan
    @plan = Plan.find(params[:plan_id])
  end

  def event_plan_params
    params.require(:event_plan).permit(:event_id)
  end
end
