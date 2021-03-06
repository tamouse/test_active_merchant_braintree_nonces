# Test ActiveMerchant Braintree Nonces

Testing ActiveMerchant's ability to work with Braintree's payment
method nonces instead of direct credit card information.

# AND IT CAN'T

AM's Braintree Gateway seems stuck in using the deprecated CreditCard interface.

## Development

After checking out the repo, run `bin/setup` to install
dependencies. Then, run `rake rspec` to run the tests. You can also
run `bin/console` for an interactive prompt that will allow you to
experiment. Run `bundle exec test_active_merchant` to use the gem in
this directory, ignoring other installed copies of this gem.

## Contributing

This is experimental code. It is not intended for any purpose except
my own education and testing.

Bug reports and pull requests are welcome on GitHub at
https://github.com/tamouse/test_active_merchant_braintree_nonces.

## [Code of Conduct](https://github.com/tamouse/test_active_merchant_braintree_nonces/blob/master/CODE_OF_CONDUCT.md)

This project is intended to be a safe, welcoming space for
collaboration, and contributors are expected to adhere to the
[Contributor Covenant](contributor-covenant.org) code of conduct.


## [License](https://github.com/tamouse/test_active_merchant_braintree_nonces/blob/master/LICENSE.txt)

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
