class AddInitialDateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :initial_date, :date
    add_column :events, :end_date, :date
  end
end
