require 'rails/generators'

module CountVonCount
  module Generators
    ## Generator for the Count Von Count gem
    class InstallGenerator < Rails::Generators::Base
      def install
        create_file 'config/initializers/initializer.rb',
                    '# Add my file content here'
      end
    end
  end
end
