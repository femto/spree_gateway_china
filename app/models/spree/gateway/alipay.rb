#
module Spree
  class Gateway::Alipay < Gateway
    def provider_class
      ActiveMerchant::Billing::Integrations::Alipay
    end
    def method_type
      "alipay"
    end
  end
end
