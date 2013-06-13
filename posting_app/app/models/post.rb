class Post < ActiveRecord::Base
  attr_accessible :content, :title
  
  belongs_to :user
  has_many :comments
  
  def hello
  "Hello #{self.name}"
  end
  
  validates :content, presence: true
  accepts_nested_attributes_for :comments, reject_if: lambda { |c| c[:body].blank? }
  
  default_scope order('created_at desc')

end
