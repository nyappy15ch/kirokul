class Score < ApplicationRecord
  belongs_to :user
  belongs_to :hobby
  validates :your_score, presence: true
end
