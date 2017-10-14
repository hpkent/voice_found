class Activity < ApplicationRecord
  belongs_to :manager
  belongs_to :client
  belongs_to :activity_type
  belongs_to :provider

  accepts_nested_attributes_for :activity_type, :allow_destroy => true
  accepts_nested_attributes_for :client, :allow_destroy => true
  accepts_nested_attributes_for :manager, :allow_destroy => true
  accepts_nested_attributes_for :provider, :allow_destroy => true
end
