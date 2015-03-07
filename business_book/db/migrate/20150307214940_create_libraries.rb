class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :books
      t.string :magazines
      t.string :cd
      t.string :dvd

      t.timestamps null: false
    end
  end
end
