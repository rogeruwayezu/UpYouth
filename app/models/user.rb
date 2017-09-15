class User < ApplicationRecord
  has_secure_password
   has_many :posts
   belongs_to :role
   has_many :applications
   has_one :profile
   has_many :portfolios
   has_many :educations
   has_many :employment_histories
   has_many :other_experiences

end
