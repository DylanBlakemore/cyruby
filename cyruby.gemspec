require_relative 'lib/cyruby/version'

Gem::Specification.new do |spec|
  spec.name          = "cyruby"
  spec.version       = Cyruby::VERSION
  spec.authors       = ["Dylan Blakemore"]
  spec.email         = ["dylan.blakemore@gmail.com"]

  spec.summary       = "Cypher query language in Ruby"
  spec.description   = "A Ruby DSL which makes it easy to generate Cypher queries for graph databases, while keeping the elegance of the queries"
  spec.homepage      = "https://github.com/DylanBlakemore/cyruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.1")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/DylanBlakemore/cyruby"
  spec.metadata["changelog_uri"] = "https://github.com/DylanBlakemore/cyruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
end
