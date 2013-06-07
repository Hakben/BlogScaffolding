class Post < ActiveRecord::Base
  attr_accessible :content, :title
  
  belongs_to :user
  has_many :comments
  
  def hello
  "Hello #{self.name}"
  end
  
end
