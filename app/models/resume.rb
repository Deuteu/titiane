class Resume < ActiveRecord::Base
  has_attached_file :cv, styles: { text: { quality: :better } }

  validates :title, :language, :cv, presence: true
  validates :language, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
  validates_attachment_content_type :cv, content_type: 'application/pdf', :in => 0.megabytes..10.megabytes

  default_scope { order(updated_at: :desc) }
end
