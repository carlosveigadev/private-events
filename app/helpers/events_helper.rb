module EventsHelper
  def any_attendees?
    @event.attendees.each.count.positive?
  end

  def creator?
    current_user.id == @event.creator_id
  end
end
