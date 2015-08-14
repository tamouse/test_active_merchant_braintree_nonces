require "spec_helper"
require "test_active_merchant/braintree_initialize"

describe TestActiveMerchant::BraintreeInitialize do
  it "initializes the braintree configuration" do
    config = TestActiveMerchant::BraintreeInitialize.new.configuration
    expect(config).to be_a(Hash), "config is #{config}"
    expect(config.keys).to eq([:environment, :merchant_id, :public_key, :private_key, :client_key]), "whoops, config.keys is #{config.keys}"
  end
end
