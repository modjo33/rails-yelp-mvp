class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES}
  validates :address, presence:true
  validates :name, presence:true

end
