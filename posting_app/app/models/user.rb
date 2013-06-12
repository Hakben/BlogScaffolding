class User < ActiveRecord::Base
  attr_accessible :name, :picture
  
  has_many :posts
  has_many :comments

  validates :name, presence: true, uniqueness: true, length: { maximum: 40 }

end
