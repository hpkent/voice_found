class Record < ApplicationRecord
  belongs_to :manager
  belongs_to :client
  belongs_to :stage
  belongs_to :risk_level_start
  belongs_to :risk_level_end
  has_many :activities, inverse_of: :record
  accepts_nested_attributes_for :activities, :allow_destroy => true
  after_commit :update_activity_attributes

  private

  def update_activity_attributes
    activities = self.activities
    activities.each do |activity|
      activity.update_attributes(client_id:self.client_id, manager_id:self.manager_id)
    end
  end

  def self.recent_records
    records = self.where("start_date >= ?", (Date.current - 2))
    records
  end

  def self.older_records
    records = self.where("start_date < ?", (Date.current - 2))
    records
  end
end
