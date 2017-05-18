class CreateWaterbills < ActiveRecord::Migration[5.0]
  def change
    create_table :waterbills do |t|
      t.string :comsumer
      t.integer :month
      t.integer :year
      t.float :consumption

      t.timestamps
    end
  end
end
