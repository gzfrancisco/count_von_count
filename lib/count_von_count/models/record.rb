module CountVonCount
  class Record < ActiveRecord::Base
    belongs_to :set, class_name: 'CountVonCount::Set'
  end
end
