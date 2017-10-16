# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tx/version"

Gem::Specification.new do |spec|
  spec.name          = "tx"
  spec.version       = Tx::VERSION
  spec.authors       = ["Hiroshi Ichikawa"]
  spec.email         = "gimite+txruby@gmail.com"

  spec.summary       = "Ruby 1.8/1.9 binding of Tx, a library for a compact trie data structure"
  spec.description   = "Ruby 1.8/1.9 binding of Tx, a library for a compact trie data structure"
  spec.homepage      = "http://gimite.net/en/index.php?tx-ruby"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/tx_core/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest", "~> 5.0"
end
