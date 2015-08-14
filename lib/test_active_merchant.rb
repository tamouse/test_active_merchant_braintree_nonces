require "test_active_merchant/version"
require "test_active_merchant/braintree_initialize"
require "activemerchant"

module TestActiveMerchant
  def self.authorize_payment(amt, pm)
    btconfig = BraintreeInitialize.new.configuration
    gw = ActiveMerchant::Billing::BraintreeGateway.new(btconfig)
    gw.authorize(amt, pm)
  end
end
