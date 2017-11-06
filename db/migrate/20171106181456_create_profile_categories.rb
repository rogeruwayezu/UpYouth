class CreateProfileCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_categories do |t|
      t.integer :profile_id
      t.integer :category_id

      t.timestamps
    end
  end
end
