class CreateKanjis < ActiveRecord::Migration
  def change
    create_table :kanjis do |t|
      t.string :kanji
      t.integer :kakusu
      t.string :yomi

      t.timestamps null: false
    end
  end
end
