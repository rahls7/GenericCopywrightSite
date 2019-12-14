lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "generic_copywright_site/version"

Gem::Specification.new do |spec|
  spec.name          = "generic_copywright_site"
  spec.version       = GenericCopywrightSite::VERSION
  spec.authors       = ["rahls7"]
  spec.email         = ["sharma.rahul71993@gmail.com"]

  spec.summary       = %q{A generic copywright html tag that can be used on webapps.}
  spec.description   = %q{This generic copywright html tag adds your choice of with customized msg and name of the author of the website }
  spec.homepage      = "https://rahls7.github.io/"
  spec.license       = "MIT"



  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
