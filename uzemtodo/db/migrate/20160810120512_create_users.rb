class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :tc
      t.string :password
      t.string :firstname
      t.string :lastname

      t.timestamps null: false
    end
  end
end
