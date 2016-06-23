class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :year
      t.string :author
      t.string :publisher
      t.string :pages

      t.timestamps null: false
    end
  end
end
