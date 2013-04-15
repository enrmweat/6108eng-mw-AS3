class Diary < ActiveRecord::Base
  attr_accessible :Body, :Title, :Message
end
