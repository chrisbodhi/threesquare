class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :pic_url
      t.text :review

      t.timestamps
    end
  end
end
