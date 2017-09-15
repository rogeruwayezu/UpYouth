class RemoveCertifAttr < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :certifications, :string
  end
end
