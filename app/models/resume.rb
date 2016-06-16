class Resume < ActiveRecord::Base
  has_attached_file :cv, styles: {}

  validates :title, :cv, presence: true
  validates_attachment_content_type :cv, content_type: 'application/pdf', :in => 0.megabytes..10.megabytes

  default_scope { order(updated_at: :desc) }
end
