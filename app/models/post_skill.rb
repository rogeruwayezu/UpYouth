class PostSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :post
end
