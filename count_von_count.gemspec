Gem::Specification.new do |s|
  s.name = 'count_von_count'
  s.version = '0.0.6'
  s.date = '2016-04-07'
  s.summary = 'Simple gem'
  s.license = 'GNU GPL3'
  s.author = ['Francisco Granados', 'Bernardo Pineda']
  s.files = ['lib/count_von_count.rb', 'lib/generators/count_von_count/install_generator.rb']
  s.add_runtime_dependency 'rails', '> 3.2', '< 5.1'
end
