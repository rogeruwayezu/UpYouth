class DropProfileSkillJOinTable < ActiveRecord::Migration[5.0]
  def change
    drop_join_table :profiles, :skills
  end
end
