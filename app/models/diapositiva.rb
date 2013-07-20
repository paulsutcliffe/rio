class Diapositiva < ActiveRecord::Base
  attr_accessible :link, :slide, :titulo, :video

  mount_uploader :slide, SlideUploader

  auto_html_for :video do
    youtube(:width => 930, :height => 440)
  end
end
