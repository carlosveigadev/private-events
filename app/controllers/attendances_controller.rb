class AttendancesController < ApplicationController
  def create
    user = User.find(current_user.id)
    ////////////////////////////////////////event = Event.find_by(id: 1)

    event.attendees << user

    if event.save
      redirect_to event_path(event)
    else
      flash[:alert] = "Unable to send invite"
      redirect_to event_path(event)
    end
  end

  def destroy
  end

end
