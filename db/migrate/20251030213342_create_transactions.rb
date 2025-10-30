class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.string :note
      t.float :amount
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
