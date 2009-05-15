NAME = 'sequel'
VERS = lambda do
  require "lib/sequel/version"
  Sequel.version
end
RDOC_DEFAULT_OPTS = ["--quiet", "--line-numbers", "--inline-source", '--title', 'Sequel: The Database Toolkit for Ruby']
RDOC_OPTS = RDOC_DEFAULT_OPTS + ['--main', 'README.rdoc']

GEM_SPEC = Gem::Specification.new do |s|
  s.name = NAME
  s.rubyforge_project = 'sequel'
  s.version = VERS.call
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG", "COPYING"] + Dir["doc/*.rdoc"] + Dir['doc/release_notes/*.txt']
  s.rdoc_options += RDOC_OPTS 
  s.summary = "The Database Toolkit for Ruby"
  s.description = s.summary
  s.author = "Jeremy Evans"
  s.email = "code@jeremyevans.net"
  s.homepage = "http://sequel.rubyforge.org"
  s.required_ruby_version = ">= 1.8.4"
  s.files = %w(COPYING CHANGELOG README.rdoc Rakefile) + Dir["{bin,doc,spec,lib}/**/*"]
  s.require_path = "lib"
  s.bindir = 'bin'
  s.executables << 'sequel'
end