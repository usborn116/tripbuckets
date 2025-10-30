class AddTotalBudgetCacheToTrip < ActiveRecord::Migration[8.0]
  def change
    add_column :trips, :total_budget_cache, :float
  end
end
