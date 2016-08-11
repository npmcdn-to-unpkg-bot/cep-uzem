class CreateHabers < ActiveRecord::Migration
  def change
    create_table :habers do |t|
      t.string :title
      t.text :content
      t.date :date

      t.timestamps null: false
    end
  end
end
