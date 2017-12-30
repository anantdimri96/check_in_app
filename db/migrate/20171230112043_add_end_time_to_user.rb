class AddEndTimeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :end_time, :text
  end
end
