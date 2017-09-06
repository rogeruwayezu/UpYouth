class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :overview
      t.integer :category_id
      t.string :file

      t.timestamps
    end
  end
end
