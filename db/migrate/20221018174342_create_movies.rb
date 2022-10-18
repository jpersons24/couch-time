class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_date
      t.string :genre
      t.string :img_url

      t.timestamps
    end
  end
end
