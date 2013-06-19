class Diapositiva < ActiveRecord::Base
  attr_accessible :link, :slide, :titulo, :video

  mount_uploader :slide, SlideUploader
end
