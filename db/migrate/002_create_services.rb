class CreateServices < ActiveRecord::Migration[7.0]
  def up
    create_table :services do |t|
      t.string :name
      t.string :code
      t.bigint :carrier_id
      t.timestamps
    end
  end

  def down
    drop_table :services
  end
end
