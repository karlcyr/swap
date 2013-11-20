class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :nickname
      t.string :street
      t.integer :apt
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
