class Activity < ApplicationRecord
  belongs_to :manager
  belongs_to :client
  belongs_to :activity_type
end
