Gem::Specification.new do |spec|
  spec.name          = 'lita-onewheel-cve'
  spec.version       = '0.1.1'
  spec.authors       = ['Andrew Kreps']
  spec.email         = ['andrew.kreps@gmail.com']
  spec.description   = 'CVE decoder to pull the root link from a CVE posted in chat.'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/onewheelskyward/lita-onewheel-cve'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '~> 4'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'coveralls', '~> 0.8'
  # spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rack-test', '~> 0.6'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov', '~> 0.11'
end
