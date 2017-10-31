class AddSkillIdAndCategoryIdtoUser < ActiveRecord::Migration[5.0]
  def change
     add_column :users, :skill_id, :integer
     add_column :users, :category_id, :integer
  end
end
