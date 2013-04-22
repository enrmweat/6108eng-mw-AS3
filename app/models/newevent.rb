class Newevent < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
   attr_accessible :title, :body, :Message, :image

searchable do
    text :body, :title
  end


end
