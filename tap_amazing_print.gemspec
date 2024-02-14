# frozen_string_literal: true

require_relative "lib/tap_amazing_print/version"

Gem::Specification.new do |spec|
  spec.name    = "tap_amazing_print"
  spec.version = TapAmazingPrint::VERSION
  spec.authors = ["shu0115"]
  spec.email   = ["s.matsumoto0115@gmail.com"]

  spec.summary     = "tap_amazing_print"
  spec.description = "Make amazing prints with tapp or tapap"
  spec.homepage    = "https://github.com/shu0115/tap_amazing_print"
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shu0115/tap_amazing_print"
  spec.metadata["changelog_uri"]   = "https://github.com/shu0115/tap_amazing_print/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "amazing_print"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
