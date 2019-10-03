class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:search]
      query = params[:search][:query]
      @tags = params[:search][:tags].reject(&:blank?) if params[:search][:tags].present?

      if query.present? && @tags != nil
        @events = policy_scope(Event).global_search(query).tagged_with(@tags)
        # @plans = policy_scope(Plan).global_search(query).tagged_with(@tags)
      elsif query.present?
        @events = policy_scope(Event).global_search(query)
        # @plans = policy_scope(Plan).global_search(query)
      elsif @tags.any?
        @events = policy_scope(Event).tagged_with(@tags)
        # @plans = policy_scope(Plan).tagged_with(@tags)
      end
    elsif params[:tag].present?
      @events = policy_scope(Event).tagged_with(params[:tag])
      # @plans = policy_scope(Plan).tagged_with(params[:tag])
    else
      @events = policy_scope(Event)
      # @plans = policy_scope(Plan)
    end
  end

  def tagged
    if params[:tag].present?
      @events = policy_scope(Event).tagged_with(params[:tag])
    else
      @events = policy_scope(Event)
    end
  end

  def show
    @event = policy_scope(Event).find(params[:id])
    authorize @event
    @review = Review.new
    @event = Event.find(params[:id])
    @interest = Interest.find_by(user: current_user, event: @event) if user_signed_in?
    @markers =
    {
      lat: @event.latitude,
      lng: @event.longitude
      # infoWindow: { content: render_to_string(partial: "/events/info_window", locals: { event: @event }) }
    }
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    authorize @event
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :photo, :tag_list)
  end

end
