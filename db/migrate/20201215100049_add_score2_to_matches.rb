class AddScore2ToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :score2, :integer
  end
end
