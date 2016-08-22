class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  validates :user_id, :uniqueness => { :scope => :book_id,
    :message => " Hanya Dapat Mereview 1 Kali silahkan Edit atau Hapus terlebih dahulu!" }
  validates :rating, :comment, presence: true
  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5,
    message: "can only be a whole number between 1 and 5"
  }
end
