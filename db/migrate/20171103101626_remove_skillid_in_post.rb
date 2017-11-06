class RemoveSkillidInPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :skill_id, :integer
  end
end
