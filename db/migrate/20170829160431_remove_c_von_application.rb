class RemoveCVonApplication < ActiveRecord::Migration[5.0]
  def change
    remove_column :applications, :cv, :string
    remove_column :posts, :deadline, :integer
    add_column :posts, :deadline, :date 
  end
end
