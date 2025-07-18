# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onceover/octocatalog/diff/version'

Gem::Specification.new do |spec| # rubocop:disable Gemspec/RequireMFA
  spec.name          = 'onceover-octocatalog-diff'
  spec.version       = Onceover::Octocatalog::Diff::VERSION
  spec.authors       = ['Dylan Ratcliffe', 'Vox Pupuli']
  spec.email         = ['voxpupuli@groups.io']

  spec.summary       = 'Adds octocatalog-diff functionality to onceover'
  spec.description   = "Allows Onceover users to use their existing factsets to check what affect given changes will have on a role's compiled catalog"
  spec.homepage      = 'https://github.com/dylanratcliffe/onceover-octocatalog-diff'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new('>= 3.2')

  spec.add_development_dependency 'bundler', '~> 2.4'
  spec.add_development_dependency 'rake', '~> 13.3'

  spec.add_runtime_dependency 'octocatalog-diff', '~> 2.3'
  spec.add_runtime_dependency 'onceover', '~> 5.0'
end
