class Profile < ApplicationRecord
  
  mount_uploader :profile_picture, FileUploader

  belongs_to :user
  # has_and_belongs_to_many :skills, optional:true
  
  has_many :profile_skills
  has_many :skills, through: :profile_skills

  has_many :profile_categories
  has_many :categories, through: :profile_categories


end
