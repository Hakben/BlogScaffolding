class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  
  def hello
  "Hello #{self.name}"
  end
  
end
