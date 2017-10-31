class CreateJoinTableSkillProfile < ActiveRecord::Migration[5.0]
  def change
    create_join_table :skills, :profiles do |t|
      # t.index [:skill_id, :profile_id]
      # t.index [:profile_id, :skill_id]
    end
  end
end
