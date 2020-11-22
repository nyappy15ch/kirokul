class Hobby < ApplicationRecord
  belongs_to :user
  validates :hobby_name, presence: true
end
