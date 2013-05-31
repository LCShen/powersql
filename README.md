## powersql

A lightweight ActiveRecord DSL extension.

### usage

Copy lib/ and init.rb to you rails project.

```ruby
Product.where{(title =~ 'iphone%') & (price <= 400)}
```
