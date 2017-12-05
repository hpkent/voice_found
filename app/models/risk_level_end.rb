class RiskLevelEnd < ApplicationRecord
  has_many :clients
  has_many :records
end
