class RemoveCheckBoxFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :checkbox, :boolean
  end
end
