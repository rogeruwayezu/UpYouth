class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :file
      t.string :title
      t.string :description
      t.boolean :completed
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
