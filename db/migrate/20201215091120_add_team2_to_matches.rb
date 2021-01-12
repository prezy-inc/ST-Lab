class AddTeam2ToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :team2, :string
  end
end
