class CreateProfileSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_skills do |t|
      t.integer :profile_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
