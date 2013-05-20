class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  
  belongs_to :author
  
  def hello
  "Hello #{self.name}"
  end
  
end
