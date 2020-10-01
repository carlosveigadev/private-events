module EventsHelper
  def any_attendees?
    @event.attendees.each.count > 0
  end
end
