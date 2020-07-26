class CreateClocks < ActiveRecord::Migration[6.0]
  def change
    create_table :clocks do |t|
      t.string :type
      t.integer :price

      t.timestamps
    end
  end
end
