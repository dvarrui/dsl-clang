# frozen_string_literal: true

require_relative "lib/dsl/clang/version"

Gem::Specification.new do |spec|
  spec.name = "dsl-clang"
  spec.version = Dsl::Clang::VERSION
  spec.license = "MPL-2.0"
  spec.authors = ["David Vargas Ruiz"]
  spec.email = ["dvarrui@proton.me"]

  spec.summary = "DSL para escribir programas C unsado Ruby"
  spec.description = "DSL para escribir programas C unsado Ruby"
  spec.homepage = "https://github.com/dvarrui/dsl-clang"
  spec.required_ruby_version = ">= 3.2.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/dvarrui/dsl-clang/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # gemspec = File.basename(__FILE__)
  # spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
  #   ls.readlines("\x0", chomp: true).reject do |f|
  #     (f == gemspec) ||
  #       f.start_with?(*%w[bin/ Gemfile .gitignore test/ .standard.yml])
  #   end
  # end
  # spec.bindir = "exe"
  # spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  # spec.require_paths = ["lib"]

  spec.extra_rdoc_files = ["README.md", "LICENSE"] + Dir.glob(File.join("docs", "**", "*.md"))
  spec.executables << "ncc"
  spec.files = Dir.glob(File.join("lib", "**", "*.*"))

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
