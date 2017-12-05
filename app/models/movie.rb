class Movie < ApplicationRecord
	belongs_to :user
	has_many :reviews
	has_attached_file :image, styles: { medium: "400x600#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

def self.search(search)
  where("title LIKE ? OR director LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
end
  	
end


#We change the avatar word to image
#rails generate paperclip user avatar --- to make migrations, but we do it this way below:
#rails generate paperclip movie imaage

