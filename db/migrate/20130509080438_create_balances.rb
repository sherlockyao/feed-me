class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.decimal :debit
      t.decimal :credit
      t.references :user

      t.timestamps
    end
    add_index :balances, :user_id
  end
end
