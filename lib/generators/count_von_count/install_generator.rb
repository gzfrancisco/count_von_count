require 'rails/generators'

module CountVonCount
  module Generators
    ## Generator for the Count Von Count gem
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      def install
        #create_file 'config/initializers/initializer.rb',
        #            '# Add my file content here'
        copy_migration "count_migration"
      end

      def copy_migration(filename)
        if self.class.migration_exists?("db/migrate", "#{filename}")
          say_status("skipped", "Migration #{filename}.rb already exists")
        else
          migration_template "migrations/#{filename}.rb", "db/migrate/#{filename}.rb"
        end
      end

    end
  end
end
