class RemovetypeAddColumnclockType < ActiveRecord::Migration[6.0]
  def change
    remove_column :clocks, :type, :string
    add_column :clocks, :style, :string
  end
end
