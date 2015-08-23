class CreateCookingShows < ActiveRecord::Migration
  def change
    create_table :cooking_shows do |t|
      t.string :name
      t.string :country
      t.string :description
      t.string :years
      t.string :picture

      t.timestamps
    end
  end
end
