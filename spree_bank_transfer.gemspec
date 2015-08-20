# -*- encoding: utf-8 -*-
# stub: spree_bank_transfer 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_bank_transfer"
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mohit Bansal"]
  s.date = "2015-08-18"
  s.description = "This Spree extension allows admin to provide bank transfer payment method to its users."
  s.email = "info@vinsol.com"
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "LICENSE", "README.md", "Rakefile", "Versionfile", "app/assets/images/payment_details.png", "app/assets/javascripts/spree/backend/spree_bank_transfer.js", "app/assets/javascripts/spree/frontend/spree_bank_transfer.js.erb", "app/assets/stylesheets/spree/backend/spree_bank_transfer.css", "app/assets/stylesheets/spree/frontend/spree_bank_transfer.css", "app/controllers/spree/admin/banks_controller.rb", "app/controllers/spree/content_controller_decorator.rb", "app/controllers/spree/payments_controller.rb", "app/helpers/.DS_Store", "app/helpers/spree/.DS_Store", "app/helpers/spree/admin/banks_helper.rb", "app/helpers/spree/admin/navigation_helper_decorator.rb", "app/models/.DS_Store", "app/models/spree/.DS_Store", "app/models/spree/bank.rb", "app/models/spree/payment_decorator.rb", "app/models/spree/payment_method/bank_transfer.rb", "app/models/spree/user_decorator.rb", "app/overrides/add_bank_details_form_to_order_show.rb", "app/overrides/add_bank_transfer_instructions_link_to_payment.rb", "app/overrides/add_banks_to_admin_configuration_sidebar.rb", "app/overrides/add_payment_reference_details.rb", "app/overrides/filter_results_by_transaction_reference_no.rb", "app/views/.DS_Store", "app/views/spree/admin/banks/_form.html.erb", "app/views/spree/admin/banks/edit.html.erb", "app/views/spree/admin/banks/index.html.erb", "app/views/spree/admin/banks/new.html.erb", "app/views/spree/admin/banks/toggle_activation.js.erb", "app/views/spree/admin/payments/source_forms/_banktransfer.html.erb", "app/views/spree/admin/payments/source_views/_banktransfer.html.erb", "app/views/spree/checkout/.DS_Store", "app/views/spree/checkout/payment/_banktransfer.html.erb", "app/views/spree/content/bank_transfer.html.erb", "config/locales/en.yml", "config/locales/it.yml", "config/locales/pt.yml", "config/routes.rb", "db/migrate/20130717071443_create_table_bank.rb", "db/migrate/20130717125312_add_index_on_active_on_spree_bank.rb", "db/migrate/20140519125402_add_bank_name_account_number_and_transaction_reference_number_to_payments.rb", "db/migrate/20140530055151_add_column_deposited_on_to_spree_payments.rb", "db/migrate/20140612131656_add_col_additional_details_to_banks.rb", "lib/generators/spree_bank_transfer/.DS_Store", "lib/generators/spree_bank_transfer/install/install_generator.rb", "lib/payment_details.rb", "lib/spree_bank_transfer.rb", "lib/spree_bank_transfer/engine.rb", "lib/spree_bank_transfer/factories.rb", "script/rails", "spec/controllers/spree/admin/banks_controller_spec.rb", "spec/controllers/spree/content_controller_spec.rb", "spec/controllers/spree/payments_controller_spec.rb", "spec/lib/payment_details_spec.rb", "spec/models/spree/bank_spec.rb", "spec/models/spree/payment_method/bank_transfer_spec.rb", "spec/models/spree/payment_spec.rb", "spec/models/spree/user_spec.rb", "spec/spec_helper.rb", "spree_bank_transfer.gemspec"]
  s.homepage = "http://vinsol.com"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["none"]
  s.rubygems_version = "2.4.5"
  s.summary = "Spree extension to create bank transfer payment method."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, [">= 3.0.0"])
    else
      s.add_dependency(%q<spree_core>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<spree_core>, [">= 3.0.0"])
  end
end
