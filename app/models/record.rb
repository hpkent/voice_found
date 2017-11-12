class Record < ApplicationRecord
  belongs_to :manager, required: false
  belongs_to :client, required: false
  belongs_to :stage, required: false
  has_many :activities, inverse_of: :record
  accepts_nested_attributes_for :activities, :allow_destroy => true
end
