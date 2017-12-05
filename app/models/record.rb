class Record < ApplicationRecord
  belongs_to :manager, required: false
  belongs_to :client, required: false
  belongs_to :stage, required: false
  belongs_to :risk_level_start, required: false
  belongs_to :risk_level_end, required: false
  has_many :activities, inverse_of: :record
  accepts_nested_attributes_for :activities, :allow_destroy => true
end
