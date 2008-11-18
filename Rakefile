require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc "Runs the spec suite"
task :spec do
  spec_path = "#{File.dirname(__FILE__)}/spec"
  sh "spec #{spec_path} -O #{spec_path}/spec.opts "
end

desc 'Generate documentation for the zodiac plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Zodiac'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
