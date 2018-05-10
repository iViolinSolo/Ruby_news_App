class Activity < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: {minimum:  5, maximum: 20}
end
