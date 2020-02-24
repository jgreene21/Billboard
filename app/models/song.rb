Rails.application.config.active_record.belongs_to_required_by_default = false
class Song < ApplicationRecord
  
  belongs_to :list, optional: true
  belongs_to :artist

end
