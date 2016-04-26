class CreateUsers < ActiveRecord::Migration
  create_table :users do |t|
    t.string :name
    t.integer :happiness
    t.integer :tickets
    t.integer :height
    t.integer :nausea
  end
end
