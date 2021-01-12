class CreateRallies < ActiveRecord::Migration[6.0]
  def change
    create_table :rallies do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
