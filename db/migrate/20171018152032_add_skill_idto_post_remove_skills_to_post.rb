class AddSkillIdtoPostRemoveSkillsToPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :skills, :string
    add_column :posts, :skill_id, :integer
  end
end
