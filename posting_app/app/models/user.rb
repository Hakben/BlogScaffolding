class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :picture
  
  has_many :posts
  has_many :comments

  #validates :name, presence: true, uniqueness: true, length: { maximum: 40 }
  #validates :email, presence: true, uniqueness: true, length: { maximum: 40 }
end
