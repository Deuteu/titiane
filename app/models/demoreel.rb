class Demoreel < ActiveRecord::Base
  default_scope { order(updated_at: :desc) }
  validates_format_of :link, :with => /\Ahttps?\:\/\/.*/
end
