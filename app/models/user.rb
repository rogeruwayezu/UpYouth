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
   has_many :submissions


   validates :email, presence: true, uniqueness: {message: "already exists. Use a different email"}



 
   acts_as_messageable




    def mailboxer_name
      self.name
    end

    def mailboxer_email(object)
      self.email
    end

    def full_name
      full_name = first_name + " " + last_name
    end

    def self.search(search)
    if search
      find(:all, :conditions => ['first_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
