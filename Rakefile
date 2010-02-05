$: << 'lib'

require 'version'

require 'rubygems'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'spec/rake/spectask'

spec = Gem::Specification.new do |s|
  s.name    = 'version'
  s.author  = 'Stephen Touset'
  s.email   = 'stephen@touset.org'
  s.summary = 'simple version-number encapsulation'
  s.version = '0.5.0'
  s.files   = FileList['[A-Z]*', 'lib/**/*.rb', 'spec/**/*']
  
  s.add_development_dependency 'rspec'
end

Rake::GemPackageTask.new(spec) do |gem|
  gem.need_tar = true
end

Rake::RDocTask.new do |doc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  doc.title    = 'emcien-engine #{version}'
  doc.rdoc_dir = 'doc'
  doc.rdoc_files.include('README*')
  doc.rdoc_files.include('lib/**/*.rb')
end

Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

task :default => :spec
