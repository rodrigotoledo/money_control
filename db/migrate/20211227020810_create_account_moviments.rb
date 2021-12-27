class CreateAccountMoviments < ActiveRecord::Migration[7.0]
  def change
    create_table :account_moviments do |t|
      t.references :account, null: false, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
