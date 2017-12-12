class Record < ApplicationRecord
  belongs_to :manager
  belongs_to :client
  belongs_to :stage
  belongs_to :risk_level_start
  belongs_to :risk_level_end
  has_many :activities, inverse_of: :record
  accepts_nested_attributes_for :activities, :allow_destroy => true
end
