class Skill < ApplicationRecord

  belongs_to :post, optional:true
  has_and_belongs_to_many :profiles, dependent: :destroy, optional:true
end
