class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :lugar
      t.date :fecha

      t.timestamps
    end
  end
end
