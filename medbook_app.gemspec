# frozen_string_literal: true

require_relative "lib/medbook_app/version"

Gem::Specification.new do |spec|
  spec.name = "medbook_app"
  spec.version = MedbookApp::VERSION
  spec.authors = ["evan"]
  spec.email = ["ejeffries14@gmail.com"]

  spec.summary = "MedBook is an app that allows a users to keep track of their medications and side effects."
  spec.description = "This app is meant to keep track of a users medications and the amount"
  spec.homepage = "https://github.com/ejeffries1/medbook_app"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["https://github.com/ejeffries1/medbook_app"] = spec.homepage
  spec.metadata["https://github.com/ejeffries1/medbook_app"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["https://github.com/ejeffries1/medbook_app"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
