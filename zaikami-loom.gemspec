lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "zaikami/loom/version"

Gem::Specification.new do |spec|
  spec.name     = "zaikami-loom"
  spec.version  = Zaikami::Loom::VERSION

  spec.authors  = ["crispymtn", "Martin Spickermann"]
  spec.email    = ["op@crispymtn.com", "spickermann@gmail.com"]
  spec.homepage = "https://github.com/crispymtn/zai-loom-ruby"
  spec.license  = "MIT"
  spec.summary  = "The Zaikami Loom Ruby Gem simplifies publishing events on the Zaikami Loom event system."

  spec.metadata["changelog_uri"] = "https://github.com/crispymtn/zai-loom-ruby/blob/master/CHANGELOG.md"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "oj"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "webmock"
end
