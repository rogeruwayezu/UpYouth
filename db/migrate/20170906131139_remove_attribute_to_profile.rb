class RemoveAttributeToProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :portfolio, :text
    remove_column :profiles, :education, :string
    remove_column :profiles, :other_experiences, :text
    remove_column :profiles, :employment_history, :text
  end
end
