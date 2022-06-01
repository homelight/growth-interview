class CreateGistStars < ActiveRecord::Migration[6.1]
  def change
    create_table :gist_stars do |t|
      t.string "gist_id", :null => false

      t.timestamps
    end
  end
end
