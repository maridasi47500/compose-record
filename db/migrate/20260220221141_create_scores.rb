class CreateScores < ActiveRecord::Migration[7.1]
  def change
    create_table :scores do |t|
      t.string :title
      t.string :content
      t.string :key
      t.string :time

      t.timestamps
    end
  end
end
