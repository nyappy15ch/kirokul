class Hobby < ApplicationRecord
  belongs_to :user
  has_many :scores
  validates :hobby_name, presence: true
end
