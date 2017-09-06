class AddUserId < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :user_id, :integer
    add_column :educations, :user_id, :integer
    add_column :employment_histories, :user_id, :integer
    add_column :other_experiences, :user_id, :integer
  end
end
