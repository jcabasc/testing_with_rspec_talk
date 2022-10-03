class CreateRates < ActiveRecord::Migration[7.0]
  def up
    create_table :rates do |t|
      t.integer :weight
      t.float :price
      t.bigint :plan_id
      t.timestamps
    end
  end

  def down
    drop_table :rates
  end
end
