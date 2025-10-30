class AddBudgetCategoriesSpentCacheToTrip < ActiveRecord::Migration[8.0]
  def change
    add_column :trips, :budget_categories_spent_cache, :float
  end
end
