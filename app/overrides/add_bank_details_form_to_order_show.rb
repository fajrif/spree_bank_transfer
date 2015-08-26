Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'add_bank_details_form_to_order_show',
  :insert_bottom => ".payment-info",
  :text => %q{
    <% if bank_transfer_payment = @order.payments.from_bank_transfer.first %>
      <% unless bank_transfer_payment.details_submitted? %>
        <br>
        <%= link_to Spree.t(:add_details), "javascript:void(0);", :class => 'button add_bt_details' %>
      <% end %>
      <%= form_for bank_transfer_payment do |f| %>
        <table>
          <tr>
            <td><%= Spree.t(:deposited_on) %></td><td><%= f.text_field :deposited_on, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field', 'field-name' => 'Deposited on' %></td>
          </tr>
          <tr>
            <td><%= Spree.t(:bank_name) %></td><td><%= f.text_field :bank_name, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field', 'field-name' => 'Bank name' %></td>
          </tr>
          <tr>
            <td><%= Spree.t(:account_no) %></td><td><%= f.text_field :account_no, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field', 'field-name' => 'Account No.' %></td>
          </tr>
          <tr>
            <td><%= Spree.t(:transaction_reference_no) %></td><td><%= f.text_field :transaction_reference_no, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field', 'field-name' => 'Transaction Reference No.' %></td>
          </tr>
        </table>
        <br>
        <% unless bank_transfer_payment.details_submitted? %>
          <%= f.submit "Submit", :confirm => Spree.t(:confirm_details_submit)  %>
        <% end %>
      <% end %>
    <% end %>
  }
)
