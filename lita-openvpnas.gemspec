Gem::Specification.new do |spec|
  spec.name          = 'lita-openvpnas'
  spec.version       = '0.2.6'
  spec.authors       = ['Jonathan Gnagy', 'Daniel Schaaff'].sort
  spec.email         = ['jgnagy@knuedge.com']
  spec.description   = 'Some basic OpenVPN Access Server interactions for Lita'
  spec.summary       = 'Allow the Lita bot to handle requests for OpenVPN Access Server tasks'
  spec.homepage      = 'https://github.com/knuedge/lita-openvpnas'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '~> 4.7'
  spec.add_runtime_dependency 'rye'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'travis', '~> 1.8'
end
