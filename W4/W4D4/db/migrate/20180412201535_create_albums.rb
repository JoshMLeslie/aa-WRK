class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :band_id, null: false

      t.timestamps
    end
    add_index :albums, :band_id, unique: true
  end
end
