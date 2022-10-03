class CreateCarriers < ActiveRecord::Migration[7.0]
  def up
    create_table :carriers do |t|
      t.string :name
      t.string :code
      t.timestamps
    end
  end

  def down
    drop_table :carriers
  end
end
