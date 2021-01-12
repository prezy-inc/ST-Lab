class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :name1
      t.string :name2
      t.string :url
      t.integer :round
      t.integer :order
      t.string :tournament
      t.integer :game1
      t.integer :game2

      t.timestamps
    end
  end
end
