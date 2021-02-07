class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :room_id
      t.string :inning
      t.string :speed
      t.string :retire
      t.string :spirits
      t.timestamps
    end
  end
end
