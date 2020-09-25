class AddInitialDateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :initial_date, :datetime
    add_column :events, :end_date, :datetime
  end
end
