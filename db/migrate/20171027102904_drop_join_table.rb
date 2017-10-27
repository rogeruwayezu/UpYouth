class DropJoinTable < ActiveRecord::Migration[5.0]
  def change
    drop_join_table :users, :skills
  end
end
