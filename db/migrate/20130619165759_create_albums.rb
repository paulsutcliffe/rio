class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :titulo
      t.string :codigo_embed
      t.integer :ano
      t.string :creditos

      t.timestamps
    end
  end
end
