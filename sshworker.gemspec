# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sshworker/version'

Gem::Specification.new do |spec|
  spec.name          = "sshworker"
  spec.version       = Sshworker::VERSION
  spec.authors       = ["Jordi Garcia"]
  spec.email         = ["crawler8086@gmail.com"]
  spec.summary       = %q{Tool to facilitate running a command on a remote server over SSH}
  spec.description   = %q{Tool to facilitate running a command on a remote server over SSH}
  spec.homepage      = "https://github.com/m8051/sshworker"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["sshworker"]
  spec.require_paths = ["lib"]
  spec.rubygems_version = "1.8.23"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
