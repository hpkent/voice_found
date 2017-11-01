class Activity < ApplicationRecord
  belongs_to :manager
  belongs_to :client
  belongs_to :activity_type
  belongs_to :provider
  belongs_to :record, inverse_of: :activities
end
