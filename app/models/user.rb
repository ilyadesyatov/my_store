class User < ApplicationRecord
  #mount :avatar, AvatarUploader
  has_one  :cart
  has_many :orders
  has_many :comments

end
