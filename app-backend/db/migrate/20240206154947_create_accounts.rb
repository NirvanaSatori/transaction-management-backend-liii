class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :blob do |t|
      t.integer :balance

      t.timestamps
    end
  end
end
