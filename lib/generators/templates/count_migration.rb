# Test template
class CreateCount < ActiveRecord::Migration
  def change
    create_table :count_von_count do |t|
      t.string :name
      t.string :total
    end
  end
end