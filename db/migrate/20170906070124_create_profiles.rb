class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.text :overview
      t.text :portfolio
      t.string :certifications
      t.string :education
      t.text :employment_history
      t.text :other_experiences

      t.timestamps
    end
  end
end
