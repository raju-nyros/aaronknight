class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :prefered, :default => 0
      t.string :phone
      t.text :message
      t.integer :cal_back, :default => 0
      t.integer :contacted, :default => 0
      t.integer :smoker, :default => 0
      t.string :preffered_dress 
      t.timestamps
    end
  end
end
