class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :userid
      t.integer :itemid
      t.boolean :public
      t.integer :swaptype

      t.timestamps
    end
  end
end
