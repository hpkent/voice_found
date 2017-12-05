class Outcome < ApplicationRecord
  has_many :outcomes
  has_many :clients, through: :outcomes
end
