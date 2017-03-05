
class Item < ApplicationRecord

  mount_uploader :image, ImageUploader

  validates :price, { numericality: {greater_than: 0, allow_nil: true}}
  validates :name, :description, presence: true

  has_many :positions
  has_many :carts, through: :positions

  has_many :comments, as: :commentable


=begin
  after_initialize { puts "initialize" }
  after_save {}
  after_create {}
  after_update {}
  after_destroy {}
=end

end
