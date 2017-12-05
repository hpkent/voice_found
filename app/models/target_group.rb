class TargetGroup < ApplicationRecord
  has_many :client_target_groups
  has_many :clients, through: :client_target_groups
end
