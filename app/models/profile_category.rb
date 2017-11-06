class ProfileCategory < ApplicationRecord
  belongs_to :category
  belongs_to :profile
end
