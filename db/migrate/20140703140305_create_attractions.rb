class CreateAttractions < ActiveRecord::Migration
  create_table :attractions do |t|
    t.string :name
    t.integer :happiness_rating
    t.integer :tickets
    t.integer :min_height
    t.integer :nausea_rating
  end
end
