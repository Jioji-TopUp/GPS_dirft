class CreateDriftings < ActiveRecord::Migration[5.0]
  def change
    create_table :driftings do |t|
      t.integer :num
      t.datetime :time
      t.string :key
      t.string :East_longitude
      t.string :North_latitude

      t.timestamps
    end
  end
end
