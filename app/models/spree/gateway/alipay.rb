#
module Spree
  class Gateway::Alipay < PaymentGateway
    def provider_class
      ActiveMerchant::Billing::Integrations::Alipay
    end
  end
end
