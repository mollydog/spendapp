class CreateSprojects < ActiveRecord::Migration
  def change
    create_table :sprojects do |t|
      t.string :name
      t.decimal :budget
      t.date :date
      t.decimal :spend
      t.string :note
      t.decimal :amtremaining

      t.timestamps
    end
  end
end
