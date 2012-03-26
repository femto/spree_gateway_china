# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spree_gateway_china/version"

Gem::Specification.new do |s|
  s.name        = "spree_gateway_china"
  s.version     = SpreeGatewayChina::VERSION
  s.authors     = ["femto"]
  s.email       = ["femtowin@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "spree_gateway_china"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]


  s.add_dependency('activemerchant_patch_for_china')
  s.add_dependency('spree', '~> 1.0.3')
end
