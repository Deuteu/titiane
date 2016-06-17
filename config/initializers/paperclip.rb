# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:s3_host_name] = 's3-eu-west-1.amazonaws.com'
Paperclip::Attachment.default_options[:path] = ':rails_root/public:url'
Paperclip::Attachment.default_options[:url] = '/system/:attachment/:id/:style/:filename'
#Use :id instead of :id_partition because id shouldn't be large
#Remove :class because :attachment different among classes
