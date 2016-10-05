class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :articles
  has_many :comments

  def self.current_user
    Thread.current[:user]
  end
  
end
