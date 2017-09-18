class AddProfilePictureInProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :profile_picture, :string
    rename_column :employment_histories, :responsabilities, :responsibilities
  end
end
