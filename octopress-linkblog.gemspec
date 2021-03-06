# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-linkblog/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-linkblog"
  spec.version       = Octopress::Linkblog::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.summary       = %q{Add linkblog features to your Jekyll site.}
  spec.homepage      = "https://github.com/octopress/linkblog"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n").grep(%r{^(bin\/|lib\/|assets\/|changelog|readme|license)}i)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", ">= 3.0.0.a", "< 4"
  spec.add_runtime_dependency "titlecase"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "clash"

  if RUBY_VERSION >= "2"
    spec.add_development_dependency "pry-byebug"
  end
  
end
