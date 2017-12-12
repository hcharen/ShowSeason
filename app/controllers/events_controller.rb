class EventsController < ApplicationController
  before_action :call_event

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    redirect_to events_path
  end

  def show

  end

  def edit

  end

  def update

    @event.update(event_params)
    redirect_to(event_path(@event))
  end

  def destroy

    @event.destroy
    redirect_to events_path
  end

private

  def event_params
    params.require(:event).permit(:date)
  end

  def call_event
    @event = Event.find_by(params[:id])
  end

end
