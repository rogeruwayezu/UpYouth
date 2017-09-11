require 'carrierwave/orm/activerecord'

class Portfolio < ApplicationRecord
  belongs_to :user

  mount_uploader :file, FileUploader # Tells rails to use this uploader for this model.
end
