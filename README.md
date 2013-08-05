SpreeSupplier
================

**This is very much work in progress. It may burn your house down or kick your dog if you aren't careful.**

A Spree extension to add the concept of product suppliers. Suppliers allows a Spree store to keep catalogs from many Suppliers. A Spree store owner can select from the StockOffers provided by the Suppliers to add product to the Spree store.

Installation
------------

Add spree_supplier to your Gemfile:

```ruby
gem 'spree_supplier'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_supplier:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_supplier/factories'
```

Copyright (c) 2013 Tribal Knowledge Group LLC, released under the New BSD License
