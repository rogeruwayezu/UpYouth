class RenamingPostAttribute < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :use_id, :user_id
  end
end
