class RiskLevelStart < ApplicationRecord
  has_many :clients
  has_many :records
end
