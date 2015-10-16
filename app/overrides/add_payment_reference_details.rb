Deface::Override.new(
  :virtual_path => 'spree/admin/payments/index',
  :name => 'add_payment_reference_details',
  :insert_bottom => "fieldset:first",
  :text => %q{
    <%= render :partial => "spree/admin/shared/payment_reference_details" %>
  }
)
