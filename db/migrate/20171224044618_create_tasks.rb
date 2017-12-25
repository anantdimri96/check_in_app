class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :user_id
      t.text :date
      t.text :to_do
      t.text :completed

      t.timestamps
    end
  end
end