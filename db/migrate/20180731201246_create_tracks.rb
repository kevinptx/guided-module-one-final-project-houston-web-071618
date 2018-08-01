class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.belongs_to :artist
      t.belongs_to :album
    end
  end
end
