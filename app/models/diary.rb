class Diary < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  attr_accessible :Body, :Title, :Message, :image

  
 searchable do
    text :Body, :Title
  end	
end
