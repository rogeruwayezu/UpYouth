class User < ApplicationRecord
  has_secure_password
   has_many :posts
   belongs_to :role
   has_many :applications
   has_one :profile
   has_many :portfolios
   has_one :education
   has_one :employment_history
   has_one :other_experience

end
