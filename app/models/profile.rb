class Profile < ApplicationRecord
  
  mount_uploader :profile_picture, FileUploader
  attr_accessor :name, :skill_tokens
  belongs_to :user
  has_and_belongs_to_many :skills
  attr_reader :skill_tokens

  def skill_tokens=(ids)
    self.skill_ids = ids.split(",")
  end

end
