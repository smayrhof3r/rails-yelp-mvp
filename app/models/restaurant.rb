class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
                                    message: "Invalid category" }
  validates :address, presence: true
  has_many :reviews, dependent: :destroy
end
