class CreatePostSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :post_skills do |t|
      t.integer :post_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
