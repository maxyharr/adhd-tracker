class Dosage < ActiveRecord::Base
  validates :value, presence: true
  validates :unit, presence: true
  belongs_to :medication
end
