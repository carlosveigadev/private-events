class AddColumnsToEvents < ActiveRecord::Migration[5.2]
  def change

    add_column :events, :location, :string
    add_column :events, :description, :text
    add_column :events, :creator_id, :integer
  end
end
