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

  private

  def event_params
    params.require(:event).permit(:name, :description, :tag_list)
  end

end
