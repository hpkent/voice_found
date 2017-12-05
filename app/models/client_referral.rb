class ClientReferral < ApplicationRecord
  belongs_to :client
  belongs_to :referral
end
