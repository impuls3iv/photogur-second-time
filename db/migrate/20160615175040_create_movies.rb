class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :release
      t.string :url

      t.timestamps null: false
    end
  end
end
