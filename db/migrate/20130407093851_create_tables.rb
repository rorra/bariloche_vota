class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.references :school

      t.string :name
      t.integer :votes_yes
      t.integer :votes_no
      t.integer :votes_blank
      t.integer :votes_nil

      t.timestamps
    end

    add_index :tables, :school_id
    add_index :tables, :name
  end
end
