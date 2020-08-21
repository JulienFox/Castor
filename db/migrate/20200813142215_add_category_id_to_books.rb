# db/migrate/*_add_category_id_to_books.rb
class AddCategoryIdToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :category_id, :integer
    add_index :books, :category_id
  end
end
