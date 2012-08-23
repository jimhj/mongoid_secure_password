# MongoidSecurePassword

    MongoidSecurePassword acts like ActiveRecord has_secure_password.
    It's used to encrypt password with bcrypt.

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid_secure_password'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_secure_password

## Usage
```ruby
  class User
    include Mongoid::Document
    include Mongoid::SecurePassword
  end

  user = User.new
  user.name = params[:name]
  user.password = params[:password]
  user.password_confirmation = params[:password_confirmation]
  user.save
```

OR

```ruby
  user = User.find_by(:login => params[:login])
  if user.password == params[:password]
    # do someting. 
  end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
