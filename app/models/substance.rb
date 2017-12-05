class Substance < ApplicationRecord
  has_many :client_substances
  has_many :clients, through: :client_substances
end
