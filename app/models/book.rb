class Book < ActiveRecord::Base
#  attr_accessible :image
  mount_uploader :image, ImageUploader

  searchkick

  has_many :reviews

  validates :title, :description, :year, :author, :publisher, :pages, :image, presence: true
  validates :year, format: { with: /\d{4}/,
    message: "only allows format eg: 2016" }
  validates :pages, format: { with: /\d/,
    message: "only allows numbers" }
end
