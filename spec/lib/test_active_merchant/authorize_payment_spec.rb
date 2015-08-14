require "spec_helper"
require "test_active_merchant"

describe '.authorize_payment' do
  let(:pm) {Braintree::Test::Nonce::Transactable}
  let(:trans) {TestActiveMerchant.authorize_payment(10,pm)}
  it "should authorize some funds" do
    expect(trans).to be_success, trans.inspect
  end
end
