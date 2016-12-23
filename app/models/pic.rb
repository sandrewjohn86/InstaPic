class Pic < ApplicationRecord
	acts_as_votable
  belongs_to :user

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	
  	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	#has_attached_file :image, :styles => { :medium => "300x300>"}

  	#validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/

  	# Validate filename
  	#validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

  	# Explicitly do not validate
  	do_not_validate_attachment_file_type :image
end
