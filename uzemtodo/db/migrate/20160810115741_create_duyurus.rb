class CreateDuyurus < ActiveRecord::Migration
  def change
    create_table :duyurus do |t|
      t.string :title
      t.text :content
      t.date :date

      t.timestamps null: false
    end
  end
end
