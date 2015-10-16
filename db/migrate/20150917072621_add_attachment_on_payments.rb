class AddAttachmentOnPayments < ActiveRecord::Migration
  def change
    add_attachment :spree_payments, :receipt_img
  end
end
