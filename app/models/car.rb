class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations
  validates :description,
            :amount_payable, :duration, :apr, presence: true
  validates :model, :photo, uniqueness: true, presence: true
end
