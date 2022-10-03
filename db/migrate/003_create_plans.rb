class CreatePlans < ActiveRecord::Migration[7.0]
  def up
    create_table :plans do |t|
      t.string :type
      t.integer :status, default: 1
      t.boolean :default
      t.bigint :service_id
      t.timestamps
    end
  end

  def down
    drop_table :plans
  end
end
