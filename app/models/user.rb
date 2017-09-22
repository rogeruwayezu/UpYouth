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

 
   acts_as_messageable

    def mailboxer_name
      self.name
    end

    def mailboxer_email(object)
      self.email
    end

end
