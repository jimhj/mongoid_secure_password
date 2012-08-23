# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["jimhj"]
  gem.email         = ["jimmy.huangjin@gmail.com"]
  gem.summary       = %q{Mongoid Secure Password}  
  gem.description   = %q{Encrypt password like ActiveRecord has_secure_password method.}
  gem.homepage      = "https://github.com/jimhj/mongoid_secure_password"

  # gem.files         = `git ls-files`.split($\)
  gem.files         = ["lib/mongoid_secure_password.rb", "lib/mongoid/secure_password.rb"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongoid_secure_password"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'

  gem.add_dependency "mongoid", ["~> 3.0.0"]
  gem.add_dependency 'bcrypt-ruby', ['~> 3.0.0']
end
