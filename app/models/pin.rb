class Pin < ActiveRecord::Base
belongs_to :user

has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>"}


#validates_attachment :image,
  #:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
