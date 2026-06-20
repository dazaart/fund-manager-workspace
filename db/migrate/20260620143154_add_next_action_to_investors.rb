class AddNextActionToInvestors < ActiveRecord::Migration[8.1]
  def change
    add_column :investors, :next_action, :string
  end
end
