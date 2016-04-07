module CountVonCount
  class Set < ActiveRecord::Base
    has_many :records, class_name: 'CountVonCount::Record'

    def self.all_generate_records
      all.each { |set| set.generate_record }
    end

    def generate_record
      result = result_from_execute_query
      value = value_from result
      create_record_with value unless value.nil? || value.empty?
    end

    private

    def result_from_execute_query
      Stats::Set.connection.execute query unless query.nil? || query.empty?
    end

    def value_from result
      value = nil
      result.each { |tuple| value = tuple['count'] } unless result.nil?
      value
    end

    def create_record_with value
      Stats::Record.create(set: self, value: value)
    end

  end
end
