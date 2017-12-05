class Referral < ApplicationRecord
  has_many :client_referrals
  has_many :clients, through: :client_referrals
end
