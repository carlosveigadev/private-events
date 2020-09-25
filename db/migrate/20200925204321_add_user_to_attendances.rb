class AddUserToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_reference :attendances, :user, foreign_key: true
    add_reference :attendances, :event, foreign_key: true
  end
end
