class Client < ApplicationRecord
  has_many :activities
  belongs_to :age_range_type, required: false
  belongs_to :exit_attempt_type, required: false
  belongs_to :family_type, required: false
  belongs_to :relationship_type, required: false
  belongs_to :gender_type, required: false
  belongs_to :risk_level_type, required: false

  has_many :client_target_groups
  has_many :target_groups, through: :client_target_groups
  accepts_nested_attributes_for :client_target_groups

  has_many :client_referrals
  has_many :referrals, through: :client_referrals
  accepts_nested_attributes_for :client_referrals

  has_many :client_support_networks
  has_many :support_networks, through: :client_support_networks
  accepts_nested_attributes_for :client_support_networks

  has_many :client_substances
  has_many :substances, through: :client_substances
  accepts_nested_attributes_for :client_substances

  has_many :client_outcomes
  has_many :outcomes, through: :client_outcomes
  accepts_nested_attributes_for :client_outcomes

  # validates :first_name, presence: true
end

