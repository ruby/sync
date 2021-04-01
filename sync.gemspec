begin
  require_relative "lib/sync"
rescue LoadError
  # for Ruby core repository
  require_relative "sync"
end

Gem::Specification.new do |spec|
  spec.name          = "sync"
  spec.version       = Sync::VERSION
  spec.authors       = ["Keiju ISHITSUKA"]
  spec.email         = ["keiju@ruby-lang.org"]

  spec.summary       = %q{A module that provides a two-phase lock with a counter.}
  spec.description   = %q{A module that provides a two-phase lock with a counter.}
  spec.homepage      = "https://github.com/ruby/sync"
  spec.license       = "BSD-2-Clause"

  spec.files         = ["LICENSE.txt", "README.md", "lib/sync.rb"]
  spec.bindir        = "exe"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"
end
