class Album < ActiveRecord::Base
  attr_accessible :titulo, :codigo_embed, :ano, :creditos

  auto_html_for :codigo_embed do
    soundcloud
  end
end
