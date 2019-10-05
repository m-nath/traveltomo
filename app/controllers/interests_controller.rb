class InterestsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @interest = Interest.new(event: @event, user: current_user)
    @interest.user = current_user
    @interest.event = @event
    authorize @interest
    if @interest.save
      redirect_to event_path(@event)
    else
      render 'events/show', event: @event
    end
  end

  def destroy
    @interest = Interest.find(params[:id])
    authorize @interest
    # @event.user = current_user
    @event = @interest.event
    @interest.destroy
    redirect_to event_path(@event)
  end

  private

  def interest_params
    params.require(:interest).permit(:user_id, :event_id)
  end
end
