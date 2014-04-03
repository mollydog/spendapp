class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :project
      t.decimal :budget
      t.datetime :date
      t.decimal :spend
      t.text :note
      t.decimal :available

      t.timestamps
    end
  end
end
