class Client < ApplicationRecord
  has_many :activities
  belongs_to :age_range_type
  belongs_to :exit_attempt_type
  belongs_to :family_type
  belongs_to :gender_type
  belongs_to :risk_level_type
end
