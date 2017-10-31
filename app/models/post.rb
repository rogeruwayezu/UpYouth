class Post < ApplicationRecord
  belongs_to :user
  has_many :applications
  belongs_to :category
  has_many :submissions
  has_many :skills

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
end
