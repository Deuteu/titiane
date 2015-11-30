class Resume < ActiveRecord::Base
  validates :title, :language, presence: true
  validates :language, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
end
