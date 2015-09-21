class RemoveColumnComments < ActiveRecord::Migration
  def chang
    remove_column :spree_banks, :comments, :text
  end
end
