class CreateBudgetCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :budget_categories do |t|
      t.string :name
      t.float :budgeted_amount
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
