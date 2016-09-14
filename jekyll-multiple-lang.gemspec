lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-multiple-lang/version'

Gem::Specification.new do |s|
  s.name        = "jekyll-multiple-lang"
  s.version     = Jekyll::MultipleLang::VERSION
  s.date        = Jekyll::MultipleLang::RELEASES
  s.summary     = "A plugin to create multiple language site with Jekyll 3"
  s.description = "A plugin to create multiple language site with Jekyll 3."
  s.authors     = ["Andy Su"]
  s.email       = "kilfu0701@gmail.com"
  s.files       = [
    "lib/jekyll-multiple-lang.rb",
    "lib/jekyll-multiple-lang/pager.rb",
    "lib/jekyll-multiple-lang/pagination.rb",
    "lib/jekyll-multiple-lang/version.rb"
  ]
  s.homepage    =
    'http://rubygems.org/gems/jekyll-multiple-lang'
  s.license       = 'MIT'

  s.require_paths = ["lib"]

  s.add_dependency "jekyll-paginate", '~> 1.1', '>= 1.1.0'

  s.add_development_dependency "jekyll", "~> 2.0"
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake", "~> 0"
  s.add_development_dependency "rspec", "~> 3.0"
end
