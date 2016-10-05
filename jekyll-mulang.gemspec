lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-mulang/version'

Gem::Specification.new do |s|
  s.name        = "jekyll-mulang"
  s.version     = Jekyll::MuLang::VERSION
  s.date        = Jekyll::MuLang::RELEASES
  s.summary     = "A plugin to create multiple language site with Jekyll 3"
  s.description = "A plugin to create multiple language site with Jekyll 3."
  s.authors     = ["Andy Su"]
  s.email       = "kilfu0701@gmail.com"
  s.files       = [
    "lib/jekyll-mulang.rb",
    "lib/jekyll-mulang/pager.rb",
    "lib/jekyll-mulang/pagination.rb",
    "lib/jekyll-mulang/version.rb"
  ]
  s.homepage    =
    'http://rubygems.org/gems/jekyll-mulang'
  s.license       = 'MIT'

  s.require_paths = ["lib"]

  s.add_dependency "jekyll-paginate", '~> 1.1', '>= 1.1.0'

  s.add_development_dependency "jekyll", "~> 2.0"
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake", "~> 0"
  s.add_development_dependency "rspec", "~> 3.0"
end
