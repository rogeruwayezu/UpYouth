class Profile < ApplicationRecord
  
  mount_uploader :profile_picture, FileUploader

  belongs_to :user
  has_and_belongs_to_many :skills, optional:true

end
