# db/migrate/*_table_categories.rb
class TableCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories
    add_column :categories, :name, :string
  end
end