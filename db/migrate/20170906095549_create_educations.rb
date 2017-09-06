class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :school
      t.date :date_attended
      t.string :degree

      t.timestamps
    end
  end
end
