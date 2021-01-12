class AddYearToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :year, :integer
  end
end
