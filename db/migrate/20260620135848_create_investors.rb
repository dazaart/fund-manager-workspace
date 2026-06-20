class CreateInvestors < ActiveRecord::Migration[8.1]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :status
      t.integer :commitment_amount

      t.timestamps
    end
  end
end
