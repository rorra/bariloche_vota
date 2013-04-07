class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.references :school

      t.string :name
      t.integer :votes_yes, null: false, default: 0
      t.integer :votes_no, null: false, default: 0
      t.integer :votes_blank, null: false, default: 0
      t.integer :votes_nil, null: false, default: 0

      t.timestamps
    end

    add_index :tables, :school_id
    add_index :tables, :name
  end
end
