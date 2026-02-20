class CreateMusicsymbols < ActiveRecord::Migration[7.1]
  def change
    create_table :musicsymbols do |t|
      t.integer :musicsymboltype_id
      t.string :name

      t.timestamps
    end
  end
end
