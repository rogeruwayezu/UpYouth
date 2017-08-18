class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.integer :post_id
      t.string :cover_letter
      t.string :cv
      t.integer :user_id
      t.string :duration

      t.timestamps
    end
  end
end
