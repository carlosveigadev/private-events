class AttendancesController < ApplicationController
  def create
    user = User.find(:user_id)
    event = Event.find(:event_id)
    event.attendees << user
    if event.save
      redirect_to event_path(event)
    else
      flash[:alert] = "Unable to send invite"
      redirect_to event_path(event)
    end
  end

  def show
    @attendance = Attendance.all
  end

  def new
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_attendance
    @attendance = Attendance.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end
