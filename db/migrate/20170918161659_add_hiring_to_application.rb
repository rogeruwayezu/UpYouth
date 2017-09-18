class AddHiringToApplication < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :hired, :boolean
  end
end
