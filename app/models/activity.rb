class Activity < ApplicationRecord
  belongs_to :manager, required: false
  belongs_to :client, required: false
  belongs_to :activity_type, required: false
  belongs_to :provider, required: false
  belongs_to :record, inverse_of: :activities
end
