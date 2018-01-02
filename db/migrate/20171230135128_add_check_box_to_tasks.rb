class AddCheckBoxToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :checkbox, :boolean, :default => false
  end
end
