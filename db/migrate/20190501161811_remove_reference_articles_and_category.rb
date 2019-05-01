class RemoveReferenceArticlesAndCategory < ActiveRecord::Migration[5.2]
  def change
  	remove_column :articles, :category_id
  end
end
