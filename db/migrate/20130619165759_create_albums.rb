class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :codigo_embed

      t.timestamps
    end
  end
end
