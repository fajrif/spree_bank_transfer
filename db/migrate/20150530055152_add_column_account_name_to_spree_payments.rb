class AddColumnAccountNameToSpreePayments < ActiveRecord::Migration
  def change
    add_column :spree_payments, :account_name, :string
  end
end
