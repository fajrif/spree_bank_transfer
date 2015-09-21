class AddKeterangans < ActiveRecord::Migration
  def change
    add_column :spree_banks, :comments, :text
  end
end
