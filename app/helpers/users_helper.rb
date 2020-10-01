module UsersHelper
  def logged_in?
    !current_user.nil?
  end

  def is_events? 
    @event.each.count > 0
  end

  def events_future?
    @future_event = current_user.attended_events.future_events
  end

  def events_past?
    @past_event = current_user.attended_events.past_events
  end
end
