# Cryptojs::Aes::Decrypt

This Gem helps to decrypt crypto-js aes ciphers

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cryptojs-aes-decrypt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cryptojs-aes-decrypt

## Usage

```ruby
require 'cryptojs-aes-decrypt'
cipher = 'U2FsdGVkX1/cJw+ISoZKbICgFmoJ+Ehx/atOTgPlt4IOCpmgrHJBY9J2gvoupPbNQs3dHsshX2EljZPlnVLATRJRyF8rOMui+uFMl8DV9I0VVA+1IqecvcP+a2gswGSjYEOiEG9kKQQ8cNlZPtGZdD4ksxxKxm/DhDxquzYX9mWwtMLe0EVYqFd0gncHX2wYzOrvKbMLZlGn/rN70XC+kQgEd47syLFOBm/cjzmVFGvymJfvuRNDl66PRzMtoGqZkQ7uufZuFS3rRUpcsiVv+0XbkSTiaZeD2t7cs+pn4G4uAymMJathk2z2pmhhd184rnXpuooaz8pXPmfdL8CwbQ=='
passphrase = 'passcode'
expected = '{"id":"0a09a9e1-eee2-4a8e-bf77-901be943621c","key":"WHAT","value":"IS_THIS_NAH","comment":"","addedBy":{"name":"Aleem Isiaka","id":"a3748a40-3ab8-4dd1-bac6-e73c1047c95f"},"addedDate":"April 22, 2022 | 20:09 GMT","method":""}'
decrypted = CryptojsAesDecrypt.run(cipher, passphrase)
p decrypted == expected

```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/limistah/ruby-cryptojs-aes-decrypt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cryptojs::Aes::Decrypt project’s codebase, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/limistah/ruby-cryptojs-aes-decrypt/blob/master/CODE_OF_CONDUCT.md).
