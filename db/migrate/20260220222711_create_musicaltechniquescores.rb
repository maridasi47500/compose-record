class CreateMusicaltechniquescores < ActiveRecord::Migration[7.1]
  def change
    create_table :musicaltechniquescores do |t|
      t.string :thismomentvalue
      t.integer :score_id
      t.integer :musicaltechnique_id
      t.string :myvalue
      t.string :mypercent

      t.timestamps
    end
  end
end
