class EventsController < ApplicationController
  before_action :call_event
  before_action :owned_event

  def index
    @events = Event.all
  end

  def new
    @event = current_user.events.new
  end


    def create
      @event = current_user.events.new(event_params)
      if @event.save
        redirect_to @event
      else
        render 'new'
      end
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

  def owned_event
    unless current_user == @event.user
      redirect_to root_path
    end
  end

end
