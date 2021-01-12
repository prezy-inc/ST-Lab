class AddTeam1ToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :team1, :string
  end
end
