class RemoveTripFromTransaction < ActiveRecord::Migration[8.0]
  def change
    remove_column :transactions, :trip_id
  end
end
