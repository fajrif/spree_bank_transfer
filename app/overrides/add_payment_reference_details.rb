Deface::Override.new(
  :virtual_path => 'spree/admin/shared/_order_summary',
  :name => 'add_payment_reference_details',
  :insert_after => "table#order_tab_summary",
  :text => %q{
    <% if bank_transfer_payment = @order.payments.from_bank_transfer.first %>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title"><%= Spree.t(:payment_reference_details) %></h3>
        </div>
        <table class="table table-condensed table-bordered" id="bank_transfer_payment">
          <tbody class="additional-info">
            <tr>
              <td width="35%">
                <strong><%= Spree.t(:deposited_on) %>:</strong>
              </td>
              <td>
                <%= bank_transfer_payment.deposited_on %>
              </td>
            </tr>
            <tr>
              <td>
                <strong><%= Spree.t(:bank_name) %>:</strong>
              </td>
              <td>
                <%= bank_transfer_payment.bank_name %>
              </td>
            </tr>
            <tr>
              <td>
                <strong><%= Spree.t(:account_no) %>:</strong>
              </td>
              <td>
                <%= bank_transfer_payment.account_no %>
              </td>
            </tr>
            <tr>
              <td>
                <strong><%= Spree.t(:transaction_reference_no) %>:</strong>
              </td>
              <td>
                <%= bank_transfer_payment.transaction_reference_no %>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    <% end %>
  }
)
