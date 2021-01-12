class AddTeamsToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :teams, :integer
  end
end
