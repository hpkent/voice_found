class ClientTargetGroup < ApplicationRecord
  belongs_to :client
  belongs_to :target_group
end
