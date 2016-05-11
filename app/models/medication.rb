class Medication < ActiveRecord::Base
  validates :name, presence: true
  validates :category, presence: true
  has_many :dosages
end
