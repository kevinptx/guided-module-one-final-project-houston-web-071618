class CreateAlbum < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
    end
  end
end
