require "spree_gateway_china/version"

require 'spree_core'


module SpreeGatewayChina
  class Engine < Rails::Engine

      config.autoload_paths += %W(#{config.root}/lib)

      def self.activate
        Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
          Rails.env.production? ? require(c) : load(c)
        end



      end
      initializer "spree.gateway.payment_methods_china", :after => "spree.register.payment_methods" do |app|
        app.config.spree.payment_methods << Spree::Gateway::Alipay
      end
      config.to_prepare &method(:activate).to_proc
    end
end
