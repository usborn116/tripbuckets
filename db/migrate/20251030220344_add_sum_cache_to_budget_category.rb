class AddSumCacheToBudgetCategory < ActiveRecord::Migration[8.0]
  def change
    add_column :budget_categories, :sum_cache, :float
  end
end
