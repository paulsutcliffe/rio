class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :lugar
      t.date :fecha
      t.string :slug

      t.timestamps
    end
    add_index :eventos, :slug, unique: true
  end
end
