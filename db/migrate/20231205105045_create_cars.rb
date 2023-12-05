class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :photo
      t.string :model
      t.string :description
      t.integer :finance_fee
      t.integer :purchase_fee
      t.integer :amount_payable
      t.string :duration
      t.string :apr
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
