require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "sinatra-pygments"
    gem.summary = "Pygments for Sinatra"
    gem.description = "Sinatra extension for Pygments syntax highlighting"
    gem.email = "jonathan@failingservers.com"
    gem.homepage = "http://github.com/saysjonathan/sinatra-pygments"
    gem.authors = ["Jonathan Boyett"]
    gem.add_runtime_dependency  "sinatra", ">= 0.9.2"
    gem.add_development_dependency  "rack-test", ">= 0.5.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
