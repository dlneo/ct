class Content < ActiveRecord::Base
  
  validates :body, :presence => true
  
  
  belongs_to :post
  belongs_to :status
  belongs_to :cat
  
  has_attached_file :img, :styles => { :medium => "150x150>" },
                          :url => "/images/contents/:id/:style/:basename.:extension",
                          :path => ":rails_root/public/images/contents/:id/:style/:basename.:extension"
  validates_attachment_content_type :img, :content_type => ['image/jpeg', 'image/png']
  validates_attachment_size :img, :less_then => 3.megabytes 
end
 