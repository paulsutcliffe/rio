class AlbumsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: :index

  def create
    create! { albums_path }
  end

  def update
    update! { albums_path }
  end
end
