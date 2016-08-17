class AddIndexesIntoArticles < ActiveRecord::Migration
  def change
    add_index :articles, :updated_at
    add_index :articles, :name
    add_index :articles, [:name, :updated_at]
  end
end
