class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :copyright_date
      t.text :story_contents
      t.string :user_reviews

      t.timestamps null: false
    end
  end
end
