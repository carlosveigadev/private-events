class AttendancesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event.attendees << current_user

    if @event.save
      redirect_to user_path(current_user)
      flash[:alert] = 'Nice, you are checked in to the event!'
    else
      flash[:alert] = 'Unable to send invite'
      redirect_to @event
    end
  end

  def destroy; end
end
