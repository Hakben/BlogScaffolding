class Post < ActiveRecord::Base
  attr_accessible :content, :title
  
  belongs_to :user
  
  def hello
  "Hello #{self.name}"
  end
  
end
