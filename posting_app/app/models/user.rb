class User < ActiveRecord::Base
  attr_accessible :name, :picture
  
  has_many :posts
  has_many :comments
end
