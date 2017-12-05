class SupportNetwork < ApplicationRecord
  has_many :client_support_networks
  has_many :clients, through: :client_support_networks
end
