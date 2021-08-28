class Task < ApplicationRecord
  belongs_to :category
  has_many :completion_dates
  validates :name, presence: true
end
