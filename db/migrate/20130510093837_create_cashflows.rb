class CreateCashflows < ActiveRecord::Migration
  def change
    create_table :cashflows do |t|
      t.decimal :amount
      t.belongs_to :debitor
      t.belongs_to :creditor

      t.timestamps
    end
  end
end
