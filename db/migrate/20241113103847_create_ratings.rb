class CreateRatings < ActiveRecord::Migration[7.1]
  def change
    create_table :ratings do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
