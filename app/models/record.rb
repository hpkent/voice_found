class Record < ApplicationRecord
  belongs_to :manager
  belongs_to :client
  belongs_to :stages
  has_many :risk_levels
  has_many :activities, inverse_of: :record
  accepts_nested_attributes_for :activities
end
