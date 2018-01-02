class CreateDepts < ActiveRecord::Migration[5.1]
  def change
    create_table :depts do |t|
      t.text :dept_name

      t.timestamps
    end
  end
end
