class User < ApplicationRecord

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  has_many :microposts
  validates :name, :presence => true, :length => {:maximum => 25}
  validates :email, :presence => true, :length => {:maximum => 100}, :confirmation => true, :format => EMAIL_REGEX, :uniqueness => true


end
