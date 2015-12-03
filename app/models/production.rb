class Production < ActiveRecord::Base
  has_attached_file :picture, styles: { thumb: '100x100>', medium: '200x282>' }

  validates :title, :picture, :year, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 2010 }
  validates :order, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 20, :allow_blank => true}
  validates_format_of :link, :with => /\Ahttps?\:\/\/.*/, :allow_blank => true
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/, :in => 0.megabytes..10.megabytes
end
