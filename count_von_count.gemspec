Gem::Specification.new do |s|
  s.name = 'count_von_count'
  s.version = '0.1.8'
  s.date = '2016-04-07'
  s.summary = 'Simple gem'
  s.license = 'GNU GPL3'
  s.author = ['Francisco Granados', 'Bernardo Pineda']
  s.files = [ 'lib/count_von_count.rb', 
              'lib/generators/count_von_count/install_generator.rb',
              'lib/generators/templates/count_migration.rb']
  s.add_runtime_dependency 'rails', '> 3.2', '< 5.1'
end
