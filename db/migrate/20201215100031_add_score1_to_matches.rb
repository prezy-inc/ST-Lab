class AddScore1ToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :score1, :integer
  end
end
