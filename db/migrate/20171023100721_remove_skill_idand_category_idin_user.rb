class RemoveSkillIdandCategoryIdinUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :skill_id, :integer
    remove_column :users, :category_id, :integer
  end
end
