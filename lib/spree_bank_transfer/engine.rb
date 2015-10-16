module SpreeBankTransfer
  class Engine < Rails::Engine
    isolate_namespace Spree
    engine_name 'spree_bank_transfer'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::PaymentMethod::BankTransfer
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../lib/decorators/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
