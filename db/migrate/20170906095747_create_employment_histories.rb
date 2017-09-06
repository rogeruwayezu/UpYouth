class CreateEmploymentHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :employment_histories do |t|
      t.string :company
      t.string :location
      t.string :position
      t.string :role
      t.date :period
      t.text :responsabilities

      t.timestamps
    end
  end
end
