class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :bank_name
      t.integer :account
      t.integer :digit

      t.timestamps
    end
  end
end
