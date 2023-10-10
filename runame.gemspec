require_relative 'lib/runame/version'

Gem::Specification.new do |spec|
  spec.name          = "runame"
  spec.version       = Runame::VERSION
  spec.authors       = ["Cuterebro"]
  spec.email         = ["cuterebro@gmail.com"]

  spec.summary       = %q{Russian names matcher}
  spec.description   = %q{Allow you to detect a string is a real russian name or not}
  spec.homepage      = "https://github.com/cuterebro/runame"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cuterebro/runame"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
