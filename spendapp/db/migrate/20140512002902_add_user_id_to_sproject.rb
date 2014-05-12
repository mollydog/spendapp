class AddUserIdToSproject < ActiveRecord::Migration
  def change
    add_column :sprojects, :user_id, :integer
    add_index :sprojects, :user_id
  end
end
