Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'add_bank_details_form_to_order_show',
  :insert_bottom => ".payment-info",
  :text => %q{
    <% if bank_transfer_payment = @order.payments.from_bank_transfer.first %>
      <%= form_for bank_transfer_payment do |f| %>
        <table>
          <tr>
            <td><%= Spree.t(:deposited_on) %></td>
            <td>
              <%= f.text_field :deposited_on, value: datepicker_field_value(bank_transfer_payment.deposited_on), disabled: bank_transfer_payment.details_submitted?, class: 'datepicker required_field' %>
            </td>
          </tr>
          <tr>
            <td><%= Spree.t(:bank_name) %></td><td><%= f.text_field :bank_name, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field' %></td>
          </tr>
          <tr>
            <td><%= Spree.t(:account_name) %></td><td><%= f.text_field :account_name, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field' %></td>
          </tr>
          <tr>
            <td><%= Spree.t(:account_no) %></td><td><%= f.text_field :account_no, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field' %></td>
          </tr>
          <tr>
            <td><%= Spree.t(:transaction_reference_no) %></td><td><%= f.text_field :transaction_reference_no, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field' %></td>
          </tr>
          <tr>
            <td><%= Spree.t(:receipt_img) %></td><td><%= f.file_field :receipt_img, :disabled => bank_transfer_payment.details_submitted?, :class => 'required_field' %></td>
          </tr>
        </table>
        <br>
        <% unless bank_transfer_payment.details_submitted? %>
          <%= button Spree.t('actions.submit'), 'ok', 'submit', {class: 'btn-success'} %>
        <% end %>
      <% end %>
      <%= javascript_include_tag "jquery-ui/datepicker" %>
      <script>
      $(document).ready(function() {
        $('[name="payment[deposited_on]"]').datepicker({dateFormat: '<%= Spree.t(:js_format, :scope => "date_picker", :default => "yy/mm/dd") %>'});
      });
      </script>
      <style>
/*!
 * jQuery UI Datepicker 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/datepicker/#theming
 */
/*


 */

.ui-datepicker {
  background-color: white;
  border: solid 1px black;
  width: 17em;
  padding: .2em .2em 0;
  display: none;
}
.ui-datepicker .ui-datepicker-header {
  position: relative;
  padding: .2em 0;
}
.ui-datepicker .ui-datepicker-prev,
.ui-datepicker .ui-datepicker-next {
  position: absolute;
  top: 2px;
  width: 1.8em;
  height: 1.8em;
}
.ui-datepicker .ui-datepicker-prev-hover,
.ui-datepicker .ui-datepicker-next-hover {
  top: 1px;
}
.ui-datepicker .ui-datepicker-prev {
  left: 2px;
}
.ui-datepicker .ui-datepicker-next {
  right: 2px;
}
.ui-datepicker .ui-datepicker-prev-hover {
  left: 1px;
}
.ui-datepicker .ui-datepicker-next-hover {
  right: 1px;
}
.ui-datepicker .ui-datepicker-prev span,
.ui-datepicker .ui-datepicker-next span {
  display: block;
  position: absolute;
  left: 50%;
  margin-left: -8px;
  top: 50%;
  margin-top: -8px;
}
.ui-datepicker .ui-datepicker-title {
  margin: 0 2.3em;
  line-height: 1.8em;
  text-align: center;
}
.ui-datepicker .ui-datepicker-title select {
  font-size: 1em;
  margin: 1px 0;
}
.ui-datepicker select.ui-datepicker-month,
.ui-datepicker select.ui-datepicker-year {
  width: 45%;
}
.ui-datepicker table {
  width: 100%;
  font-size: .9em;
  border-collapse: collapse;
  margin: 0 0 .4em;
}
.ui-datepicker th {
  padding: .7em .3em;
  text-align: center;
  font-weight: bold;
  border: 0;
}
.ui-datepicker td {
  border: 0;
  padding: 1px;
}
.ui-datepicker td span,
.ui-datepicker td a {
  display: block;
  padding: .2em;
  text-align: right;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-buttonpane {
  background-image: none;
  margin: .7em 0 0 0;
  padding: 0 .2em;
  border-left: 0;
  border-right: 0;
  border-bottom: 0;
}
.ui-datepicker .ui-datepicker-buttonpane button {
  float: right;
  margin: .5em .2em .4em;
  cursor: pointer;
  padding: .2em .6em .3em .6em;
  width: auto;
  overflow: visible;
}
.ui-datepicker .ui-datepicker-buttonpane button.ui-datepicker-current {
  float: left;
}

/* with multiple calendars */
.ui-datepicker.ui-datepicker-multi {
  width: auto;
}
.ui-datepicker-multi .ui-datepicker-group {
  float: left;
}
.ui-datepicker-multi .ui-datepicker-group table {
  width: 95%;
  margin: 0 auto .4em;
}
.ui-datepicker-multi-2 .ui-datepicker-group {
  width: 50%;
}
.ui-datepicker-multi-3 .ui-datepicker-group {
  width: 33.3%;
}
.ui-datepicker-multi-4 .ui-datepicker-group {
  width: 25%;
}
.ui-datepicker-multi .ui-datepicker-group-last .ui-datepicker-header,
.ui-datepicker-multi .ui-datepicker-group-middle .ui-datepicker-header {
  border-left-width: 0;
}
.ui-datepicker-multi .ui-datepicker-buttonpane {
  clear: left;
}
.ui-datepicker-row-break {
  clear: both;
  width: 100%;
  font-size: 0;
}

/* RTL support */
.ui-datepicker-rtl {
  direction: rtl;
}
.ui-datepicker-rtl .ui-datepicker-prev {
  right: 2px;
  left: auto;
}
.ui-datepicker-rtl .ui-datepicker-next {
  left: 2px;
  right: auto;
}
.ui-datepicker-rtl .ui-datepicker-prev:hover {
  right: 1px;
  left: auto;
}
.ui-datepicker-rtl .ui-datepicker-next:hover {
  left: 1px;
  right: auto;
}
.ui-datepicker-rtl .ui-datepicker-buttonpane {
  clear: right;
}
.ui-datepicker-rtl .ui-datepicker-buttonpane button {
  float: left;
}
.ui-datepicker-rtl .ui-datepicker-buttonpane button.ui-datepicker-current,
.ui-datepicker-rtl .ui-datepicker-group {
  float: right;
}
.ui-datepicker-rtl .ui-datepicker-group-last .ui-datepicker-header,
.ui-datepicker-rtl .ui-datepicker-group-middle .ui-datepicker-header {
  border-right-width: 0;
  border-left-width: 1px;
}

      </style>
    <% end %>
  }
)
