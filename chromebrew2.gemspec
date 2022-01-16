Gem::Specification.new do |s|
  s.name        = 'chromebrew2'.freeze
  s.version     = '0.0.0'
  s.authors     = ['Cassandra Watergate'.freeze]
  s.summary     = 'chromebrew2 is a next gen package manager for ChromeOS.'.freeze
  s.description = <<~EOF.freeze
    Do not use on production machines
  EOF
  s.homepage    = 'https://github.com/chromebrew/chromebrew2/'.freeze
  s.licenses    = ['GPL-3.0'.freeze]


  s.files       = [
    'bin/c2',
    'lib/c2.rb',
    'lib/c2/misc/about.rb'
  ]
  s.bindir = 'bin'
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib'.freeze]

  s.required_ruby_version = Gem::Requirement.new('>= 3.0.0'.freeze)
end
