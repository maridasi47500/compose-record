class CreateMusicaltechniques < ActiveRecord::Migration[7.1]
  def change
    create_table :musicaltechniques do |t|
      t.string :name
      t.integer :musicalinstrument_id
      t.string :myattribute
      t.string :maxvalue
      t.string :minvalue

      t.timestamps
    end
  end
end
