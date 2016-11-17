class Content < ApplicationRecord

  has_attached_file :attachment,
                    :url => "/attachments/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/attachments/:id/:style/:basename.:extension"

  validates_attachment_content_type :attachment, :content_type => [/.*/]

end
