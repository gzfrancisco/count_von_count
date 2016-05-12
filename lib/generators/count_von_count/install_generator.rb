require 'rails/generators'
require 'rails/generators/active_record'

module CountVonCount
  module Generators
    ## Generator for the Count Von Count gem
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../../templates', __FILE__)

      def install
        
      end

      def copy_migration
        if self.class.migration_exists?("db/migrate", "count_migration")
          say_status("skipped", "Migration count_migration.rb already exists")
        else
          migration_template "count_migration.rb", "db/migrate/count_migration.rb"
        end
      end

      def self.next_migration_number dirname
        ActiveRecord::Generators::Base.next_migration_number dirname
      end

      def add_von_count_routes
        puts "Generating routes"
        count_von_count = "count_von_count_for :counts"
        route count_von_count
      end

    end
  end
end
