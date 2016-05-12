class Medication < ActiveRecord::Base
  validates :name,  presence: true,
                    uniqueness: { case_sensitive: false }
  validates :category, presence: true
  has_many :dosages
end
