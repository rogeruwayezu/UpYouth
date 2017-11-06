class Skill < ApplicationRecord

  belongs_to :post, optional:true
  # has_and_belongs_to_many :profiles, dependent: :destroy, optional:true

  has_many :post_skills
  has_many :posts, through: :post_skills

  has_many :profile_skills
  has_many :profiles, through: :profile_skills
end
