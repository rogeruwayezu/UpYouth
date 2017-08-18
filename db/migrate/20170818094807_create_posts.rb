class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :budget
      t.integer :use_id
      t.integer :deadline
      t.integer :category_id
      t.text :skills

      t.timestamps
    end
  end
end
