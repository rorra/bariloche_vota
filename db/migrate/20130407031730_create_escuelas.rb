class CreateEscuelas < ActiveRecord::Migration
  def change
    create_table :escuelas do |t|
      t.string :nombre
      t.string :direccion

      t.timestamps
    end
  end
end
