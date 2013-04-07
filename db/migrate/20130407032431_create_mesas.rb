class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.string :nombre
      t.integer :si
      t.integer :no
      t.integer :blanco
      t.integer :nulo
      t.integer :tms
      t.integer :tmn
      t.integer :tmb
      t.integer :tmn

      t.timestamps
    end
  end
end
