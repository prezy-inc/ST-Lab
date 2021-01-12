class AddImgToRallies < ActiveRecord::Migration[6.0]
  def change
    add_column :rallies, :img, :string
  end
end
